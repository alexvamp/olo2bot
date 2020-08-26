FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY olo2Bot.py ./
COPY dialogues.txt.zip ./
RUN unzip dialogues.txt.zip
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./olo2Bot.py" ]
