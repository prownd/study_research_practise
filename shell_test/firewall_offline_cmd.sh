#########################################################################
# File Name: firewall_offline_cmd.sh
# Author: hanjinpeng
# mail: hanjinpeng127@163.com
# Created Time: 2017年02月16日 星期四 17时44分24秒
#########################################################################
#!/bin/bash

firewall-offline-cmd  --enable --port=3200:tcp --port=5761-5770:tcp

