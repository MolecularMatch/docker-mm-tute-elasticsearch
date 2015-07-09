FROM elasticsearch

ADD config/elasticsearch.yml /usr/share/elasticsearch/config/
ADD config/run.sh /usr/bin/

RUN chmod +x /usr/bin/run.sh

#Install plugins
RUN /usr/share/elasticsearch/bin/plugin -install lmenezes/elasticsearch-kopf
RUN /usr/share/elasticsearch/bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.4.1
RUN /usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk

CMD ["/usr/bin/run.sh"]