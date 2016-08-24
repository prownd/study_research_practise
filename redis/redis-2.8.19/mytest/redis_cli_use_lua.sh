#########################################################################
# File Name: redis_cli_use_lua.sh
# Author: hanjinpeng
# Mail:hanjinpeng127@163.com 
# Created Time: 2016年08月17日 星期三 17时32分36秒
#########################################################################
#!/bin/bash


./redis-cli   --eval  test.lua  127.0.0.1 , 10  3
