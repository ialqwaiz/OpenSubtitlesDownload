FROM arm32v7/python

RUN apt-get update
RUN apt-get install -y --no-install-recommends cron

RUN wget https://raw.githubusercontent.com/emericg/OpenSubtitlesDownload/master/OpenSubtitlesDownload.py
RUN mv OpenSubtitlesDownload.py /usr/local/bin/osd
RUN chmod +x /usr/local/bin/osd

ADD entrypoint.sh run.sh /
RUN chmod +x /entrypoint.sh /run.sh

ENV LANG=ar

VOLUME /media
VOLUME /tmp

ENTRYPOINT ["/entrypoint.sh"]
