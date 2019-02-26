#!/bin/bash

curl https://eu.ftp.opendatasoft.com/bmoreau/data_dumps.zip -L -o data_dumps.zip
unzip -o data_dumps.zip
rm data_dumps.zip
rm -r __MACOSX/

if [ ! -f ontology-mapping-chatbot/chatbot_app/local_settings.py ]
then
    #touch ontology-mapping-chatbot/chatbot_app/local_settings.py
    cp ontology-mapping-chatbot/chatbot_app/settings.py ontology-mapping-chatbot/chatbot_app/local_settings.py
    echo "SECRET_KEY = '<SECRET_KEY>'" >> ontology-mapping-chatbot/chatbot_app/local_settings.py
    echo "ALLOWED_HOSTS = ['localhost', '127.0.0.1']" >> ontology-mapping-chatbot/chatbot_app/local_settings.py
fi
