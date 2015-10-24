##
# Dockerized microperl
FROM scratch
MAINTAINER Alexei KLENIN <alexei.klenin@gmail.com>

# Add built binaries
ADD built/microperl /usr/bin/perl

# Make perl the entry point & main command
ENTRYPOINT [ "/usr/bin/perl" ]
CMD [ "/usr/bin/perl" ]
