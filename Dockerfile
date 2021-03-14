#FROM algolia/docsearch-scraper

FROM algolia/docsearch-scraper-base
LABEL maintainer="docsearch@algolia.com"

WORKDIR /root
COPY scraper/src ./src

RUN echo $(ls ./src)

RUN echo $(python --version)

ENTRYPOINT ["pipenv", "run", "python", "-m", "src.index"]