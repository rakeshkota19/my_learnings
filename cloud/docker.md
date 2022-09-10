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


    
    Running:
        
        docker run -p 8080:8080 
        docker run --name container_name image_name
        
        -it -> interative terminal

        docker exec -it continaer_name cmd_name








