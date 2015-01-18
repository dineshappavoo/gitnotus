gitnotus
=======================
[![Build Status](https://drone.io/github.com/dineshappavoo/gitnotus/status.png)](https://drone.io/github.com/dineshappavoo/gitnotus/latest)

Manage the github events and notify the users


##gitnotus Command Line Interface
gitnotus is a set of API's/tools written to manage github events. Event updates will be notified through web hooks.

The following are the core functionalities of the gitnotus CLI:
```
usage: gitnotus [-h] [-v]
               
	  {addrepo,listinfo,userinfo,list}
```

##Commands
Option | Specification
------------ | -------------
addrepo | add new repository
listinfo | get all user and repo info
userinfo | display user info

```
$ gitnotus addrepo -h
usage: gitnotus addrepo [-h] username reponame email

positional arguments:
  username    get the user name
  reponame    get the repository name
  email       get the email address


$ gitnotus listinfo -h
usage: gitnotus listinfo [-h]

$ gitnotus userinfo -h
usage: gitnotus userinfo [-h] username

positional arguments:
  username    get the user name

```



##Licensing
gitnotus is licensed under MIT License. See LICENSE for full license text.
