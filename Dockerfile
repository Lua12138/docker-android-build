FROM runmymind/docker-android-sdk:runmymind/docker-android-sdk:alpine-lazydl

ENV GRADLE_HOME=/opt/gradle/gradle-4.9/bin
ENV PATH=$PATH:${GRADLE_HOME}

COPY android-sdk-license /opt/licenses/

RUN wget -O /opt/gradle.zip https://services.gradle.org/distributions/gradle-4.9-bin.zip && \
    unzip /opt/gradle.zip -d /opt/gradle && \
    rm /opt/gradle.zip

WORKDIR /home
