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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/skrim/Documents/GitHub/mips64-verilog/MIPS_32/data_MEM.v";



static void Always_28_0(char *t0)
{
    char t4[8];
    char t28[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    int t39;
    char *t40;
    unsigned int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;

LAB0:    t1 = (t0 + 3440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3760);
    *((int *)t2) = 1;
    t3 = (t0 + 3472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t5 = (t0 + 1800U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(30, ng0);

LAB13:    xsi_set_current_line(33, ng0);
    t19 = (t0 + 1640U);
    t20 = *((char **)t19);
    t19 = (t20 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (~(t21));
    t23 = *((unsigned int *)t20);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(38, ng0);

LAB20:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2520);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2520);
    t12 = (t6 + 72U);
    t13 = *((char **)t12);
    t19 = (t0 + 2520);
    t20 = (t19 + 64U);
    t26 = *((char **)t20);
    t27 = (t0 + 1320U);
    t30 = *((char **)t27);
    xsi_vlog_generic_get_array_select_value(t4, 32, t5, t13, t26, 2, 1, t30, 32, 2);
    t27 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t27, t4, 0, 0, 32, 0LL);

LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(33, ng0);

LAB17:    xsi_set_current_line(34, ng0);
    t26 = (t0 + 1480U);
    t27 = *((char **)t26);
    t26 = (t0 + 2520);
    t30 = (t0 + 2520);
    t31 = (t30 + 72U);
    t32 = *((char **)t31);
    t33 = (t0 + 2520);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 1320U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t28, t29, t32, t35, 2, 1, t37, 32, 2);
    t36 = (t28 + 4);
    t38 = *((unsigned int *)t36);
    t39 = (!(t38));
    t40 = (t29 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB16;

LAB18:    t44 = *((unsigned int *)t28);
    t45 = *((unsigned int *)t29);
    t46 = (t44 - t45);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t26, t27, 0, *((unsigned int *)t29), t47, 0LL);
    goto LAB19;

}


extern void work_m_00000000001801593304_4029375621_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000001801593304_4029375621", "isim/topTest_isim_beh.exe.sim/work/m_00000000001801593304_4029375621.didat");
	xsi_register_executes(pe);
}
