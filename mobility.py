import re
import string

fr = open("My_mobility100.xml","r")
fw = open("new_200.xml",'w')

p = re.compile('<timestep time="(.*?).00">')
lines = fr.readlines()
for line in lines:
    res = p.search(line)
    if res:
        b = res.group(1)
        c = int(b) - 500
        newline = re.sub(b,str(c),line)
 #      print newline
        fw.writelines(newline)
    else:
        fw.writelines(line)

fr.close()
fw.close()

