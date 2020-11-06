FROM elasticsearch:7.9.1
RUN mkdir -p /usr/share/elasticsearch/plugins/ik
RUN cd /usr/share/elasticsearch/plugins/ik \
    && curl -L -o elasticsearch-analysis-ik-7.9.1.zip https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.9.1/elasticsearch-analysis-ik-7.9.1.zip \
    && unzip elasticsearch-analysis-ik-7.9.1.zip
RUN mkdir -p /usr/share/elasticsearch/plugins/pinyin
RUN cd /usr/share/elasticsearch/plugins/pinyin \
    && curl -L -o elasticsearch-analysis-pinyin-7.9.1.zip https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.9.1/elasticsearch-analysis-pinyin-7.9.1.zip \
    && unzip elasticsearch-analysis-pinyin-7.9.1.zip

