FROM redocly/cli AS build
WORKDIR /app
COPY src .
RUN redocly build-docs openAPI.yaml --output=index.html

FROM nginx:latest
COPY --from=build /app/index.html /usr/share/nginx/html/index.html
EXPOSE 80