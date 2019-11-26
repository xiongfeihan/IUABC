package com.org.iuabc.aop;

import com.org.iuabc.entity.GuestLog;
import com.org.iuabc.entity.User;
import com.org.iuabc.service.GuestLogService;
import com.org.iuabc.utils.Md5Util;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Date;

/**
 * Author: Shengjie Si
 * Date: 2019/9/2 16:27
 * Version: 1.0
 */
@Aspect
@Component
public class WebLogAspect {
    //控制台输出日志查看
    //private Logger logger = LoggerFactory.getLogger(WebLogAspect.class);

    private GuestLogService guestLogService;

    @Autowired
    public void setGuestLogService(GuestLogService guestLogService) {
        this.guestLogService = guestLogService;
    }

    //当前日志记录标识
    private Long  LOG_ID;

    //初始URL：“localhost:8080/”不记录，不作为切面
    @Pointcut("execution(public * com.org.iuabc.controller.*.*(..))" +
            " && !execution(public * com.org.iuabc.controller.MainController.root(..))" +
            " && !execution(public * com.org.iuabc.controller.RealTimeMonitorController.getLatestData(..))")
    public void webLog() {
    }

    @Before("webLog()")
    public void doBefore(JoinPoint joinPoint) {
        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        assert attributes != null;
        HttpServletRequest request = attributes.getRequest();
        HttpSession session = request.getSession();
        User user = ((User) session.getAttribute("user"));

        // 未登录无权限者，不记录
        if(user == null)
            return;

        String guestName = user.getUserName();
        String IP = request.getRemoteAddr();
        String url = request.getRequestURL().toString();
        String method = request.getMethod();
        String args = Arrays.toString(joinPoint.getArgs());
        Date beginTime = new Date(System.currentTimeMillis());

        //避免登陆的密码被明文存储
        if(url.contains("/login")){
            String[] split = args.split(",");
            split[1] = Md5Util.StringInMd5(split[1]);//将密码Md5加密
            args = Arrays.toString(split);
            args = args.substring(1,args.length()-1);
        }

        //将0:0:0:0:0:0:0:1的IP地址转为127.0.0.1
        if("0:0:0:0:0:0:0:1".equals(IP)){
            IP = "127.0.0.1";
        }

        //存入数据库
        GuestLog guestLog = new GuestLog(guestName, IP, url, method, args, beginTime);
        guestLogService.saveGuestLog(guestLog);
        LOG_ID = guestLog.getLogId();
    }

    @AfterReturning("webLog()")
    public void doAfterReturning() {
        // 处理完请求
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        assert attributes != null;

        //更新登录前的人是谁(/login方法在登陆后才知晓who)
        User user = ((User) attributes.getRequest().getSession().getAttribute("user"));

        if (user == null)
            return;

        //更新方法返回时间--即结束时间
        Date endTime = new Date(System.currentTimeMillis());
        GuestLog byId = guestLogService.findById(LOG_ID);
        byId.setEndTime(endTime);
        if (user != null) {
            byId.setGuestName(user.getUserName());
        }
        guestLogService.saveGuestLog(byId);
    }
}
