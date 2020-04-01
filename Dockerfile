FROM elasticsearch:7.6.1
RUN apt-get update && apt-get install zip wget
RUN mkdir -p /usr/share/elasticsearch/plugins/ik
RUN cd /usr/share/elasticsearch/plugins/ik && wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.1/elasticsearch-analysis-ik-7.6.1.zip && unzip elasticsearch-analysis-ik-7.6.1.zip
RUN mkdir -p /usr/share/elasticsearch/plugins/pinyin
RUN cd /usr/share/elasticsearch/plugins/pinyin && wget https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.6.1/elasticsearch-analysis-pinyin-7.6.1.zip && unzip elasticsearch-analysis-pinyin-7.6.1.zip
