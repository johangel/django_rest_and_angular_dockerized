FROM nikolaik/python-nodejs:latest
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN npm install -g @angular/cli
COPY . /code/

