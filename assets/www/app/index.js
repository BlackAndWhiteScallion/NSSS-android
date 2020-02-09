'use strict';
(function(){
    if(localStorage.getItem('noname_inited')) return;
    var app = {
        initialize: function() {
            this.bindEvents();
        },
        bindEvents: function() {
            if(window.require&&window.__dirname){
                this.onDeviceReady();
            }
            else{
                var script=document.createElement('script');
                script.src='cordova.js';
                document.head.appendChild(script);
                document.addEventListener('deviceready', this.onDeviceReady, false);
            }
        },
        onDeviceReady: function() {
            var site_g='https://raw.githubusercontent.com/BlackAndWhiteScallion/Night-of-Shooting-Stars/';
            var site_c='https://bws.coding.net/p/Night-of-Shooting-Stars/d/Night-of-Shooting-Stars/git/raw/';
            var site_c2='https://gitee.com/b_2/noss/raw/';
            var site=site_c;
            var button,changesite,help,version,versionnode;
            var req=function(url,onload,onerror,target){
				var sScriptURL=url;
				var oReq=new XMLHttpRequest();
				if(onload) oReq.addEventListener("load",function(){
                    try{
                        eval(this.responseText);
                        if(target&&!window[target]){
                            throw('err');
                        }
                    }
                    catch(e){
                        onerror();
                        return;
                    }
                    onload();
                    if(target){
                        delete window[target];
                    }
                });
				if(onerror) oReq.addEventListener("error",onerror);
				oReq.open("GET", sScriptURL);
				oReq.send();
			}

            var checkConnection=function(){
                button.innerHTML='正在连接';
                button.classList.add('disabled');
                versionnode.innerHTML='';
                req(site+'master/game/update.js',function(){
                    button.classList.remove('disabled');
                    button.innerHTML='下载流星夜！';
                    version=window.noname_update.version;
                    versionnode.innerHTML='v'+version;
                },function(){
                    button.classList.add('disabled');
                    button.innerHTML='连接失败';
                },'noname_update');
            };

            var dir;
            var ua=navigator.userAgent.toLowerCase();
            if(ua.indexOf('android')!=-1){
                dir=cordova.file.externalApplicationStorageDirectory;
            }
            else if(ua.indexOf('iphone')!=-1||ua.indexOf('ipad')!=-1){
                dir=cordova.file.documentsDirectory;
            }

            var update=function(){
                button.innerHTML='正在连接';
                button.classList.add('disabled');
                req(site+'master/game/source.js',function(){
                //req(site+'v'+version+'/game/source.js',function(){
                    button.remove();
                    changesite.remove();
                    help.remove();
                    versionnode.remove();

                    var prompt=document.createElement('div');
                    prompt.style.height='40px';
                    prompt.style.top='calc(50% - 40px)';
                    prompt.style.lineHeight='40px';
                    prompt.innerHTML='正在下载游戏文件';
                    document.body.appendChild(prompt);

                    var progress=document.createElement('div');
                    progress.style.top='calc(50% + 20px)';
                    progress.style.fontSize='20px';
                    progress.innerHTML='0/0';
                    document.body.appendChild(progress);

                    var updates=window.noname_source_list;
                    delete window.noname_source_list;

    				var n1=0;
    				var n2=updates.length;
    				progress.innerHTML=n1+'/'+n2;
    				var finish=function(){
                        prompt.innerHTML='游戏文件下载完毕';
    					progress.innerHTML=n1+'/'+n2;
                        if(window.FileTransfer){
                            localStorage.setItem('noname_inited',dir);
                        }
                        else{
                            localStorage.setItem('noname_inited','nodejs');
                        }
    					setTimeout(function(){
                            window.location.reload();
                        },1000);
    				}
                    var downloadFile;
                    if(window.FileTransfer){
                        downloadFile=function(url,folder,onsuccess,onerror){
        					var fileTransfer = new FileTransfer();
        					//url=site+'v'+version+'/'+url;
        					url = site+'master/'+url;
                            folder=dir+folder;
                            console.log(url);
        					fileTransfer.download(encodeURI(url),folder,onsuccess,onerror);
        				};
                    }
                    else{
                        var fs=require('fs');
                        var http=require('https');
                        downloadFile=function(url,folder,onsuccess,onerror){
                            //url=site+'v'+version+'/'+url;
                            url = site+'master/'+url;
                            var dir=folder.split('/');
                            var str='';
                            var download=function(){
                                try{
                                    var file = fs.createWriteStream(__dirname+'/'+folder);
                                }
                                catch(e){
                                    onerror();
                                }
                                var request = http.get(url, function(response) {
                                    var stream=response.pipe(file);
                                    stream.on('finish',onsuccess);
                                    stream.on('error',onerror);
                                });
                            }
                            var access=function(){
                                if(dir.length<=1){
                                    download();
                                }
                                else{
                                    str+='/'+dir.shift();
                                    fs.access(__dirname+str,function(e){
                                        if(e){
                                            try{
                                                fs.mkdir(__dirname+str,access);
                                            }
                                            catch(e){
                                                onerror();
                                            }
                                        }
                                        else{
                                            access();
                                        }
                                    });
                                }
                            }
                            access();
                        };
                    }
                    var multiDownload=function(list,onsuccess,onerror,onfinish){
                        list=list.slice(0);
                        var download=function(){
                            if(list.length){
                                var current=list.shift();
                                downloadFile(current,current,function(){
                                    if(onsuccess) onsuccess();
                                    download();
                                },function(){
                                    if(onerror) onerror();
                                    download();
                                });
                            }
                            else{
                                if(onfinish) onfinish();
                            }
                        }
                        download();
                    };
                    multiDownload(updates,function(){
                        n1++;
                        progress.innerHTML=n1+'/'+n2;
                    },null,function(){
                        setTimeout(finish,500);
                    });
                },function(){
                    button.classList.add('disabled');
                    button.innerHTML='更新失败';
                },'noname_source_list');
            }

            var link=document.createElement('link');
            link.rel='stylesheet';
            link.href='app/index.css';
            document.head.appendChild(link);

            button=document.createElement('div');
            button.id='button';

            var touchstart=function(e){
                if(this.classList.contains('disabled')) return;
                this.style.transform='scale(0.98)';
            };
            var touchend=function(){
                this.style.transform='';
            };
            button.ontouchstart=touchstart;
            button.ontouchend=touchend;
            button.onmousedown=touchstart;
            button.onmouseup=touchend;
            button.onmouseleave=touchend;
            button.onclick=function(){
                if(button.classList.contains('disabled')) return;
                update();
            };
            document.body.appendChild(button);
            document.ontouchmove=function(e){
                e.preventDefault();
            };

            changesite=document.createElement('div');
            changesite.id='changesite';
            changesite.innerHTML='<u>切换下载源</u>  当前下载源为：(国内镜像1) 腾讯';
            document.body.appendChild(changesite);

            versionnode=document.createElement('div');
            versionnode.id='version';
            help=document.createElement('div');
            help.id='help';
            help.innerHTML='无法在线下载？';
            var helpnode=document.createElement('div');
            helpnode.id='noname_init_help';
            var helpnodetext=document.createElement('div');
            helpnodetext.innerHTML=
            '<div><ol><li>访问<a href=' + site.slice(-4, 0)=='raw/'?site.slice(0, -4):site +'</a>，下载zip文件'+
            '<li>解压后将所有文件放入对应文件夹：<br>windows/linux：resources/app<br>mac：（右键显示包内容）contents/resources/app<br>android：android/data/com.widget.noname<br>ios：documents（itunes—应用—文件共享）'+
            '<li>完成上述步骤后，<a href="javascript:localStorage.setItem(\'noname_inited\',window.tempSetNoname);window.location.reload()">点击此处</a></div>';
            helpnode.appendChild(helpnodetext);
            help.onclick=function(){
                document.body.appendChild(helpnode);
            }

            var back=document.createElement('div');
            back.id='back';
            back.innerHTML='返回';
            back.onclick=function(){
                helpnode.remove();
            };
            helpnode.appendChild(back);
            document.body.appendChild(help);
            document.body.appendChild(versionnode);
            checkConnection();

            if(window.FileTransfer){
                window.tempSetNoname=dir;
            }
            else{
                window.tempSetNoname='nodejs';
            }
            changesite.onclick=function(){
                var h = '(国内镜像1) 腾讯';
                if (site == site_c){
                    /*
                    site=site_c2;
                    h = '(国内镜像2) 码云';
                } else if (site == site_c2){
                    */
                    this.classList.toggle('bluetext');
                    site=site_g;
                    h = '(国外镜像) github';
                } else {
                    this.classList.toggle('bluetext');
                    site=site_c;
                }
                this.innerHTML='切换下载源 当前下载源：'+h;
                checkConnection();
            };
        }
    };

    app.initialize();
}())
