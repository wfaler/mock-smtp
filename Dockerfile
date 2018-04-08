FROM python:2-alpine3.7

ENV MOCK_SMTP_ADDRESS=0.0.0.0
ENV MOCK_SMTP_PORT=25

COPY mock-smtp.py /usr/sbin/mock-smtp

EXPOSE $MOCK_SMTP_PORT

VOLUME /var/lib/mock-smtp

CMD ["/usr/sbin/mock-smtp"]
