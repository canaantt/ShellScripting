#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not.

# Display the UID, which is a preset variable
echo "Your UID is ${UID}"

# Display the username
USER_NAME=$(id -un)
USER_NAME=`id -un` # This is the older way
echo "Your name is ${USER_NAME}"
# Display if the user is the root user or not.
# if [ "${UID}" -eq 0 ] # this is the older way 
if [[ "${UID}" -eq 0 ]] # the white spaces before and after the expression are required!
then
  echo 'You are root.'
else
  echo 'You are not root.'
fi

