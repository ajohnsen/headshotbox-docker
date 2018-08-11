FROM i386/openjdk:latest
RUN wget https://github.com/bugdone/headshotbox/releases/download/0.17.1/headshotbox-0.17.1-linux.zip \ 
&& unzip headshotbox-0.17.1-linux.zip -d . \
&& mv headshotbox-0.17.1-linux/ /root/headshotbox/ \
&& chmod +x /root/headshotbox/hsbox-0.17.1-standalone.jar \
&& mkdir /root/.config/ \
&& ln -s /root/.config /config \
&& rm headshotbox-0.17.1-linux.zip 
ADD run.sh /root/headshotbox/run.sh
EXPOSE 4000
WORKDIR /root/headshotbox

CMD ["sh", "run.sh"]