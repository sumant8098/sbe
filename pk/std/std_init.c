//-----------------------------------------------------------------------------
// *! (C) Copyright International Business Machines Corp. 2014
// *! All Rights Reserved -- Property of IBM
// *! *** IBM Confidential ***
//-----------------------------------------------------------------------------

/// \file std_init.c
/// \brief PK initialization for a standard PPE.
///
/// The entry points in this routine are used during initialization.  This
/// code space can be deallocated and reassigned after application
/// initialization if required.

#include "pk.h"

/// Standard PPE environment initial setup.
///
/// This is setup common to all standard PPE Macro applications.  This setup takes place
/// during boot, before main() is called.

void
__hwmacro_setup(void)
{
    //mask all interrupts
    out64(STD_LCL_EIMR_OR, 0xffffffffffffffffull);

    //Set all interrupts to active low, level sensitive by default
    out64(STD_LCL_EIPR_CLR, 0xffffffffffffffffull);
    out64(STD_LCL_EITR_CLR, 0xffffffffffffffffull);

    //set up the configured type
    out64(STD_LCL_EITR_OR, g_ext_irqs_type);

    //set up the configured polarity
    out64(STD_LCL_EIPR_OR, g_ext_irqs_polarity);

    //clear the status of all active-high interrupts (has no affect on
    //level sensitive interrupts)
    out64(STD_LCL_EISR_CLR, g_ext_irqs_polarity);

    //clear the status of all active-low interrupts (has no affect on
    //level sensitive interrupts)
    out64(STD_LCL_EISR_OR, ~g_ext_irqs_polarity);

    //unmask the interrupts that are to be enabled by default
    out64(STD_LCL_EIMR_CLR, g_ext_irqs_enable);

    //wait for the last operation to complete
    sync();
}
