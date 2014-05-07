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
static const char *ng0 = "Cycle = %d,\t Instruction = %b,\t ALU_a = %d,\t ALU_b =%d,\t Data_out =%d,\t Data_mem =%d";
static const char *ng1 = "C:/Users/Paul/Documents/GitHub/mips64-verilog/MIPS_32/topTest.v";
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {0, 0};

void Monitor_56_2(char *);
void Monitor_56_2(char *);


static void Monitor_56_2_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    t4 = (t0 + 1528U);
    t8 = *((char **)t4);
    t4 = (t0 + 1048U);
    t9 = *((char **)t4);
    xsi_vlogfile_write(1, 0, 3, ng0, 7, t0, (char)118, t3, 8, (char)118, t5, 32, (char)118, t6, 32, (char)118, t7, 32, (char)118, t8, 32, (char)118, t9, 32);

LAB1:    return;
}

static void Always_45_0(char *t0)
{
    char t3[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng1);

LAB4:    xsi_set_current_line(46, ng1);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng1);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2088);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    xsi_set_current_line(48, ng1);
    t2 = (t0 + 2088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t3, 0, 8);
    t7 = (t5 + 4);
    t13 = (t6 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t16 = (t11 ^ t12);
    t17 = (t10 | t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t13);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB15;

LAB12:    if (t20 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t3) = 1;

LAB15:    t15 = (t3 + 4);
    t23 = *((unsigned int *)t15);
    t25 = (~(t23));
    t26 = *((unsigned int *)t3);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB16;

LAB17:
LAB18:    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

LAB14:    t14 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(48, ng1);

LAB19:    xsi_set_current_line(49, ng1);
    t24 = (t0 + 2408);
    t29 = (t24 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng3)));
    memset(t32, 0, 8);
    xsi_vlog_unsigned_add(t32, 32, t30, 8, t31, 32);
    t33 = (t0 + 2408);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 8);
    goto LAB18;

}

static void Always_55_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng1);
    t2 = (t0 + 4392);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng1);

LAB5:    xsi_set_current_line(56, ng1);
    Monitor_56_2(t0);
    goto LAB2;

}

static void Initial_60_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng1);

LAB4:    xsi_set_current_line(62, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(65, ng1);
    t2 = (t0 + 3632);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}

void Monitor_56_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3880);
    t2 = (t0 + 4408);
    xsi_vlogfile_monitor((void *)Monitor_56_2_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000002925976072_2230950360_init()
{
	static char *pe[] = {(void *)Always_45_0,(void *)Always_55_1,(void *)Initial_60_3,(void *)Monitor_56_2};
	xsi_register_didat("work_m_00000000002925976072_2230950360", "isim/topTest_isim_beh.exe.sim/work/m_00000000002925976072_2230950360.didat");
	xsi_register_executes(pe);
}
