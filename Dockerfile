FROM ubuntu

RUN apt-get update -y
RUN apt-get install p7zip-full -y

COPY ./run.sh /root/run.sh

RUN chmod +x /root/run.sh

ENTRYPOINT ["/root/run.sh"]