fin = ''
while True:
    try:
        s = input()
    except:
        break
    s = s.replace("    ", "\\t")
    s = '\\n' +s 
    fin += s
print(fin+"\\n\\n")
