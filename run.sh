if ! pgrep -f 'osd'
then
    nohup osd --cli -i -a -l $LANG /media >> /tmp/log.txt 2>&1
else
    echo "running" >> ~/out_test.txt
fi
