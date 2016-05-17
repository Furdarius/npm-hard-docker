### What?

Heavy Docker image with stable verison of npm package manager and additional tools (make, gcc, python, ...) for using in your build workflow

### How?

* Pull it: `docker pull furdarius/npm-hard-docker`
* Use it: `docker run -v $(pwd):/app furdarius/npm-hard-docker install`