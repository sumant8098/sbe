# IBM_PROLOG_BEGIN_TAG
# This is an automatically generated prolog.
#
# $Source: src/build/import_hwp_mk/power/istepcommon/istepcommonfiles.mk $
#
# OpenPOWER sbe Project
#
# Contributors Listed Below - COPYRIGHT 2016,2018
# [+] International Business Machines Corp.
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied. See the License for the specific language governing
# permissions and limitations under the License.
#
# IBM_PROLOG_END_TAG
#  @file istepCommonfiles.mk
#
#  @brief mk for including istepcommon object files
#
##########################################################################
# Object Files
##########################################################################
ISTEPCOMMON-CPP-SOURCES +=p9_sbe_common.C
ISTEPCOMMON-CPP-SOURCES +=p9_sbe_gear_switcher.C
ISTEPCOMMON-CPP-SOURCES +=p9_fbc_utils.C
ISTEPCOMMON-CPP-SOURCES +=p9_pba_access.C
ISTEPCOMMON-CPP-SOURCES +=p9_pba_coherent_utils.C
ISTEPCOMMON-CPP-SOURCES +=p9_pba_setup.C
ISTEPCOMMON-CPP-SOURCES +=p9_pm_ocb_indir_access.C
ISTEPCOMMON-CPP-SOURCES +=p9_pm_ocb_indir_setup_circular.C
ISTEPCOMMON-CPP-SOURCES +=p9_pm_ocb_indir_setup_linear.C
ISTEPCOMMON-CPP-SOURCES +=p9_pm_ocb_init.C
ISTEPCOMMON-CPP-SOURCES +=p9_adu_setup.C
ISTEPCOMMON-CPP-SOURCES +=p9_adu_coherent_utils.C
ISTEPCOMMON-CPP-SOURCES +=p9_adu_access.C
ISTEPCOMMON-CPP-SOURCES +=p9_ram_core.C
#Istep2 Procedure but this is required to run from PIBMEM
ISTEPCOMMON-CPP-SOURCES +=p9_sbe_tp_switch_gears.C
ISTEPCOMMON-CPP-SOURCES +=p9_sbe_npll_setup.C
#istep5 Procedure but this is required to run from PIBMEM
ISTEPCOMMON-CPP-SOURCES +=p9_sbe_load_bootloader.C
ISTEPCOMMON-C-SOURCES =
ISTEPCOMMON-S-SOURCES =

ISTEPCOMMON_OBJECTS += $(ISTEPCOMMON-CPP-SOURCES:.C=.o)
ISTEPCOMMON_OBJECTS += $(ISTEPCOMMON-C-SOURCES:.c=.o)
ISTEPCOMMON_OBJECTS += $(ISTEPCOMMON-S-SOURCES:.S=.o)
