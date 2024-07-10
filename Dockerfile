FROM ubuntu:22.04

RUN apt-get update && apt-get install -y --no-install-recommends openscad

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
