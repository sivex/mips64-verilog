/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001026855743_1733832700_init();
    work_m_00000000003771735293_1351276808_init();
    work_m_00000000002388649783_1407949827_init();
    work_m_00000000000380920203_0345568499_init();
    work_m_00000000004081077157_3426399759_init();
    work_m_00000000002221950135_0968877033_init();
    work_m_00000000003715404406_2207681426_init();
    work_m_00000000001532608577_0833183191_init();
    work_m_00000000000380920203_3553092555_init();
    work_m_00000000000697265071_3148384703_init();
    work_m_00000000001276349993_0886308060_init();
    work_m_00000000000309940665_1260470467_init();
    work_m_00000000001801593304_4029375621_init();
    work_m_00000000003752043796_3823007873_init();
    work_m_00000000002925976072_2230950360_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000002925976072_2230950360");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
