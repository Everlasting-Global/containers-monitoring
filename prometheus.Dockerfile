FROM prom/prometheus:v2.54.1

COPY ../prometheus/prometheus.yml /etc/prometheus/prometheus.yml
