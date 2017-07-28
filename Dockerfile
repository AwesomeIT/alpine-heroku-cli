# See L7
FROM frolvlad/alpine-glibc

RUN apk update
RUN apk add ffmpeg alpine-sdk linux-headers openssh automake libtool autoconf bison python python-dev swig libxml2-dev libxslt-dev libressl-dev libpq postgresql-dev

# ACTUALLY NODE WITH 800KB OF JS LOL
RUN mkdir heroku
RUN mkdir -p /usr/local/lib /usr/local/bin
RUN wget https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x64.tar.gz -O heroku.tar.gz
RUN tar -xvzf heroku.tar.gz
RUN mkdir -p /usr/local/lib /usr/local/bin
RUN mv heroku-cli-* /usr/local/lib/heroku
RUN ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
