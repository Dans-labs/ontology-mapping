FROM python:2.7
MAINTAINER Vyacheslav Tykhonov
COPY . /ontology-mapping-chatbot
RUN pip install pybind11==2.2.2
WORKDIR /ontology-mapping-chatbot
RUN pip install -r requirements.txt
ENV DJANGO_SETTINGS_MODULE=chatbot_app.local_settings
ENTRYPOINT ["python"]
CMD ["manage.py", "migrate"]
CMD ["manage.py", "collectstatic"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000
EXPOSE 8001
