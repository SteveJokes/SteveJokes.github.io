#########################################################################
# File Name: push.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2018年06月23日 星期六 22时39分07秒
#########################################################################
#!/bin/bash
git pull origin master
git add ./*
git commit -m "new post"
git push origin master
