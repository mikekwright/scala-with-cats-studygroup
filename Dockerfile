FROM almondsh/almond:latest

EXPOSE 8888

RUN coursier fetch org.typelevel:cats-core_2.12:2.0.0
