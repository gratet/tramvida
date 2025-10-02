# Dockerfile per servir un lloc Jekyll amb mode "watch"
FROM jekyll/jekyll:4

WORKDIR /srv/jekyll

# Instal·lem webrick (no inclòs a Ruby 3+)
RUN gem install webrick

# Exposem el port del servidor
EXPOSE 4000

# Comanda per defecte (serve amb watch actiu)
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]
