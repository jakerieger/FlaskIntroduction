FROM python:3.10.2-slim-bullseye
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]