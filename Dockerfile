FROM nginx:1.15

WORKDIR /app

COPY nginx.tmpl nginx.tmpl
COPY start.sh start.sh
RUN chmod +x start.sh

CMD ["/app/start.sh"]