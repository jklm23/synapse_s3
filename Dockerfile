FROM matrixdotorg/synapse:latest

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install g++ libffi-dev git python3-dev python3-pip
RUN pip install --upgrade pip
RUN git clone https://github.com/iokiwi/synapse-swift-storage-provider.git
RUN cd /synapse-swift-storage-provider
RUN pip install .
RUN pip3 install git+https://github.com/matrix-org/synapse-s3-storage-provider.git
