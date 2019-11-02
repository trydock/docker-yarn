# Yarn

[![Build Status](https://travis-ci.org/trydock/docker-yarn.svg?branch=master)](https://travis-ci.org/trydock/docker-yarn)

Yarn is fast, reliable, and secure dependency management tool.

Yarn caches every package it downloads so it never needs to download it again. It also parallelizes operations to maximize resource utilization so install times are faster than ever.

# Run Locally?

Go into the directory, where your `package.json` exists.

Then run:

```
docker run --rm -it -v $(pwd):/work -p 8080:8080 local/yarn yarn install
```

# Version

Issue:

```
docker run --rm -it -v $(pwd):/work -p 8080:8080 local/yarn yarn -v
```
