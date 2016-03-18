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
<div>
    <button class="btn" onclick="" yun="async_modal/async_modal.js::showModal@click" yun-template="{$_route}modal_inc" yun-target="showModal" >弹框</button>
</div>
<div class="none" id="showModal"></div>
{include "Master_Static::inc/script_footer.tpl"}
{static "core/yunspace.js"}
</body>
</html>