import math
from tkinter import filedialog

points = 120
r = 20
dy = "0.5"
particle = "bubble_pop"

file_dir = filedialog.askopenfilename(title='Choose file',filetypes=[('mcfunction files','.mcfunction')],initialdir='./data/careerpvp/functions/effect')

for i in range(points):
    r_str = "particle " + particle + " ~"
    x = math.sin(2*i*math.pi/points)*r
    r_str += str(round(x,2))
    r_str += (" ~" + dy + " ~")
    z = math.cos(2*i*math.pi/points)*r
    r_str += str(round(z,2))
    r_str += (" 0 0 0 0 1 normal\n")
    file = open(file_dir,"a")
    file.write(r_str)
    file.close()

    
