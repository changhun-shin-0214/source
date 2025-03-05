# Prometheus 공식 이미지 사용
FROM prom/prometheus:v2.44.0

# Prometheus 설정 파일 복사
COPY prometheus.yml /etc/prometheus/prometheus.yml

# 포트 노출
EXPOSE 9090

# Prometheus 실행 (ENTRYPOINT는 이미 /bin/prometheus로 설정됨)
CMD ["--config.file=/etc/prometheus/prometheus.yml"]
