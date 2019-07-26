FROM gcc:latest

WORKDIR /cmake
RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.1/cmake-3.15.1-Linux-x86_64.tar.gz \
    && tar xvf cmake-3.15.1-Linux-x86_64.tar.gz

ENV PATH=/cmake/cmake-3.15.1-Linux-x86_64/bin:$PATH

RUN cmake --version

