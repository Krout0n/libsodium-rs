FROM krout0n/ubuntu-rust

# Define Libsodium version
ENV LIBSODIUM_VERSION 1.0.18

RUN \
    mkdir -p /tmpbuild/libsodium && \
    cd /tmpbuild/libsodium && \
    curl -L -O https://download.libsodium.org/libsodium/releases/libsodium-1.0.18-stable.tar.gz && \
    tar xfvz libsodium-${LIBSODIUM_VERSION}-stable.tar.gz && \
    cd /tmpbuild/libsodium/libsodium-stable/ && \
    ./configure && \
    make && make check && \
    make install && \
    mv src/libsodium /usr/local/ && \
    rm -Rf /tmpbuild/

CMD [ "/usr/bin/zsh" ]
