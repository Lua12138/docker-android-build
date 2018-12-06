#!/usr/bin/env sh

baseSdkUrl="/opt/android-sdk-linux"

if [ ! -d "$baseSdkUrl" -o ! -d "$baseSdkUrl/tools" ]; then
  echo "Downloading AndroidSDK"
  # 如果文件不存在 则网络下载
  curl -s -o /opt/android-sdk-linux.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
  echo "Unip AndroidSDK"
  # 解压缩文件
  unzip -q /opt/android-sdk-linux.zip -d /opt/android-sdk-linux/
  echo "Clean up"
  # 删除临时文件
  rm /opt/android-sdk-linux.zip
fi

# 检查授权目录是否存在
if [ ! -d "$baseSdkUrl/licenses" ]; then
  echo "Create licenses for AndroidSDK"
  mkdir /opt/android-sdk-linux/licenses
fi

sdkLicenseUrl="$baseSdkUrl/licenses/android-sdk-license"
# 检查授权文件是否存在
if [ ! -f "$sdkLicenseUrl" ]; then
  # 创建授权文件
  echo > "$sdkLicenseUrl"
  echo "8933bad161af4178b1185d1a37fbf41ea5269c55" >> "$sdkLicenseUrl"
  echo "d56f5187479451eabf01fb78af6dfcb131a6481e" >> "$sdkLicenseUrl"
fi
