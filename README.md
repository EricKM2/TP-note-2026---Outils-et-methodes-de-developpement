# Commandes utiles liées à Docker

## Pull l'image de redocly/cli :

- docker pull redocly/cli

## Run index.html avec redocly/cli :

- docker run --rm -v $PWD:/spec redocly/cli lint openapi.yaml