FROM grafana/loki:latest

COPY ../loki/loki.yml /etc/loki/loki.yml
