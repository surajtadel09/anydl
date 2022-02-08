
FROM python:3.9.1-buster
ENV config_URL="https://github.com/dhruv-2015/anydl/raw/master/sample_config.py"
WORKDIR /root/bot
ENV PORT=3535
COPY ..
RUN apt-get update &&  apt-get install -y wget

RUN pip3 install --upgrade pip setuptools
RUN pip install -U -r requirements.txt
# Starting Worker
CMD ["python3","/root/bot/start.sh"]

