if ! pgrep -f 'osd'
then
    #nohup osd --cli -u $OSD_USERNAME -p $OSD_PASSWORD -i -a -l $LANG /media >> /tmp/log.txt 2>&1
    nohup osd --cli -u $OSD_USERNAME -p $OSD_PASSWORD -i -a -l $LANG /media
else
    #echo "running" >> ~/out_test.txt
    echo "running"
fi
