# Git settings

## Multiple SSH keys

### Create different ssh key

    ssh-keygen -t rsa -C "your_email@youremail.com"

Save new key. Ex: `~/.ssh/id_rsa_example`

Add new key

    ssh-add ~/.ssh/id_rsa_example

You can delete all cached keys before

    ssh-add -D

Finally, you can check your saved keys

    ssh-add -l

### Modify the ssh config

Add new config to `~/.ssh/config`

    Host github.com-example
        HostName github.com
        User git
        IdentityFile ~/.ssh/id_rsa_example

### Clone you repo and modify your Git config

Clone your repo using the new host

    git clone git@github.com-example:example_user/example_repo
