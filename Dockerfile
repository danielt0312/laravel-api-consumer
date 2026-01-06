FROM dant0312/laravel-builder
COPY . .
RUN composer install
ENTRYPOINT ["php", "artisan"]
CMD ["serve"]