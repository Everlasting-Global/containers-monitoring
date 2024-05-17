FROM prom/prometheus:v2.44.0

COPY ../prometheus/prometheus.yml /etc/prometheus/prometheus.yml
