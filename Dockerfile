FROM debian
ARG VERSION
RUN echo "$VERSION" > /version
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
