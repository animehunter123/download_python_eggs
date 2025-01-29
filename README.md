# Description
Use the power of Docker to download python egg/wheel/tgz packages for any version on a linux or windows host with docker

# Notes

* Modify the Dockerfile to be the exact version you need

* Modify the requirements.txt to be the exact version (or versionless) that you need

* Launch the script, and it will create a directory. 

* Now copy it to a homelab and use the downloaded packages later, you would need to run pip install with the --no-index and --find-links options, pointing to the directory where you downloaded the packages.
