FROM resin/generic-armv7ahf-alpine-openjdk:openjdk-8-jre
MAINTAINER Martynas Mickevičius <self@2m.lt>

# To make wget start working
RUN apk update && apk add ca-certificates wget && update-ca-certificates

RUN wget https://github.com/coursier/coursier/raw/v1.0.1/coursier && chmod +x coursier

RUN ./coursier bootstrap \
  --progress \
  --repository bintray:2m/maven \
  --main lt.dvim.citywasp.kabrioletas.Kabrioletas \
  --standalone \
  --output kabrioletas \
  lt.dvim.citywasp:kabrioletas_2.12:1.2

ENTRYPOINT ["./kabrioletas"]
