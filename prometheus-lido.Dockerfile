FROM prom/prometheus:v2.44.0

COPY ../prometheus-lido/prometheus.yml /etc/prometheus/prometheus.yml
