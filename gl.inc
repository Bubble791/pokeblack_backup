make tools
make build/heartgold.us/pokeheartgold.us.nds
make -C lib/syscall all install INSTALL_PREFIX=/mnt/d/pokeblack2/pokeblack2/build/heartgold.us GAME_CODE=IPKE
make patch_mwasmarm
/mnt/d/pokeblack2/pokeblack2//tools/mwasmarm_patcher/mwasmarm_patcher -q /mnt/d/pokeblack2/pokeblack2//tools/mwccarm/2.0/sp2p2/mwasmarm.exe
make build/IPKE/libsyscall.a
make[3]: 'build/IPKE/libsyscall.a' is up to date.
cp build/IPKE/libsyscall.a /mnt/d/pokeblack2/pokeblack2/build/heartgold.us/lib/
/mnt/d/pokeblack2/pokeblack2//tools/mwccarm/2.0/sp2p2/mwasmarm.exe -DHEARTGOLD -DGAME_REMASTER=0 -DENGLISH -DPM_KEEP_ASSERTS -DSDK_ARM9 -DSDK_CODE_THUMB -DSDK_FINALROM -proc arm5te -g -gccinc -i . -i ./include -i ./asm/include -i ./files -i ./lib/asm/include -i ./lib/NitroDWC/asm/include -i ./lib/NitroSDK/asm/include -i ./lib/syscall/asm/include -I./lib/include -DSDK_ASM -DPM_ASM -gccdep -MD -o build/heartgold.us/asm/a_unknow_func.o asm/a_unknow_func.s
make build/heartgold.us/main.lcf
make[2]: 'build/heartgold.us/main.lcf' is up to date.
make build/heartgold.us/main.response
make[2]: 'build/heartgold.us/main.response' is up to date.
cd build/heartgold.us && LM_LICENSE_FILE=../..//mnt/d/pokeblack2/pokeblack2//tools/mwccarm/license.dat  /mnt/d/pokeblack2/pokeblack2//tools/mwccarm/dsi/1.6sp1/mwldarm.exe -proc arm946e -sym on -nopic -nopid -interworking -map closure,unused -symtab sort -m _start -msgstyle gcc -Llib -lsyscall -nostdlib -o ../../build/heartgold.us/main.elf main.lcf @main.response lib/asm/crt0.o
mwldarm.exe: Undefined : "sub_02153FA8"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: Undefined : "sub_02184590"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: Undefined : "sub_0218578C"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: Undefined : "sub_021B9494"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: Undefined : "sub_021BA624"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: Undefined : "sub_021C05D4"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: Undefined : "ovy36_21c0648"
mwldarm.exe: Referenced from "ovy91_21eeeb8" in overlay91.o
mwldarm.exe: alert: Link failed. 
