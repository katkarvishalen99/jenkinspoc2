FROM ubuntu:latest
RUN apt install curl -y
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null
RUN apt install jenkins -y
RUN apt install openjdk-8-jdk -y
RUN apt install git -y
FROM nginx:alpine
COPY . /usr/share/nginx/html
