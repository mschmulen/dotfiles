Configure multiple SSH identities 


[https://confluence.atlassian.com/pages/viewpage.action?pageId=271943168](https://confluence.atlassian.com/pages/viewpage.action?pageId=271943168)




SSH Command - Purpose
ssh-keygen	Creates key pairs.
ssh-agent	Agent for providing keys to remote servers. The agent holds loaded keys in memory.
ssh-add	Loads a private key into the agent.



1. generate an ssh 
``` ssh-keygen -f ~/.ssh/personalid -C "personalid" ```

1. Edit the ~/.ssh/config file. 


``` 
Host workdid
 HostName bitbucket.org
 IdentityFile ~/.ssh/workdid
Host personalid
 HostName bitbucket.org
 IdentityFile ~/.ssh/personalid
 
``` 

1. copy the contents of the public key 
``` pbcopy < ~/.ssh/id_rsa.pub ```


1. insure the ssh agent is running
``` ps | grep ssh-agent ```


1. List the currently loaded keys:
``` ssh-add -l ```

1. If necessary, add your new key to the list:
``` ssh-add ~/.ssh/workid ```




