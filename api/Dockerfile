FROM hhvm/hhvm-proxygen:3.12-lts-latest

ADD ./deploy /var/www/deploy

RUN touch /from-dockerfile \
  && cd /var/www \
  && deploy/build-in-docker.sh

EXPOSE 80