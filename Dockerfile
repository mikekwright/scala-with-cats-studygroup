#FROM almondsh/almond:latest
FROM almondsh/almond:0.8.2

WORKDIR /notebooks
EXPOSE 8888

#RUN coursier fetch org.typelevel:cats-core_2.12:2.0.0
COPY notebooks/* /notebooks/

