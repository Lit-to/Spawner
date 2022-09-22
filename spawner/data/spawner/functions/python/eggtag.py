import json


seedpath = r"C:\Minecraftserver\818001372082864139\battle\world\datapacks\bukkit\data\spawner\tags\items\all.json"
outpath = r"C:\Minecraftserver\818001372082864139\battle\world\datapacks\bukkit\data\spawner\functions\python\egg.json"

def read(in_p,out_p):
    with open(in_p,"r",encoding="utf-8") as f: 
        content=f.read()
        d_content=json.loads(content)
    l_content=d_content["values"]
    result=dict()
    l_out=list()
    for i in l_content:
        if i[-9:-1] == "spawn_eg":
            l_out.append(i)
    result["values"] = l_out
    with open(out_p,"w",encoding="utf-8") as f:
        json.dump(result,f,indent=4)

read(seedpath,outpath)
print("fin")


