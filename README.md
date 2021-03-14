# algolia-docsearch-action
Algolia Docsearch Action

## Usage

- sample action config for you project:

```yaml
name: Algolia Indexer

on:
  push:
    branches: [ live ]

jobs:
  algolia_indexer:
    runs-on: ubuntu-latest
    env:
      APPLICATION_ID: {{YOUR_APP_ID}}
      API_KEY: {{YOUR_API_KEY_WITH_WRITE_PERMISSIONS}}
      INDEX_NAME: {{YOUR_WEBSITE}} # example.com
      CONFIG: '{"index_name":"example.com","start_urls":[{"url":"https://example.com/blog","selectors_key":"blog"}],"selectors":{"blog":{"lvl0":"h1","lvl1":"h2","lvl2":"h3","lvl3":"h4","lvl4":"h5","lvl5":"#description","text":"#content"}}}'
    name: Index Algolia
    steps:
    - name: Algolia Docsearch Action
      id: algolia
      uses:  adapttive/algolia-docsearch-action@1.0.2
```