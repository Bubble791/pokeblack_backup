import subprocess

aaa = """	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text\n"""
with open("1_clean.s", "r") as file:
    code = file.readlines()
    arm_start = 0
    thumb_start = 0
    isEnd = 0
    now = []
    index = 0
    now.append(aaa)
    nametable = []
    for line, i in enumerate(code):
        now.append(i)
        if "arm_fun_start " in i or "thumb_func_start " in i:
            namesssss = i.split("func_start ")[1]
            nametable.append(namesssss)
        if line + 1 < len(code):
            if "thumb_func_start " in code[line + 1]:
                if arm_start == 1:
                    arm_start = 0
                    isEnd = 1
                thumb_start = 1
            elif "arm_func_start " in code[line + 1]:
                if thumb_start == 1:
                    thumb_start = 0
                    isEnd = 1
                arm_start = 1
        else:
            isEnd = 1
        
        if isEnd == 1:
            isEnd = 0
            if thumb_start == 1:
                tyoe = "arm"
            else:
                tyoe = "thumb"
            with open(f"dump/asm_{index}_{tyoe}.s", "w") as file:
                file.write
                file.writelines(now)
            subprocess.call(f"sed -r dump/asm_{index}_{tyoe}.s -f sfix_{tyoe}.sed > asm/asm_{index}_{tyoe}.s", shell=True)
            index += 1
            now.clear()
            now.append(aaa)
    with open("nametable.s", "w") as fiule:
        fiule.writelines(nametable)