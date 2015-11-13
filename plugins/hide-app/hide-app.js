/**
 * Created by pzl on 15/10/29.
 */
var plugin={
    //需要隐藏的dom
    needHideDom:[
        ".des",".banner-img-search",".provide-activity",".nav-fix",".find",".banner5",".provide-activity",
        ".nav-fix","meta[name='full-screen']","meta[name='x5-fullscreen']"
    ],
    //安卓上加上?app=true
    isApp:function(){
        var __self=this;
        if(localStorage.getItem("app")==undefined||localStorage.getItem("app")==""){
            var appi=window.location.search.indexOf("app=true");
            if(appi>=0){
                var u=window.location.search.substr(appi);
                localStorage.setItem("app",u);
            }else{return;}
            this.handleDocument();
        }else{
            this.handleDocument();
        }
    },
    hideDom:function(o){
        if($(o).length>0){
            $(o).remove();
        }
        return false;
    },
    handleDocument:function(){
        var __self=this;
        if(localStorage.getItem("app")=="app=true"){
            if(__self.needHideDom instanceof Array){
                for(var k in __self.needHideDom){
                    this.hideDom(__self.needHideDom[k]);
                }
            }else{return;}
        }else{
            return;
        }
    }
}
