#!/usr/bin/env bash

#
# Custom config script, intended to be executed once on initial "vagrant up"
#
# Author: ivanvestic.com
#

thisFileName=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")

# check if the script has already been executed
if [ -f "/.puphpet-stuff/executed-${thisFileName}" ]; then
    echo "${thisFileName} already executed"
    exit 1
fi

# Locale
sh -c "echo 'LANG=en_US.utf-8' > /etc/environment"
sh -c "echo 'LC_ALL=en_US.utf-8' >> /etc/environment"

# log that this script ha been executed
touch "/.puphpet-stuff/executed-${thisFileName}"
