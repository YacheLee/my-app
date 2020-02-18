# Stage 1 - the build process
FROM nginx:1.12-alpine
RUN apk update && apk add bash && apk add nano

RUN apk update && apk add bash
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# Setting the environment variables
ENV PORT=80
