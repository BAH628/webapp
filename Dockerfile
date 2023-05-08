# Définit l'image de base
FROM ubuntu:22.04

# Informations sur le mainteneur
MAINTAINER maimouna (bmaimouna338@gmail.com)

# Mise à jour des paquets disponibles
RUN apt-get update
# Installation des paquets nécessaires



RUN UBUNTU_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*

RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/

# le port

EXPOSE 81

#ADD static-website-example/ /var/wwww/html/


# Commande à exécuter lors de la création d'un conteneur basé sur cette image
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
