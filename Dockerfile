FROM djsd123/csl_lrs
MAINTAINER Mikael Allison <mikellallison@gmail.com>

# swap the ssl keys out with your own if you wish.  Just ensure the file names DO NOT change
ADD ["ca.key", "ca.csr"] /etc/pki/tls/private/
ADD ca.crt /etc/pki/tls/certs

ADD llstartup /usr/bin/llstartup
# Hoping below "RUN" is not required and ADD will honour the mode
# RUN chmod 755 /usr/bin/llstartup

EXPOSE 443

ENTRYPOINT ["/usr/bin/llstartup"]
