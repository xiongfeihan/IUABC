$("#send_coordinate").on("click", function () {
    if ($("#start_X").val().length === 0
        || $("#start_Y").val().length === 0
        || $("#start_Z").val().length === 0
        || $("#end_X").val().length === 0
        || $("#end_Z").val().length === 0
        || $("#end_Y").val().length === 0) {
        alert("输入坐标不完整！");
    } else {
        var x1 = parseFloat($("#start_X").val());
        var y1 = parseFloat($("#start_Y").val());
        var z1 = parseFloat($("#start_Z").val());
        var x2 = parseFloat($("#end_X").val());
        var y2 = parseFloat($("#end_Y").val());
        var z2 = parseFloat($("#end_Z").val());
        var positionStr = {
            "start":{
                "x":x1,
                "y":y1,
                "z":z1
            },
            "end":{
                "x":x2,
                "y":y2,
                "z":z2
            }
        };
        var positionJson = JSON.stringify(positionStr);
        $.ajax({
            type : "post",
            url : "/path/planning/send",
            dataType : "json",
            data : {
                "positionJson" : positionJson
            },
            success : function (data) {
                if (data === 1) {
                    alert("发送成功！");
                    $("#send_coordinate").attr("disabled", true);
                    $("#generate_path").attr("disabled", false);
                } else if (data === 2) {
                    alert("无工控机在线！");
                } else {
                    alert("发送出现异常！");
                }
            },
            error : function () {
                alert("发送坐标失败！");
            }
        })
    }
});