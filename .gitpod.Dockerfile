FROM gitpod/workspace-full-vnc

ENV PATH=~/Android/Sdk/platform-tools/:$PATH

USER root

RUN apt-get update --yes && \
    apt-get install libc6 libncurses5 libstdc++6 lib32z1 libbz2-1.0 --no-install-recommends --yes && \
    apt-get clean && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

USER gitpod

RUN cd /home/gitpod && \
    wget -qO android_studio.tar.gz https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz && \
    tar -xvf android_studio.tar.gz && rm -f android_studio.tar.gz
