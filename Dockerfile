FROM togamasaya/laravel:5.8.19

COPY nginx/config/laravel /etc/nginx/sites-available/laravel
COPY apps /home/laravel/www

# 80ポート公開
EXPOSE 80

CMD ["/usr/local/bin/supervisord", "-c", "/etc/supervisord.conf"]
