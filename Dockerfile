

FROM i386/openjdk:latest

ENV HEADSHOTBOX_VERSION 0.17.3

RUN wget https://github.com/bugdone/headshotbox/releases/download/$HEADSHOTBOX_VERSION/headshotbox-$HEADSHOTBOX_VERSION-linux.zip \ 
&& unzip headshotbox-$HEADSHOTBOX_VERSION-linux.zip -d . \
&& mv headshotbox-$HEADSHOTBOX_VERSION-linux/ /root/headshotbox/ \
&& chmod +x /root/headshotbox/hsbox-$HEADSHOTBOX_VERSION-standalone.jar \
&& mkdir /root/.config/ \
&& ln -s /root/.config /config \
&& rm headshotbox-$HEADSHOTBOX_VERSION-linux.zip 
ADD run.sh /root/headshotbox/run.sh
EXPOSE 4000
WORKDIR /root/headshotbox

CMD ["sh", "run.sh"]