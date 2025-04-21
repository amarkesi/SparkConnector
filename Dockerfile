# Build a lean Spark + Python environment
FROM openjdk:17-jdk-slim

ARG PYSPARK_VERSION=3.5.1

RUN apt-get update && apt-get install -y python3 python3-pip &&         pip install pyspark==${PYSPARK_VERSION} pandas pytest &&         mkdir -p /opt/app

WORKDIR /opt/app
COPY . /opt/app
CMD ["bash"]
