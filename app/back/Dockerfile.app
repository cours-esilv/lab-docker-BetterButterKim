FROM python:3.9

WORKDIR /app

COPY back/app.py back/
COPY back/requirements.txt back/

COPY front/index.html front/

RUN pip install -r requirements.txt
CMD ["python", "/app/back/app.py"]