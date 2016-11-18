FROM python:2.7-slim

RUN pip install jinja2-cli
RUN pip install mdv
RUN apt-get update
RUN apt-get install patch
ADD jinja_cli.patch /

RUN patch -i jinja_cli.patch /usr/local/lib/python2.7/site-packages/jinja2cli/cli.py

ADD process-schema.sh /bin/
ADD build-readme.sh /bin/
ADD convert-schema.j2 /
ENTRYPOINT ["/bin/build-readme.sh"]
