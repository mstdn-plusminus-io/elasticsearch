FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.2

RUN ./bin/elasticsearch-plugin install --batch analysis-icu && \
    ./bin/elasticsearch-plugin install --batch analysis-kuromoji
