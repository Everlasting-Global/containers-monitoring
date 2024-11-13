FROM grafana/grafana:latest

COPY ../grafana/datasource.yml /etc/grafana/provisioning/datasources/datasource.yml
COPY ../grafana/dashboards.yml /etc/grafana/provisioning/dashboards/dashboards.yml
COPY ../grafana/grafana.ini /etc/grafana/grafana.ini
ADD ../grafana/dashboards/ /etc/dashboards/
