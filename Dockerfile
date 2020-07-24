FROM python:3-alpine
RUN mkdir /my_flask_app
WORKDIR /my_flask_app
COPY requirements.txt /my_flask_app
RUN pip install pip --upgrade
#RUN pip install - upgrade pip
RUN pip install -r requirements.txt --no-cache-dir
COPY . /my_flask_app
EXPOSE 5000
CMD [ "python", "app.py" ]