FROM ghcr.io/open-webui/open-webui:main

COPY sync_data-cn.sh sync_data-cn.sh

RUN chmod -R 777 ./data && \
    chmod -R 777 ./open_webui && \
    sed -i "1r sync_data-cn.sh" ./start.sh  

