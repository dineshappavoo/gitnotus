#!/bin/env bash

#==============================================================================
# Variables
#==============================================================================

# Some descriptive variables
#name                = "gitnotus"
#version             = "0.1.0"
#long_description    = """gitnotus is a set of API's/tools written to manage github events."""
#url                 = "https://github.com/dineshappavoo/gitnotus"
#license             = ""

#==============================================================================

#Start the Tomcat server
/Library/Tomcat/bin/startup.sh

#Start the smtp mail server
python -m smtpd -n -c DebuggingServer localhost:1025

#Start the web hook listener
python webhook_handler.py

#Start the ngrok server in case if we dont have public domain
cd /Users/Dany/Downloads/
./ngrok 8080

