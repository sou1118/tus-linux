FROM almalinux:8.9-minimal@sha256:2b8a54bce3e70aee85cc974313804d7609d9aa74aba48e78774b3f09cbdda61e

RUN microdnf install -y epel-release && \
    microdnf install -y \
    gcc-c++ \
    gcc \
    gcc-gfortran \
    golang \
    java-11-openjdk \
    java-11-openjdk-devel \
    perl \
    python3 

CMD ["/bin/bash"]
