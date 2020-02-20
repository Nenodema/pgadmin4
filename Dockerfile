# start from an official image FROM python:3.6
FROM python:3.6-slim

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# apt-get installs
RUN apt-get update
RUN apt-get install -y gcc libpq-dev build-essential libffi-dev libssl-dev

# pip
RUN pip install --upgrade pip \
 && pip install urllib3 \
 && echo "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v4.17/pip/pgadmin4-4.17-py2.py3-none-any.whl" | pip install --no-cache-dir -r /dev/stdin \
 && pip uninstall werkzeug --yes \
 && pip install werkzeug==0.16.1

# copy custom config
COPY config_local.py /usr/local/lib/python3.6/site-packages/pgadmin4/
 
CMD [ "python", "/usr/local/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py" ]

# expose the port 5050
EXPOSE 5050
