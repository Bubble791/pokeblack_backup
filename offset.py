# all_table = [0, 114353, 121066, 121140, 172549, 189079, 205364, 205670, 214553, 216213, 231299]
# # 231405 - 232822
# # 231906 - 233052
# with open("1_clean.s", "r") as file:
#     start = 233375
#     end = 233767
#     all = file.readlines()
#     newtable = []
#     for index, i in enumerate(all):
#         if index >= start and index < end:
#             newtable.append(i)
#     with open("asm_0.s", "w") as new:
#         new.writelines(newtable)

# import os

# all = os.listdir("asm")
# for index in range(110):
#     for i2 in all:
#         if f"asm_{index}_" in i2:
#             print("	Object asm/" + i2)
#             break

with open("gl.inc", "r") as file:
    for i in file.readlines():
        if "Undefined : " in i:
            name = i.split("\"")[1]
            print(f"    thumb_func_start {name}")
            print(f"{name}: ; 0x02073FB4")
            print(f"	bx lr\n	.align 2, 0\n	thumb_func_end {name}\n")