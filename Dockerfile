FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install "Flask==2.2.5" "Werkzeug==2.2.3"
COPY app.py /
ENV FLASK_APP=app
EXPOSE 8000
CMD flask run --host 0.0.0.0 --port 8000
