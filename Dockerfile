FROM elasticsearch:6.4.2

USER root
COPY elasticsearch-analysis-ik-6.4.2.zip /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.4.2.zip
RUN mkdir /usr/share/elasticsearch/plugins/ik \
    && unzip /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.4.2.zip -d /usr/share/elasticsearch/plugins/ik \
    && rm /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.4.2.zip
