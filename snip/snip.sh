
#assign an argument to variable but provide a default if it exists
#MYVAR=${1:-default}
SNIP_HOME="/Users/mattschmulen/snip"

#echo "Current date : $(date) @ $(hostname)"
#echo "Network configuration"
#DIRS=`ls -l $SNIP_HOME | egrep '^d' | awk '{print $8}'`
#DIRS=`ls $SNIP_HOME`
DIRS=`ls -d $SNIP_HOME *`

# "ls -l $MYDIR"      = get a directory listing
# "| egrep '^d'"           = pipe to egrep and select only the directories
# "awk '{print $8}'" = pipe the result from egrep to awk and print only the 8th field

# and now loop through the directories:
for DIR in $DIRS
do
echo  ${DIR}
done


