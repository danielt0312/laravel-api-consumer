FROM alpine

# Installing commonly dependencies
RUN apk upgrade \
 && apk add php composer nodejs npm


# Installing Laravel CLI
RUN composer global require laravel/installer
ENV PATH="/root/.composer/vendor/bin:${PATH}"

WORKDIR /app