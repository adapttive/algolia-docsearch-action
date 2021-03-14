FROM algolia/docsearch-scraper

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]