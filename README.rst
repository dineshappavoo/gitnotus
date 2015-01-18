vmonere : github notification
====================================

.. image:: https://drone.io/github.com/dcsolvere/vmonere/status.png
   :target: https://drone.io/github.com/dcsolvere/vmonere
   :alt: drone.io CI build status

.. image:: https://pypip.in/v/vmonere/badge.png
   :target: https://pypi.python.org/pypi/vmonere/
   :alt: Latest PyPI version

.. image:: https://pypip.in/d/vmonere/badge.png
   :target: https://pypi.python.org/pypi/vmonere/
   :alt: Number of PyPI downloads

`vmonere` a wrapper CLI for virtual machine monitoring and resource usage comparison effectively. Vmonere framework enables user to monitor the real time guest and host resource usage.

GITNOTUS:
1.Make apache tomcat web server up and running
2.Make an public URl to post the hook
    -In local use ngrok.com to make an URL
        -download and install
        -./ngrok 8080
3.Add the webhook URL to the git repo
4.Start the webhook_handler to recieve json
5.Call the mail API by passing mail id from thr json
6.Start the local smtp server on port 1025 using the following command 'python -m smtpd -n -c DebuggingServer localhost:1025'


Features
========
* CLI for virtual machine monitoring and resource usage comparison effectively.

Requirements
============
* Python 2.6, 2.7, 3.2, 3.3, 3.4
* setuptools

License
=======
MIT
