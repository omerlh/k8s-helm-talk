FROM node AS build
RUN yarn global add elm@0.18.0
COPY . /app
WORKDIR /app
RUN elm-make --yes Main.elm --output index.html

FROM nginx
WORKDIR /app
COPY --from=build /app/index.html /usr/share/nginx/html
