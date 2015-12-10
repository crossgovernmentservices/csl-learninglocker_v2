FROM djsd123/csl_lrs:v2
MAINTAINER Mikael Allison <mikellallison@gmail.com>

EXPOSE 443

ENTRYPOINT ["/usr/bin/llstartup"]
