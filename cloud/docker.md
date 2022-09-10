# Basic Docker Commands

> Docker is an alternate for VM's.
    Earlier VM's use to cascade fail, now we set limits on docker
    VM's take too much space for OS and time for boot up
   

> Keywords:
>   Image
>   Container
>   Layers


Commands:

    docker images ls -> shows all images in system
    docker ps      -> shows all the running containers
    docker ps - a  -> shows all the  available containers

    docker run   -> used for running the images
    docker build -> used for building the images

    docker pull -> pulls images from repo
    docker push -> push images to image repo


    docker logs -> check the logs 
    docker exec -> to get into the shell of any container

    docker volume list -> lists all the volumes
    docker volume create name -> create new volume

    docker container inspect container_id
    docker network inspect bridge
    
    Running:
        
        docker run -p 8080:8080 
        docker run --name container_name image_name
        
        -it -> interative terminal

        docker exec -it continaer_name cmd_name

        docker run --name mysql -p3306:3306 -v mysql-volume:/var/lib/mysql -d mysql/mysql-latest








