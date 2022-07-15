image-build:
    docker build . -t krout0n/docker-libsodium-rs:latest

login:
    docker run --rm -it -v `pwd`:/mnt/libsodium-rs -w /mnt/libsodium-rs krout0n/docker-libsodium-rs:latest zsh

clean:
    cargo clean
    @rm -rf a.out
    @rm -rf main.c
