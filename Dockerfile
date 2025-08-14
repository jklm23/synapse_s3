FROM matrixdotorg/synapse:latest

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install g++ libffi-dev git python3-dev python3-pip \
    && pip install --upgrade pip \
    && git clone https://github.com/iokiwi/synapse-swift-storage-provider.git \
    && cd /synapse-swift-storage-provider \
    && pip install . \
    && pip3 install git+https://github.com/matrix-org/synapse-s3-storage-provider.git
