# syntax=docker/dockerfile:1
FROM openjdk:17-jdk-slim

WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y maven
RUN apt-get install sudo -y
RUN sudo adduser --disabled-password dev
RUN usermod -aG sudo dev
COPY pom.xml ./
COPY src ./src







