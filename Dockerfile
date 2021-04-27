FROM rabbitmq:3.8-management
MAINTAINER Nick Fan "nickfan81@gmail.com"

RUN curl -L -o /tmp/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.8.9/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez && \
    mv /tmp/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez /opt/rabbitmq/plugins/ && \
    rabbitmq-plugins enable rabbitmq_delayed_message_exchange && \
    rabbitmq-plugins list
