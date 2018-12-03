#!/bin/bash

# This script create a new user on th elocal system.
# You must supply a username as an argument to the script.
# Optionally, you can also provide a comment for the account as an argument.
# A password will be automatically generated for the account.
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser priviledges.

if [[ "${UID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root.'
  exit 1
fi 

# if they don't supply at least one argument, then give them help.
if [[ "${#}" -lt 1 ]]
then 
  echo "Usage: ${0} USER_NAME [COMMENT]..."
  echo 'Create an account on the local system with the name of USER_NAME and a comments field of COMMENT'
  exit 1
fi


# The first parameters is the user name
USER_NAME="${1}"

# The rest of the parameters are for thhe account comments.
shift
COMMENT="${@}"

# Genereate a password
PASSWORD=$(date +%s%N | sha256sum | head -c48)

# Create the user with the password
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the useradd command successed.
if [[ "${?}" -ne 0 ]]
then
  echo 'The account could not be created.'
  exit 1
fi

# Set the password.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#Check if the password was set successffully
if [[ "${?}" -ne 0 ]]
then 
  echo 'The password was not created successfully.'
  exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo
echo 'username: '
echo "${USER_NAME}"
echo 
echo 'password'
echo "${PASSWORD}"
echo 
echo 'host: '
echo "${HOSTNAME}"
exit 0

