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
mwldarm.exe: Ambiguous reference to symbol "sub_021A2B4C",
mwldarm.exe: which is multiply-defined in overlays "OVY_167" and "OVY_36" of 
mwldarm.exe: overlay group "OVY_167"
mwldarm.exe: Unresolved reference occurs in overlay "OVY_12" of overlay group 
mwldarm.exe: "OVY_12"
mwldarm.exe: Ambiguous reference to symbol "sub_021EEF78",
mwldarm.exe: which is multiply-defined in overlays "OVY_210" and "OVY_122" of 
mwldarm.exe: overlay group "OVY_210"
mwldarm.exe: Unresolved reference occurs in overlay "OVY_209" of overlay group 
mwldarm.exe: "OVY_209"
mwldarm.exe: Ambiguous reference to symbol "sub_02151DEC",
mwldarm.exe: which is multiply-defined in overlays "OVY_11" and "MAIN" of 
mwldarm.exe: overlay group "OVY_11"
mwldarm.exe: Unresolved reference occurs in overlay "OVY_173" of overlay group 
mwldarm.exe: "OVY_173"
mwldarm.exe: Ambiguous reference to symbol "sub_021EEED4",
mwldarm.exe: which is multiply-defined in overlays "OVY_130" and "OVY_112" of 
mwldarm.exe: overlay group "OVY_130"
mwldarm.exe: Unresolved reference occurs in overlay "OVY_36" of overlay group 
mwldarm.exe: "OVY_36"
mwldarm.exe: Ambiguous reference to symbol "sub_021EA860",
mwldarm.exe: which is multiply-defined in overlays "OVY_83" and "OVY_79" of 
mwldarm.exe: overlay group "OVY_83"
mwldarm.exe: Unresolved reference occurs in overlay "OVY_36" of overlay group 
mwldarm.exe: "OVY_36"
mwldarm.exe: alert: Link failed. 
