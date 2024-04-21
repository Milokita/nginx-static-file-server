# Nginx static file server
nginx tatic file server with username password protection served in docker

# How to start & stop the docker
Since the repo has contain the "dockerfile" and "docker.compose.yml"

But we cannot easily start the docker based on these, since we need a htpasswd file

This file we can gain by using the file "add.user.sh"

Before gaining, we have to make sure you have installed Windows Subsystem for Linux(WSL)

It's also ok if you wanna use git to solve, but there's maybe something unknow due to poor net

When you have the WSL, it also cannot work if you are lack of htpasswd tools

You can use the code 

```linux
sudu apt-get update
sudu apt-get install apache2-utils
```

This command is used to install the htpasswd tools, then you can display the "add.user.sh"

Reminder: Before you deal with the sh file, please replace the username and passward inside with the one you like

Now, the invisible file would be created after using sh file, and you can use the code
```docker
docker-compose up
```
to start the docker image and container. It constructs automatically

You can also use the code
```docker
docker-compose down
```
to stop the iamges and delete the temporary container

Reminder: It's also fine to design the images using dockerfile step by step

# Detail about changing dir in Volume

There's a code in the file "docker-compose.yml"
```docker
    volumes:
      - /home/zx/gluster/nanopore.dna:/srv:ro
      - ./nginx.conf:/etc/nginx/conf.d/default.conf:ro
      - .htpasswd:/etc/nginx/.htpasswd:ro
```
Here, i will give some detail about them. You can change these based on the detail

Since these three lines are similar, i would use the first line to explain

As we can see, the code is in the pattern "path:path:mode"

  **The left path:** it reflects the path or file from the host machine

  **The right path:** it reflects the path where you wanna put the files from the left path

  **The mode:** it reflects the mode you deal with the file from left path. "ro" means read only 

So the whole line copy the file from left to the right, and it's read only

# Contributor
Xing Zhao, Sihao Hu
