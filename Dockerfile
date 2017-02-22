FROM iwanbk/box-dev-ubuntu1604
MAINTAINER Iwan Budi Kusnanto <iwanbk@gmail.com>
RUN	cd && \
    git clone https://github.com/scylladb/seastar.git && \
    cd seastar && \
    ./install-dependencies.sh && \
    ./configure.py --compiler=g++-5 && \
    ninja
