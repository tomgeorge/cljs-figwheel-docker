FROM java:8

RUN wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN mv lein /usr/local/bin
RUN chmod +x /usr/local/bin/lein

ENV LEIN_ROOT 1
RUN lein upgrade


EXPOSE 3449

EXPOSE 7888

WORKDIR /clj
ADD . /clj
VOLUME /clj

RUN lein deps
RUN lein cljsbuild once dev
CMD lein figwheel dev
