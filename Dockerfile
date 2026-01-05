FROM dant0312/laravel-builder
COPY . .
ENTRYPOINT ["php", "artisan"]
CMD ["serve"]