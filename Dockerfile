FROM rust:slim-bookworm

RUN apt-get update && apt-get install openssl libssl-dev pkg-config -y

COPY . .

RUN rm Cargo.lock

RUN cargo build --release
