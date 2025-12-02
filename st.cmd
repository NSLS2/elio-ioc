#!bin/linux-x86_64/elio

#- You may have to change elio to something else
#- everywhere it appears in this file

#< envPaths
epicsEnvSet("DEVICE","EK9K1")
epicsEnvSet("NUMTERM",11)
epicsEnvSet("Sys", "XF:31ID1-ES")
epicsEnvSet("Dev", "GPIO:1")
epicsEnvSet("TOP","/nsls2/users/hxu/iocs/elio-ioc")

## Register all support components
dbLoadDatabase("dbd/elio.dbd",0,0)
elio_registerRecordDeviceDriver(pdbbase) 

ek9000Configure("$(DEVICE)", "10.69.58.101", 502, "$(NUMTERM)")
#asynSetTraceMask("$(DEVICE)", 0, 9)
#asynSetTraceIOMask("$(DEVICE)", 0, 9)

cd "${TOP}/db/"

dbLoadRecords("ek9000_status.db","P=$(Sys){$(Dev)},EK9K=$(DEVICE)")

#Configure terminal 1: EL1808
epicsEnvSet("POS",1)
epicsEnvSet("MODEL","EL1808")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 2: EL2798
epicsEnvSet("POS",2)
epicsEnvSet("MODEL","EL2798")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 3: EL2808
epicsEnvSet("POS",3)
epicsEnvSet("MODEL","EL2808")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 4: EL3008
epicsEnvSet("POS",4)
epicsEnvSet("MODEL","EL3008")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 5: EL3068
epicsEnvSet("POS",5)
epicsEnvSet("MODEL","EL3068")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 6: EL3164
epicsEnvSet("POS",6)
epicsEnvSet("MODEL","EL3164")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 7: EL4008
epicsEnvSet("POS",7)
epicsEnvSet("MODEL","EL4008")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 8: EL4038
epicsEnvSet("POS",8)
epicsEnvSet("MODEL","EL4038")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 9: EL9505
epicsEnvSet("POS",9)
epicsEnvSet("MODEL","EL9505")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 10: EL1124
epicsEnvSet("POS",10)
epicsEnvSet("MODEL","EL1124")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")

#Configure terminal 11: EL2124
epicsEnvSet("POS",11)
epicsEnvSet("MODEL","EL2124")
epicsEnvSet("Dev","{GPIO:1_$(POS)}")
ek9000ConfigureTerminal("$(DEVICE)", "$(Dev)", "$(MODEL)", "$(POS)")
dbLoadTemplate("$(MODEL).substitutions","DEVICE=$(DEVICE),Sys=$(Sys), Dev=$(Dev),POS=$(POS)")


iocInit()

## Start any sequence programs
#seq sncelio,"user=hxu"
