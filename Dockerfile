FROM jimlei/alpine-phpcli
MAINTAINER Jim Leirvik <jim@jimleirvik.no>

RUN apk --update add \
	curl \
	php5-ctype \
	php5-json \
	php5-phar \
	php5-iconv \
	php5-zlib && \
	rm /var/cache/apk/*

RUN curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony && \
    chmod +x /usr/local/bin/symfony

RUN mkdir -p /data
VOLUME /data
WORKDIR /data

ENTRYPOINT ["symfony"]
