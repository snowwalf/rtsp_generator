FROM vimagick/ffserver
ADD conf/ffserver.conf /etc
ADD scripts/run.sh /

ENTRYPOINT ["sh", "/run.sh"]
