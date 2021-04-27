FROM rabbitmq:3.8-management
MAINTAINER Nick Fan "nickfan81@gmail.com"

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    curl \
	; \
	rm -rf /var/lib/apt/lists/*; \

RUN cd /opt/rabbitmq/plugins && /usr/bin/curl -L -O https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.8.9/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez && \
    rabbitmq-plugins enable rabbitmq_delayed_message_exchange && \
    rabbitmq-plugins list
