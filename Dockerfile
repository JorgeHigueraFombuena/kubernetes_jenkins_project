FROM centos:9
MAINTAINER shikhardevops@gmail.com

RUN yum install -y httpd zip unzip
ADD https://templatemo.com/tm-zip-files-2020/templatemo_625_folio_slideshow.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip templatemo_625_folio_slideshow.zip
RUN cp -rvf templatemo_625_folio_slideshow/* .
RUN rm -rf templatemo_625_folio_slideshow templatemo_625_folio_slideshow.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443

