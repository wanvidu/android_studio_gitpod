FROM gitpod/workspace-full-vnc
RUN add-apt-repository ppa:maarten-fonville/android-studio && \
    apt-get update && \
    apt-get upgrade --yes && \
    apt-get install android-sdk \
        android-studio \
        android-sdk-platform-29.5 --no-install-recommends --yes \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
