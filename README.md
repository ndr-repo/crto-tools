# crto-tools

### [python2headers.sh](https://github.com/ndr-repo/crto-tools/blob/main/python2headers.sh)
- Performs a GET request to URL hosting static Python source code, passed in from $1. Extracts HTTP request & response headers. 
- Created to assist with development of malleable C2 (RTO weaponization - evade detection via known good HTTP requests) & server side request forgery payloads (web app pentesting & RTO initial access). Works best on source code or web proxy logs.
- This script will reverse HTTP headers as they were defined in the source code. You may need to make minor formatting changes, if you are using them for payloads in a different language Python. (ex: adding to Cobalt Strike malleable c2 configurations)
- Example: bash python2headers.sh https://raw.githubusercontent.com/gremwell/o365enum/refs/heads/master/o365enum.py
