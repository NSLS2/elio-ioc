#!../../bin/linux-x86_64/elio

#- You may have to change elio to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/elio.dbd",0,0)
elio_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/elio.db","user=hxu")

iocInit()

## Start any sequence programs
#seq sncelio,"user=hxu"
