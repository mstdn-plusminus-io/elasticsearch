FROM docker.elastic.co/elasticsearch/elasticsearch:7.12.1

RUN ./bin/elasticsearch-plugin install --batch analysis-icu && \
    ./bin/elasticsearch-plugin install --batch analysis-kuromoji
