/**
 * Created by pzl on 16/3/17.
 */
/*
* modal使用的是ajax异步加载,请求ajax的文件,然后提取出来,插入到当前页面,实现动态加载.
* 需要的参数:
* @ template 模板路径(必选)
* @ target 需要插入到的dom元素(必选)
* 注:回调函数的字符串必须与回调函数名称一致否则报错无法调用
* */
var plugin={
    loaded:false,
    htm:"",
    showModal:function(ele,args,fn){
        var _self=this;
        if(_self.loaded){
            _self.doBack(fn);
            return false;
        }
        try{
            $.ajax({
                type:"post",
                url:args.route,
                dataType:"html",
                success:function(htm){
                    _self.htm=htm;
                    var $modal=$("#"+args.target);
                    $modal.append(_self.template);
                    if($modal.find("hr").length>0||$modal.find("center").length>0){
                        $modal.find("hr").remove();
                        $modal.find("center").remove();
                    }
                    _self.doBack(fn);
                    $modal.removeClass('none');
                    _self.loaded=true;
                    //_self.doBack( _self[args.afterback]);
                }
            });
        }catch(error){
            console.error(error);
        }

    },
    doBack:function(fn){
        var _self=this;
        try{
            fn();
        }catch(error){
            console.error(error);
        }
    },
    //以下回调函数自定义(可选)
    test1:function(){
        alert(1);
    },
    test2:function(){
        alert(2);
    },
    test3:function(){
        alert(3);
    }
}