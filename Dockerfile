FROM python:3
WORKDIR /usr/src/app
RUN pip install 'wg-meshconf@git+https://github.com/k4yt3x/wg-meshconf.git'
VOLUME ["/usr/src/app"]
ENTRYPOINT [ "wg-meshconf", "--database", "/usr/src/app/db/database.csv" ]
