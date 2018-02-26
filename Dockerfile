FROM        perl:latest
MAINTAINER  Jens Villadsen jenskristianvilladsen@gmail.com
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm git://github.com/dk/Net-Eboks
RUN cpan IO::Socket::SSL
CMD eboks2pop
EXPOSE 110
