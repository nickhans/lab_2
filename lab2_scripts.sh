#!/bin/bash
# Author: Nick Hanselman
# Date: 1/30/2019

# Problem 1 Code:

echo "Input File Name: "
read fileName
echo "Input Regex: "
read userRegex
grep $userRegex $fileName

grep '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}$' regex_practice.txt > phone_results.txt

let phoneCount=0
while read phoneNumber; do
  # echo "$phoneNumber"
  phoneCount=$((phoneCount+1))
done < phone_results.txt
echo "$phoneCount phone numbers in regex_practice.txt"

grep @ regex_practice.txt > email_results.txt

let emailCount=0
while read emailAddress; do
  emailCount=$((emailCount+1))
done < email_results.txt
echo "$emailCount email addresses in regex_practice.txt"

grep '^303\-[0-9]\{3\}\-[0-9]\{4\}$' regex_practice.txt > phone_results.txt
grep -v 'geocities' regex_practice.txt | grep '@' > email_results.txt
grep $1 regex_practice.txt > command_results.txt
git add phone_results.txt email_results.txt command_results.txt
git commit -m "Committed result .txt files"