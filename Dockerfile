FROM openjdk:8

# Install maven
RUN apt-get update
RUN apt-get install -y netcat screen vim nodejs wget

# Downgrade node to the one that works with Bazaar
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm cache clean -f
RUN npm install -g n
RUN n 0.10.25

WORKDIR /usr/bazaar/

RUN groupadd -r bazaaruser
RUN useradd -g bazaaruser -ms /bin/bash bazaaruser
RUN chown -R bazaaruser:bazaaruser /usr/bazaar

COPY . ./

EXPOSE 8010

USER bazaaruser
CMD ["sh","-c","while ! nc -z nodechat 3306; do echo sleeping; sleep 1; done; bash ./runBazaar"]
