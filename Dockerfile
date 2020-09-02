FROM golang:1.15-alpine

ARG PRIVATE_KEY
ENV PRIVATE_KEY=$PRIVATE_KEY

ARG GOOGLE_CLIENT_ID
ENV GOOGLE_CLIENT_ID=$GOOGLE_CLIENT_ID

ARG GOOGLE_CLIENT_SECRET
ENV GOOGLE_CLIENT_SECRET=$GOOGLE_CLIENT_SECRET

COPY . /JWT-Auth

WORKDIR /JWT-Auth/cmd/app

RUN go fmt ./... && go build .

CMD go run .