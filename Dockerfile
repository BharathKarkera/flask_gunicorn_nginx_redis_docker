FROM python:latest
WORKDIR /my_code
COPY . /my_code
RUN pip install -r requirements.txt
CMD gunicorn --bind 0.0.0.0:5000 my_app:app

