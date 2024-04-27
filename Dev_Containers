FROM almalinux:8.9@sha256:a54c7f0491a4a81cee7380da537c36685efa66dc2d5de418bd3fbaa1e11c8d57

ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN dnf install -y sudo shadow-utils tar \
&& groupadd --gid $USER_GID $USERNAME \
&& useradd --uid $USER_UID --gid $USER_GID -m -s /bin/bash $USERNAME \
&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
&& chmod 0440 /etc/sudoers.d/$USERNAME

RUN dnf install -y dnf-plugins-core \
    && dnf config-manager --set-enabled powertools

RUN dnf install -y epel-release && \
    dnf install -y \
    gcc-c++ \
    gcc \
    gcc-gfortran \
    golang \
    java-11-openjdk \
    java-11-openjdk-devel \
    perl \
    python3 \
    ocaml && \
    dnf clean all && \
    rm -rf /var/cache/dnf/*

USER $USERNAME

CMD ["/bin/bash"]
