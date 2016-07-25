FROM jimlei/alpine-phpcli
MAINTAINER Jim Leirvik <jim@jimleirvik.no>

RUN apk --update add \
	curl \
	php-ctype \
	php-json \
	php-phar \
	php5-iconv \
	php-zlib && \
	rm /var/cache/apk/*

RUN curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony && \
    chmod +x /usr/local/bin/symfony

RUN mkdir -p /data
VOLUME /data
WORKDIR /data

ENTRYPOINT ["symfony"]
