#!/bin/sh
# Prometheus refuses to use environment vars.
# You do what we tell you to do prometheus.
for i in $(env); do
    if [ $(echo $i | egrep "^PROMETHEUS_") ]; then
        KEY=$(echo "$i" | cut -d "=" -f 1)
        VALUE=$(echo "$i" | cut -d "=" -f 2)
        sed -i "s@$KEY@$VALUE@g" /etc/prometheus/prometheus-lido.yml
        sed -i "s@$KEY@$VALUE@g" /etc/prometheus/prometheus.yml
    fi
done
exec /bin/prometheus "$@"