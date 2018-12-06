FROM runmymind/docker-android-sdk:ubuntu-lazydl

LABEL Version="1.10"
LABEL Author="forDream"

ADD checkSdk.sh /bin/checkSdk.sh

WORKDIR /home

RUN chmod +x /bin/checkSdk.sh

VOLUME [ "/opt/android-sdk-linux" ]

CMD [ "sh", "-c", "checkSdk.sh" ]
