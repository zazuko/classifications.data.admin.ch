# classifications.data.admin.ch

This provides a Trifid instance for [classifications.data.admin.ch](https://classifications.data.admin.ch).

## Requirements

You need to have [Docker](https://docker.com/) installed.

## Building

```sh
docker build -t trifid . --pull
```

## Running

```sh
docker run --rm -p 8080:8080 -it trifid
```
