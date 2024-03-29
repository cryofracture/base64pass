#!/usr/bin/env bash
#
#
#
# TOOL NAME:
# WRITTEN BY: tacree
# DATE:
# REV:
# First Worked:
# Purpose:
#
# REV LIST:
# BY:
# DATE:
# CHANGES MADE:
#
#
#
NUMBER_OF_PASSWORDS=$1
[ -n "$NUMBER_OF_PASSWORDS" ] || NUMBER_OF_PASSWORDS=1

PASSWORD_LENGTH=$2
[ -n "$PASSWORD_LENGTH" ] || PASSWORD_LENGTH=64

for x in $(seq 1 $NUMBER_OF_PASSWORDS)
do
  openssl rand -base64 48 | cut -c1-${PASSWORD_LENGTH}
done
