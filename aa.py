with open("12.s", "r") as file:
    for i in file.readlines():
        if "Unknown identifier" in i:
            new = i.split(", ")[1].replace("\n","")
            print(f".public {new}")