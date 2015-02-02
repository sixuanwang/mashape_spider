
#!/bin/bash
# urls.sh will run "scrapy crawl mashape -a readurl="".
# and it output the API input/output to file "api.json"

# Usage: sh urls.sh
# Author: Sixuan Wang, Peiwen Chen
# Date: Jan 21. 2015

CNT=0
while read -r line;do
	echo "$line"
	CNT=$(( $CNT + 1 ))
	scrapy crawl mashape -a readurl=$line
	if [ $CNT -gt 5 ];then
		CNT=0
		sleep 5		
	fi
done <"urls.txt"
