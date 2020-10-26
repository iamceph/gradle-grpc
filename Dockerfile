FROM gradle:jdk11

ENV LANG=C.UTF-8

# Let's test Gradle
RUN echo "Testing Gradle installation" \
        && gradle --version

# Now just install Protoc compiler
RUN apt-get update \
        && apt-get install -y --no-install-recommends protobuf-compiler \
        && echo "Protoc:" \
        && protoc --version