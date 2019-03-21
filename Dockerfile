FROM gcc:8.3

RUN apt-get update
RUN apt-get install -y cmake

RUN git clone https://github.com/arcosuc3m/grppi.git
RUN cd grppi && mkdir build && cd build && cmake .. && make -j && make install
RUN rm -r grppi

RUN git clone https://github.com/Murray1991/rplsh.git
RUN cd rplsh && mkdir build && cd build && cmake ../rpl-shell -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release && make -j
RUN mv rplsh/build/rplsh /usr/bin/rplsh
RUN rm -r rplsh

WORKDIR /mnt/src
CMD make