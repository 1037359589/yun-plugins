<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    {include "Master_Static::inc/head_master.tpl"}
    <title>Title</title>
</head>
<style>
    .fix{
        width:400px;
        height:100px;
        background:#ddd;
        position: fixed;
        left:50%;
        margin-left:-200px;
        top:20px;
    }
    .none{
        display: none;
    }
</style>
<body id="ball">
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption">
            <i class="icon-share font-dark"></i>
            <span class="caption-subject font-dark bold uppercase">初始化数据</span>
        </div>
    </div>
    <div class="alert alert-danger">
        <strong>反馈信息:</strong>&nbsp; &nbsp;<span>{$result}</span>
    </div>
    <div class="portlet-body">
        <div class="alert alert-block alert-danger fade in">
            <h4 class="alert-heading">初始化团队</h4>
            <p> 会清空team相关的三张表。并创建初始化的六个团队 </p>
            <p>
                <a class="btn red" href="/test_initialize/">初始化</a>
            </p>
        </div>
        <div class="alert alert-block alert-success fade in">
            <h4 class="alert-heading">初始化场地</h4>
            <p> 初始化团队说明 </p>
            <p>
                <a class="btn red" href="/test_initialize/">初始化</a>
            </p>
        </div>
        <div class="alert alert-block alert-info fade in">
            <h4 class="alert-heading">初始化文章</h4>
            <p> 初始化文章 说明 </p>
            <p>
                <a class="btn red" href="/test_initialize/">初始化</a>
            </p>
        </div>
        <div class="alert alert-block alert-warning fade in">
            <button type="button" class="close" data-dismiss="alert"></button>
            <h4 class="alert-heading">初始化其他!</h4>
            <p>初始化其他说明 在类（Initial）里写好方法，然后在入口 test_initialize 写好入口。 可以参考初始化团队</p>
            <p>
                <a class="btn red" href="/test_initialize/">初始化</a>
            </p>
        </div>
    </div>
</div>
</body>
</html>