### Installation (Arch)

Install using pacman

    $> pacman -S docker

Start the docker daemon with systemd 

    $> sudo systemctl start docker.service

Now enable the service so it persists through reboots


    $> sudo systemctl enable docker.service


Docker command will require `sudo` everytime because as it is owned by a `docker` user group which `$USER` is not part of. 
Let's add `$USER` to the `docker` user group so sudo is not required at every command

    $> sudo usermod -aG docker $USER 


Verify that `$USER` was added Successfully

    $> cat /etc/group | grep docker
       docker:x:958:pedro


