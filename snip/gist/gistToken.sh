#!/bin/bash
#Usage ./gistToken.sh USERNAME (don't forget to chmod+x it)
# taken from https://gist.github.com/jjperezaguinaga/4100532 
#Inspired in http://www.lornajane.net/posts/2012/github-api-access-tokens-via-curl
#Usage ./gistToken.sh mschmulen
curl -v -u $1 -X POST https://api.github.com/authorizations --data "{\"scopes\":[\"gist\"]}"

