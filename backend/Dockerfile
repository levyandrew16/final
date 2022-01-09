FROM python:latest
RUN apt-get update
RUN mkdir /backend
WORKDIR /backend
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=server.py
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]