/*用户注册触发事件*/
$("#insertUserBtn", this).on("click", function () {
    var userStr = {
        "userName": $('#userName').val(),
        "gender": $('#gender input[name="gender"]:checked ').val(),
        "telephone": $('#telephone').val(),
        "email": $('#email').val(),
        "password": $('#password').val(),
        "privilege": $('#privilege').find("option:selected").val()
    };
    var userJson = JSON.stringify(userStr);
    $.ajax({
        type: "post",
        url: "/register",
        dataType: "json",
        data: {
            "userJson": userJson
        },
        success: function (result) {
            if (result === 1) {
                if(confirm("注册成功!点击'确定'进入登录页面")){
                    window.location.href = "/";
                }else{
                    window.location.reload();
                }
            } else {
                alert("注册失败！");
            }
        },
        error: function () {
            alert("出现未知错误！");
        }
    })
});