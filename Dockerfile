FROM node:19

RUN npm install markdown-pdf markdownlint-cli -g --unsafe-perm
