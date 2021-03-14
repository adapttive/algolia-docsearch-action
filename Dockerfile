FROM algolia/docsearch-scraper

RUN echo $(pwd)

RUN echo $(ls ./src)

RUN echo $(python --version)

RUN pipenv install requests

#ENTRYPOINT ["pipenv", "run", "python", "-m", "src.index"]
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]