FROM gitpod/workspace-full-vnc
RUN add-apt-repository ppa:maarten-fonville/android-studio && \
    apt-get update && \
    apt-get upgrade --yes && \
    apt-get install android-sdk \
        android-studio \
        android-sdk-platform-23 --no-install-recommends --yes \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
