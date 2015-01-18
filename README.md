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

##Configuration
==============
- Make apache tomcat web server up and running
- Make an public URl to post the hook
- In local use ngrok.com to make an URL. Next two steps are required in case if you do not have an public domain
- download and install ngrok
- ./ngrok 8080
- Add the webhook URL to the git repo
- Start the webhook_handler to recieve json ./weghook_handler.py
- Start the local smtp server on port 1025 using the following command 'python -m smtpd -n -c DebuggingServer localhost:1025' to send emails 

##Modules:
#Webhook POST Listener:
* This module listens to the POST url which is hooked with the github api. And invoke mail api to send the notification

#JSON Parser 
* This module the takes post request as JSON object and parse the commit/push information. 
* And it includes commit message, files added, deleted, modified etc.

#Repo Maintainer 
* This module stores and maintains the user and repo information as a pickle file. This also can be maintained in YAML or JSON files
* Every post request will be compared against this dictionary


##Licensing
gitnotus is licensed under MIT License. See LICENSE for full license text.
