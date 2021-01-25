FROM httpd:2.4-alpine

ENV CONF_FILE '/usr/local/apache2/conf/httpd.conf'
ENV INCLUDE_DIR '/usr/local/apache2/conf/conf.d/'

RUN mkdir -p "${INCLUDE_DIR}" && echo "IncludeOptional ${INCLUDE_DIR}/*.conf" >> "${CONF_FILE}"
VOLUME "${INCLUDE_DIR}"
