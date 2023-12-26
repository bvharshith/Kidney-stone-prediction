FROM python:3.8-slim


WORKDIR /app

COPY app.py .
COPY model.pkl ./model.pkl
COPY static ./static
COPY templets ./templets
COPY requirements.txt .


RUN pip install -r requirements.txt


EXPOSE 5000


ENV FLASK_APP=app.py


CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]