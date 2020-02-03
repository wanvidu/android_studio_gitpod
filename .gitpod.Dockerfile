FROM gitpod/workspace-full-vnc

USER root

RUN apt-get update --yes && \
    apt-get install build-essential libz1 libncurses5 libbz2-1.0:i386 libstdc++6 libbz2-1.0 android-tools-adb --no-install-recommends --yes && \
    apt-get clean && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

USER gitpod

RUN cd /home/gitpod && \
    wget -qO android_studio.tar.gz https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz && \
    tar -xvf android_studio.tar.gz && rm -f android_studio.tar.gz
