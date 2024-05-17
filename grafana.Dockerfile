FROM grafana/grafana:10.3.3

COPY ../grafana/datasource.yml /etc/grafana/provisioning/datasources/datasource.yml
COPY ../grafana/dashboards.yml /etc/grafana/provisioning/dashboards/dashboards.yml
COPY ../grafana/dashboards/dash_charon_overview.json /etc/dashboards/dash_charon_overview.json
COPY ../grafana/grafana.ini /etc/grafana/grafana.ini
