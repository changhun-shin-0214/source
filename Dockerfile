# source
# Prometheus의 공식 이미지를 기반으로 시작
FROM prom/prometheus:v2.44.0

# 필요한 경우 추가 패키지 설치
# RUN apt-get update && apt-get install -y <package_name>

# Prometheus 설정 파일을 복사
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Prometheus의 웹 UI와 API 포트를 노출
EXPOSE 9090

# Prometheus 실행 명령
CMD ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
