FROM alpine

# Installing commonly dependencies
RUN apk upgrade \
 && apk add php php-ctype php-session php-tokenizer php-dom php-xml php-xmlwriter php-simplexml php-fileinfo php-pdo_sqlite \
 && apk add composer nodejs npm


# Installing Laravel CLI
RUN composer global require laravel/installer
ENV PATH="/root/.composer/vendor/bin:${PATH}"

WORKDIR /app

ENTRYPOINT ["laravel"]