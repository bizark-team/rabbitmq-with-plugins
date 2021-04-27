FROM rabbitmq:3.8-management
MAINTAINER Nick Fan "nickfan81@gmail.com"

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    curl \
	; \
	rm -rf /var/lib/apt/lists/*;

RUN /usr/bin/curl -L -o /tmp/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.8.9/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez && \
    mv /tmp/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez /opt/rabbitmq/plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange && rabbitmq-plugins list
