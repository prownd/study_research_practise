#########################################################################
# File Name: cmd.sh
# Author: hanjinpeng
# Mail:hanjinpeng127@163.com 
# Created Time: 2016年08月24日 星期三 16时35分26秒
#########################################################################
#!/bin/bash


#./auto/configure
#make 


#rtmp

./configure  --add-module=../nginx-rtmp-module/
make



#5.将nginx-rtmp-module-master\test的nginx.conf拷贝到nginx的安装路径下的conf目录中，(把原来的ngix.conf备份一下)，我的是/usr/local/nginx/conf。
#6.将新的nginx.conf的下面一段代码改一下。

#location /rtmp-publisher {
#                            root /path/to/nginx-rtmp-module/test;
#}

#location / {
#                           root /path/to/nginx-rtmp-module/test/www;
#}


#启动上传avi视频
#./ffmpeg



#http://localhost:8080/                                                  这个链接访问的是/path/to/nginx-rtmp-module/test/www下的index.html   既有录又有播
#http://localhost:8080/record.html  

#refer
#http://blog.csdn.net/shaoyangdd/article/details/50959297
#http://blog.csdn.net/cjsafty/article/details/9108587
#
