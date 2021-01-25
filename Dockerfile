FROM httpd:2.4-alpine

ENV INCLUDE_DIR '/usr/local/apache2/conf/conf.d/'
RUN mkdir -p "${INCLUDE_DIR}" && echo "IncludeOptional ${INCLUDE_DIR}/*.conf"
VOLUME "${INCLUDE_DIR}"
