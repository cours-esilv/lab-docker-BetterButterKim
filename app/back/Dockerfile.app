FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip3 install -r back/requirements.txt

ENV FLASK_APP="back/app.py"
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

####### Practice #######

# FROM python:3.9

# WORKDIR /app

# # 현재 디렉토리의 내용을 컨테이너의 /app 디렉토리로 복사합니다.
# # 이 경우 Dockerfile이 app/back 디렉토리 안에 있다고 가정합니다.
# COPY . /app
# # COPY back/app.py back/
# # COPY back/requirements.txt back/
# # COPY front/index.html front/

# # requirements.txt에 명시된 Python 라이브러리를 설치합니다.
# RUN pip3 install -r back/requirements.txt

# # 쌩쑈를 다했네..
# ENV FLASK_APP="app.py"
# # RUN python3 -m flask run --host=0.0.0.0

# # Flask 애플리케이션을 실행하는 명령을 정의합니다.
# CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
# # CMD ["python", "back/app.py"]