# Proyecto Devops 2023

<div style='text-align: justify;'>
Este proyecto tiene como idea principal el aprendizaje sobre distintos temas y poner en práctica lo aprendido a través de un laboratorio que permitirá integrar diferentes herramientas y tecnologías.

Nos centraremos en la primera parte en crear un instancia de <b>EC2</b> en AWS para poder desde allí realizar todas las tareas necesarias. 
Luego comenzaremos con el despligue de un Cluster de Kubernetes que dos opciones:
terraform o ekcli. Una vez configurado el cluster integraremos el mismo con <b>Azure Devops</b> o <b>Github Actions</b> y deplegaremos un contenedor de <b> nginx </b>. 

En la segunda parte, configuraremos monitoreo con el stack de <b> Elastic </b>, <b>FluentBit</b> y <b>Kibana</b> y luego desplegaremos <b>Grafana</b> y <b>Prometheus</b>.cd ..
</div>


## Contenido del proyecto

1. Crear y configurar instancia EC2

2. Configurar instancia y cliente aws

3. Crear cluster con eksctl

4. Crear cluster con terraform

5. Configurar kubectl

6. Azure Devops Setup

7. Github Actions

8. Herramientas de monitoreo


# Bibliografía

### Docker Compose Examples

- [Compose101 Slides](https://www.slideshare.net/ajeetraina/introduction-to-docker-compose-docker-intermediate-workshop)
- [Introduction to Docker Compose](http://dockerlabs.collabnix.com/intermediate/docker-compose/)
- [Dockerfile Vs Docker compose ](http://dockerlabs.collabnix.com/intermediate/workshop/DockerCompose/Difference_between_dockerfile_and_docker_compose.html)
- [How to Install Docker Compose? ](http://dockerlabs.collabnix.com/intermediate/workshop/DockerCompose/How_to_Install_Docker_Compose.html)



### Kubernetes


### Monitoreo (Stack de EFK - Elasticsearch - Fluentbit - Kibana)