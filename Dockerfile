FROM composer:1.7

LABEL version="0.0.1"
LABEL repository="http://github.com/pxgamer/composer-action"
LABEL homepage="http://github.com/pxgamer/composer-action"
LABEL maintainer="Owen Voke <owzie123@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Composer"
LABEL com.github.actions.description="Wraps the Composer CLI to enable common Composer commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE.md README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]