#!/bin/bash

# This script display various finromation on the screen

# Display 'Hello'
echo 'Hello, World!'

# Assign a value to a vaible
WORD='true-value'

# Display the string from single quotes
echo '$WORD'

# Display the value of the variable from double quotes
echo "$WORD"

# Combine the variable with string
echo "This string is combined with a $WORD in double quotes"

# Combine the variable with string {}
echo "This string is combined with a ${WORD} in double quotes"

# Appending text to the variable requires {}
echo "${WORD}other string"
echo "$WORDother string with no {} doesn't work"

# Combine two vars
ENDING='ed'
echo "This is ${WORD}${ENDING}"

# Reassignment
ENDING='ing'
echo "This is ${WORD}${ENDING}"
