<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="0base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>阳夏文化图书管理系统</title>
</head>
<body >
<!-- start 内容主体区域 -->
<div class="center">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>图书详情</legend>
    </fieldset>
        <form class="layui-form layui-form-pane" action="">
            <input name="bookType" type="hidden" value="${bookType}">
            <div class="layui-form-item">
                <label class="layui-form-label">书名</label>
                <div class="layui-input-inline">
                    <input name="bookName" lay-verify="required" placeholder="请输入书名" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.bookName}" disabled="disabled">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">出版社</label>
                <div class="layui-input-inline">
                    <input name="publicer" lay-verify="required" placeholder="请输入出版社" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.publicer}" disabled="disabled">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">出版日期</label>
                <div class="layui-input-block">
                    <input name="public_time" lay-verify="required" placeholder="请选择出版日期" id="date1" autocomplete="off"
                           class="layui-input" type="text" value="${date}" disabled="disabled">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">编委会</label>
                <div class="layui-input-inline">
                    <input name="bwh" lay-verify="required" placeholder="请输入编委会" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.bwh}" disabled="disabled">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">装帧方式</label>
                <div class="layui-input-inline">
                    <input name="fixType" lay-verify="required" placeholder="请输入装帧方式" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.fixType}" disabled="disabled">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">字数</label>
                <div class="layui-input-inline">
                    <input name="words" lay-verify="required" placeholder="请输入字数" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.words}" disabled="disabled">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">开本</label>
                <div class="layui-input-inline">
                    <input name="size" lay-verify="required" placeholder="请输入开本" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.size}" disabled="disabled">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">成品尺寸</label>
                <div class="layui-input-inline">
                    <input name="productSize" lay-verify="required" placeholder="请输入成品尺寸" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.productSize}" disabled="disabled">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">印刷册数</label>
                <div class="layui-input-inline">
                    <input name="volumes" lay-verify="required" placeholder="请输入印刷册数" autocomplete="off"
                           class="layui-input" type="text" value="${bookInfo.volumes}" disabled="disabled">
                </div>
            </div>
        </form>
    </div>
<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;
        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [/(.+){6,12}$/, '密码必须6到12位']
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });
        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });
        //监听提交
        form.on('submit(demo1)', function (data) {
            var url = '/4/updateOrder'
            var json = JSON.stringify(data.field);
            $.ajax({
                type: 'POST',
                contentType: "application/json",
                url: url,
                data: json,
                success: callbackOpen,
                error: callbackError
            });
            return false;
        });
    });


</script>
<script>
    function panduan() {
        var mima1 = document.getElementById("password").value
        //取出第一个文本框里输如的值密码一
        var mima2 = document.getElementById("password1").value
        //取出第二个文本框里输如的值密码二
        var mima3 = document.getElementById("password2").value
        if (mima1 == mima2) {
            //2个值比较，做判断
            layer.msg("新旧密码一样拉")
            //输出对话框提示
            document.getElementById("password1").focus()
            //焦点定位
            return false
        }
        if (mima2 != mima3) {
            layer.msg("密码和确认密码不同，请重新输入")
            //输出对话框提示
            document.getElementById("password1").focus()
            //焦点定位
            return false
        }
        return true
    };
</script>
</div>
</body>
</html>