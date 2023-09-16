FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.13

RUN ./bin/elasticsearch-plugin install --batch \
        analysis-icu \
        analysis-kuromoji
