FROM gitpod/workspace-full-vnc
RUN add-apt-repository ppa:maarten-fonville/android-studio && \
    apt update && \
    apt install android-sdk \
        libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 \
        lib32stdc++6 \
        android-studio \
        android-sdk-platform-23 --no-install-recommends --yes \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*
