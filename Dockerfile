FROM node:alpine AS build
WORKDIR /app
ARG REACT_APP_BASE_URL
ENV REACT_APP_BASE_URL=$REACT_APP_BASE_URL
COPY package.json .
RUN npm install --force
COPY . .
RUN npm run build

FROM nginxinc/nginx-unprivileged:alpine3.19-perl AS deploy
COPY --from=build /app/build /usr/share/nginx/html
COPY shoeshop_fe.conf /etc/nginx/conf.d/
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
