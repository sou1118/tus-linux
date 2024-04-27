FROM almalinux:8.9@sha256:a54c7f0491a4a81cee7380da537c36685efa66dc2d5de418bd3fbaa1e11c8d57

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

CMD ["/bin/bash"]
