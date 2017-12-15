docker run -dit --name cesar_docker_apache_app -p 80:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd:2.4
