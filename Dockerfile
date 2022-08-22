FROM httpd:2.4.54-alpine3.16

ENV CONF_FILE '/usr/local/apache2/conf/httpd.conf'
ENV INCLUDE_DIR '/usr/local/apache2/conf/conf.d'
ENV REQUIRED_DIR '/usr/local/apache2/conf/required.conf.d'

# required conf for optionally copying configs for extended Dockerfiles
RUN mkdir -p "${REQUIRED_DIR}" && echo "IncludeOptional ${REQUIRED_DIR}/*.conf" >> "${CONF_FILE}"

# include dir for optionally mounting configs at runtime
RUN mkdir -p "${INCLUDE_DIR}" && echo "IncludeOptional ${INCLUDE_DIR}/*.conf" >> "${CONF_FILE}"

VOLUME "${INCLUDE_DIR}"
