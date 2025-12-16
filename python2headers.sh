#! /bin/bash
#
# Performs a GET request to URL hosting python source, passed in from $1. Extracts HTTP request & response headers. 
# Created to assist with development of malleable C2 (RTO weaponization - evade detection via known good HTTP requests) & server side request forgery payloads (web app pentesting & RTO initial access). Works best on source code or web proxy logs.
#
# This script will reverse HTTP headers as they were defined in the source code. You may need to make minor formatting changes, if you are using them for payloads in a different language Python. (ex: adding to Cobalt Strike malleable c2 configurations)
#
# Example: bash python2headers.sh https://raw.githubusercontent.com/gremwell/o365enum/refs/heads/master/o365enum.py
#
echo "----------------------------------"
echo Request Headers: $1
echo "----------------------------------"
#
echo "curl -X GET $1 -s | grep -o '[\"].*[\"][\:][\ ][\"].*[\"]' | sort -u" | sh 2>/dev/null
# adding support for headers defined with single quotes - 26Nov25
# I assume that if the script is reading source code, developers have a defined best practice about single vs double quotes, so one regex may fail but not neccessarily be a "failure", hence 2>/dev/null
echo curl -X GET $1 -s | grep -o "[\'].*[\'][\:][\ ][\'].*[\']" | sort -u | sh 2>/dev/null
#
echo "----------------------------------"
#
# Created by Gabriel H. @weekndr_sec
#
