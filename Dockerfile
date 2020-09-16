FROM python:latest

WORKDIR /ARAI/src

RUN apt-get update && apt-get install -y python3-pip python3-dev

COPY requirements.txt /ARAI/src/requirements.txt

RUN pip3 install -r requirements.txt

COPY . /ARAI/src

CMD ["python3" , "UI.py"]
