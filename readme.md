### What?

Heavy Docker image with stable version of npm package manager and additional tools (make, gcc, python, ...) for using in your build workflow.
Base Dockerfile: `furdarius/npm-docker:alpine`

### How?

* Pull it: `docker pull furdarius/npm-hard-docker:alpine`
* Use it: `docker run -v $(pwd):/app furdarius/npm-hard-docker install:alpine`