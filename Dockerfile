FROM luodaoyi/docker-library-nginx-git

RUN mkdir html && cd html
RUN git clone https://github.com/odinliu/odinliu.github.io.git blog
RUN cp -rf blog/* /usr/share/nginx/html
RUN rm -rf blog
RUN sed -i "s|#gzip  on;|gzip  on; etag  off; server_tokens off; gzip_types *;|" /etc/nginx/nginx.conf
