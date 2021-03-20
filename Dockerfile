FROM algolia/docsearch-scraper

RUN echo $(pwd)

RUN echo $(ls ./src)

RUN echo $(python --version)

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]