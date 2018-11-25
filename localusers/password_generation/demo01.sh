#!/bin/bash

# Generate Password using random
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Generate Password using date
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# use nanoseconds to further secure the password
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# use hash
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

# more
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"

# insert special characters
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_+=' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"