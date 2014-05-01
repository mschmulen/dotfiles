
#!/bin/bash
#Usage ./gistToken.sh USERNAME (don't forget to chmod+x it)
# taken from https://gist.github.com/jjperezaguinaga/4100532
#Inspired in http://www.lornajane.net/posts/2012/github-api-access-tokens-via-curl
#Usage ./gistToken.sh mschmulen
#curl -v -u $1 -X POST https://api.github.com/authorizations --data "{\"scopes\":[\"gist\"]}"

#curl -L https://raw.github.com/gist/4100532/1609337cc431e0139486c0df11408f68f07cd20f/gistToken.sh | bash -s USERNAME


