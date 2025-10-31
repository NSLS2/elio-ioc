TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = elio
# elio.dbd will be created and installed
DBD += elio.dbd

# elio.dbd will be made up from these files:
elio_DBD += base.dbd

# Include dbd files from all support applications:
elio_DBD += asyn.dbd
elio_DBD += busySupport.dbd
elio_DBD += modbus.dbd
elio_DBD += asSupport.dbd
elio_DBD += devIocStats.dbd
elio_DBD += reccaster.dbd
elio_DBD += devEK9000.dbd ek9000.dbd ek9000Include.dbd

# Add all the support libraries needed by this IOC
elio_LIBS += asyn modbus autosave devIocStats reccaster ek9000Support

# elio_registerRecordDeviceDriver.cpp derives from elio.dbd
elio_SRCS += elio_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
elio_SRCS_DEFAULT += elioMain.cpp
elio_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#elio_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
elio_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

