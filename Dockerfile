FROM postgres
MAINTAINER Mujtaba Al-Tameemi <mujtaba@changeheroes.com>

ENV POSTGRES_DB films
ENV POSTGRES_USER root
ENV POSTGRES_PASSWORD admin
ENV PORT 5432

COPY *.sh /docker-entrypoint-initdb.d/
COPY *.sql /docker-entrypoint-initdb.d/dump/

EXPOSE 5432
CMD ["postgres"]
