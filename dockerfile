FROM nginx:1.25-alpine

LABEL maintainer="dinazmi"
LABEL project="devops-cicd-aws"

COPY app /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s \
  CMD wget -qO- http://localhost:80 || exit 1
