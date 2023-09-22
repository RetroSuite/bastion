FROM --platform=linux/x86_64 redhat/ubi8-minimal

RUN microdnf install -y wget

RUN wget https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm -O /tmp/pg_repo.rpm
RUN rpm -i /tmp/pg_repo.rpm

RUN microdnf install -y systemd postgresql15-libs libicu lz4
RUN wget https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgresql15-15.4-1PGDG.rhel8.x86_64.rpm -O /tmp/pgql.rpm

RUN rpm -i /tmp/pgql.rpm
RUN rm -f /tmp/pg_repo.rpm /tmp/pgql.rpm

CMD ["tail", "/dev/stdout"]