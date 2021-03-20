FROM algolia/docsearch-scraper

# Tells pipenv to create virtualenvs in /root rather than $HOME/.local/share.
# We do this because GitHub modifies the HOME variable between `docker build` and
# `docker run`
ENV WORKON_HOME /root

# Tells pipenv to use this specific Pipfile rather than the Pipfile in the
# current working directory (the working directory changes between `docker build`
# and `docker run`, this ensures we always use the same Pipfile)
ENV PIPENV_PIPFILE /root/Pipfile

RUN pipenv install --python 3.6

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]