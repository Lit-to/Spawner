import json


seedpath = r"C:\Minecraftserver\818001372082864139\battle\world\datapacks\bukkit\data\spawner\tags\items\all.json"
outpath = r"C:\Minecraftserver\818001372082864139\battle\world\datapacks\bukkit\data\spawner\functions\python\spawn.mcfunction"
command = list()
command.append("execute if data storage spawner: {in:{egg:")
command.append(1)
command.append("}} run data modify storage spawner: in.Type set value")
command.append(2)
def read(in_p,out_p,command):
    with open(in_p,"r",encoding="utf-8") as f: 
        content=f.read()
        d_content=json.loads(content)
    l_content=d_content["values"]
    result=list()
    for i in l_content:
        if i[-9:-1] == "spawn_eg":
            for j in command:
                if j == 1:
                    result.append("\""+i+"\"")
                elif j == 2:
                    result.append(" \""+i[0:-10]+"\""+"\n")
                else:
                    result.append(j)
    with open(out_p,"w",encoding="utf-8") as f:
        f.writelines(result)

read(seedpath,outpath,command)
print("fin")


