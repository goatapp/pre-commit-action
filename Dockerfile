FROM python:3.7.4-alpine3.9

RUN pip install pre-commit==1.18.3
RUN apk update && \
    apk add --no-cache git=2.20.1-r0
RUN rm -rf /var/cache/apk/*

# Help show any whitespace changes on diffs
RUN git config --global diff.wsErrorHighlight all && git config --global color.diff always

ENTRYPOINT ["pre-commit"]
