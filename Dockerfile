
FROM ubuntu
RUN apt-get update &&  apt-get install -y wget
RUN mkdir /app
ENV config_URL="https://github.com/dhruv-2015/anydl/raw/master/sample_config.py"
RUN wget -q -O /app/config.py ${config_URL}
RUN apt-get -y --install-recommends --install-suggests install python
copy . /app
ENV PORT=3535


CMD ["bash", \
    "/app/start.sh"]
