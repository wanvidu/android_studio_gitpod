FROM gitpod/workspace-full-vnc
RUN add-apt-repository ppa:maarten-fonville/android-studio && \
    apt-get update && \
    apt-get upgrade && \
    apt-get install android-sdk \
        libc6:i386 --yes \
        libncurses5:i386 --yes \
        libstdc++6:i386 --yes \ 
        lib32z1 --yes \ 
        libbz2-1.0:i386 --yes \
        lib32stdc++6 --yes \
        android-studio \
        android-sdk-platform-23 --no-install-recommends --yes \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
