# Example GitLab-CI Container

This Container is for the Markdown-To-Pdf example

- [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli) using [markdownlint](https://github.com/DavidAnson/markdownlint)
- [markdown-pdf](https://github.com/alanshaw/markdown-pdf)

## Example yaml

```yaml
image: infralovers/markdown-pdf:0.2

stages:
  - lint
  - build
  
lintMarkdown:
  stage: lint
  script:
    - markdownlint *.md

buildPdf:
  stage: build
  script:
    - markdown-pdf *.md
  artifacts:
    paths:
      - ./*.pdf
```
