

size = 60
for i in range(int(size / 4)):
    offset = hex(i * 4).upper().replace("X", "x")
    oas = hex(i * 4).upper().replace("0X", "")
    print(f"/*{offset}*/ int unk{oas};")