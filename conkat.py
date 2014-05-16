#!/usr/bin/python

#open it
f = open('jasons-commands.sh')
contents = f.read()
f.close()
#remove all the newlines
new_contents = contents.replace('\n', '')
f = open('doit.sh', 'w')
#save it
f.write(new_contents)
f.close()
