FROM prom/prometheus:v2.44.0

COPY ../prometheus/prometheus.yml /etc/prometheus/prometheus.yml
COPY ../prometheus/prometheus-lido.yml /etc/prometheus/prometheus-lido.yml
COPY ../prometheus/env.sh /etc/prometheus/env.sh
USER root
RUN chmod +x /etc/prometheus/env.sh
