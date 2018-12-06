# What's this

A basic image used to automatically build Android projects。

Android SDK will download it automatically

# How to

Create & Run the container `docker run gam2046/docker-android-build`

Import your Android project into the container by yourself ( for example, through Git )

Before compiling your Android project in the container, please take the lead in executing `checkSdk.sh`.

such as

```bash
$ checkSdk.sh
$ ./gradlew build
```

`checkSdk.sh` will check whether Android SDK exists or not and will be downloaded automatically if it does not exist.

In order not to download Android SDK repeatedly every time, you can mount the directory where Android SDK is located on a volume, like this:

```bash
$ docker run -v android-sdk-volume:/opt/android-sdk-linux gam2046/docker-android-build
```
