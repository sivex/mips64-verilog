<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_10(4:0)" />
        <signal name="Instruction(31:0)" />
        <signal name="Instruction(25:21)" />
        <signal name="Instruction(20:16)" />
        <signal name="Instruction(15:11)" />
        <signal name="Instruction(15:0)" />
        <signal name="readData1(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="XLXN_30(31:0)" />
        <signal name="XLXN_31(31:0)" />
        <signal name="XLXN_32(31:0)" />
        <signal name="XLXN_42(31:0)" />
        <signal name="XLXN_22(31:0)" />
        <signal name="XLXN_43(3:0)" />
        <signal name="XLXN_44(4:0)" />
        <signal name="XLXN_45(31:0)" />
        <signal name="XLXN_51(31:0)" />
        <signal name="XLXN_52(31:0)" />
        <signal name="XLXN_62(3:0)" />
        <signal name="XLXN_63(31:0)" />
        <signal name="XLXN_65(31:0)" />
        <signal name="XLXN_67(31:0)" />
        <signal name="XLXN_68(5:0)" />
        <signal name="Instruction(5:0)" />
        <signal name="XLXN_70(31:0)" />
        <signal name="XLXN_71(31:0)" />
        <signal name="XLXN_72(1:0)" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <blockdef name="instruction_MEM">
            <timestamp>2014-4-17T21:39:42</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2014-4-17T20:58:11</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="320" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="registers">
            <timestamp>2014-5-1T20:9:41</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="mux_5bit">
            <timestamp>2014-5-1T20:12:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="sign_Extend">
            <timestamp>2014-5-1T20:30:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux_32bit">
            <timestamp>2014-5-1T20:34:33</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2014-5-1T20:34:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="data_MEM">
            <timestamp>2014-5-1T20:54:14</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-364" height="24" />
            <line x2="544" y1="-352" y2="-352" x1="480" />
            <rect width="416" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="ALU_Control">
            <timestamp>2014-5-1T20:56:20</timestamp>
            <rect width="336" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
        </blockdef>
        <blockdef name="control_unit">
            <timestamp>2014-5-1T21:4:36</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="instruction_MEM" name="XLXI_1">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_1(31:0)" name="index(31:0)" />
            <blockpin signalname="Instruction(31:0)" name="instruction(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="index_in(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="index_out(31:0)" />
            <blockpin name="rst" />
        </block>
        <block symbolname="registers" name="XLXI_3">
            <blockpin name="regWrite" />
            <blockpin name="clk" />
            <blockpin signalname="Instruction(25:21)" name="readReg1(25:21)" />
            <blockpin signalname="Instruction(20:16)" name="readReg2(20:16)" />
            <blockpin signalname="XLXN_10(4:0)" name="writeReg(4:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="writeData(31:0)" />
            <blockpin signalname="readData1(31:0)" name="readData1(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="readData2(31:0)" />
        </block>
        <block symbolname="mux_5bit" name="XLXI_4">
            <blockpin name="ctrl" />
            <blockpin signalname="Instruction(20:16)" name="a(4:0)" />
            <blockpin signalname="Instruction(15:11)" name="b(4:0)" />
            <blockpin signalname="XLXN_10(4:0)" name="out(4:0)" />
        </block>
        <block symbolname="sign_Extend" name="XLXI_5">
            <blockpin signalname="Instruction(15:0)" name="a(15:0)" />
            <blockpin signalname="XLXN_30(31:0)" name="out(31:0)" />
        </block>
        <block symbolname="mux_32bit" name="XLXI_6">
            <blockpin name="ctrl" />
            <blockpin signalname="XLXN_31(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_30(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_51(31:0)" name="out(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_7">
            <blockpin signalname="XLXN_43(3:0)" name="ALUOp(3:0)" />
            <blockpin signalname="readData1(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_51(31:0)" name="b(31:0)" />
            <blockpin name="zero" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_23(31:0)" name="out(31:0)" />
        </block>
        <block symbolname="data_MEM" name="XLXI_8">
            <blockpin signalname="XLXN_76" name="memWrite" />
            <blockpin signalname="XLXN_75" name="memRead" />
            <blockpin name="clk" />
            <blockpin signalname="XLXN_31(31:0)" name="writeData(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="readDataMem(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="address(31:0)" />
        </block>
        <block symbolname="mux_32bit" name="XLXI_9">
            <blockpin signalname="XLXN_74" name="ctrl" />
            <blockpin signalname="XLXN_22(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="out(31:0)" />
        </block>
        <block symbolname="ALU_Control" name="XLXI_10">
            <blockpin signalname="XLXN_72(1:0)" name="ALUOp(1:0)" />
            <blockpin signalname="Instruction(5:0)" name="function_field(5:0)" />
            <blockpin signalname="XLXN_43(3:0)" name="ALUCtrl(3:0)" />
        </block>
        <block symbolname="control_unit" name="XLXI_11">
            <blockpin name="clk" />
            <blockpin name="zero" />
            <blockpin name="inst(5:0)" />
            <blockpin name="ALUSrc" />
            <blockpin name="PCSrc" />
            <blockpin name="PCen" />
            <blockpin signalname="XLXN_76" name="MemWrite" />
            <blockpin signalname="XLXN_75" name="MemRead" />
            <blockpin signalname="XLXN_74" name="MemToReg" />
            <blockpin signalname="XLXN_72(1:0)" name="ALUOp(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(31:0)">
            <wire x2="736" y1="1168" y2="1168" x1="720" />
            <wire x2="736" y1="1168" y2="1536" x1="736" />
            <wire x2="848" y1="1536" y2="1536" x1="736" />
        </branch>
        <instance x="272" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_10(4:0)">
            <wire x2="1520" y1="1872" y2="1872" x1="1424" />
            <wire x2="1872" y1="1664" y2="1664" x1="1520" />
            <wire x2="1520" y1="1664" y2="1872" x1="1520" />
        </branch>
        <bustap x2="1568" y1="1536" y2="1536" x1="1472" />
        <branch name="Instruction(25:21)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1632" y="1536" type="branch" />
            <wire x2="1632" y1="1536" y2="1536" x1="1568" />
            <wire x2="1872" y1="1536" y2="1536" x1="1632" />
        </branch>
        <bustap x2="1568" y1="1600" y2="1600" x1="1472" />
        <branch name="Instruction(20:16)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1632" y="1600" type="branch" />
            <wire x2="1632" y1="1600" y2="1600" x1="1568" />
            <wire x2="1872" y1="1600" y2="1600" x1="1632" />
        </branch>
        <bustap x2="880" y1="1936" y2="1936" x1="784" />
        <branch name="Instruction(20:16)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="1936" type="branch" />
            <wire x2="912" y1="1936" y2="1936" x1="880" />
            <wire x2="1040" y1="1936" y2="1936" x1="912" />
        </branch>
        <bustap x2="880" y1="2000" y2="2000" x1="784" />
        <branch name="Instruction(15:11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="2000" type="branch" />
            <wire x2="912" y1="2000" y2="2000" x1="880" />
            <wire x2="1040" y1="2000" y2="2000" x1="912" />
        </branch>
        <instance x="1040" y="2032" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1040" y="2208" name="XLXI_5" orien="R0">
        </instance>
        <bustap x2="880" y1="2176" y2="2176" x1="784" />
        <branch name="Instruction(15:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="2176" type="branch" />
            <wire x2="928" y1="2176" y2="2176" x1="880" />
            <wire x2="1040" y1="2176" y2="2176" x1="928" />
        </branch>
        <instance x="2752" y="1760" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_42(31:0)">
            <wire x2="1872" y1="1728" y2="1728" x1="1568" />
            <wire x2="1568" y1="1728" y2="1856" x1="1568" />
            <wire x2="3344" y1="1856" y2="1856" x1="1568" />
            <wire x2="3344" y1="1856" y2="2144" x1="3344" />
            <wire x2="3344" y1="2144" y2="2144" x1="3328" />
        </branch>
        <instance x="2944" y="2304" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_22(31:0)">
            <wire x2="2784" y1="1984" y2="2208" x1="2784" />
            <wire x2="2944" y1="2208" y2="2208" x1="2784" />
            <wire x2="3312" y1="1984" y2="1984" x1="2784" />
            <wire x2="3312" y1="1408" y2="1408" x1="3296" />
            <wire x2="3312" y1="1408" y2="1984" x1="3312" />
        </branch>
        <instance x="1472" y="1120" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1872" y="1760" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_31(31:0)">
            <wire x2="2448" y1="1792" y2="1792" x1="1616" />
            <wire x2="1616" y1="1792" y2="2448" x1="1616" />
            <wire x2="1904" y1="2448" y2="2448" x1="1616" />
            <wire x2="2448" y1="1728" y2="1728" x1="2368" />
            <wire x2="2752" y1="1728" y2="1728" x1="2448" />
            <wire x2="2448" y1="1728" y2="1792" x1="2448" />
        </branch>
        <branch name="XLXN_30(31:0)">
            <wire x2="1440" y1="2176" y2="2176" x1="1424" />
            <wire x2="1440" y1="2176" y2="2512" x1="1440" />
            <wire x2="1904" y1="2512" y2="2512" x1="1440" />
        </branch>
        <instance x="1904" y="2544" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_23(31:0)">
            <wire x2="2416" y1="2160" y2="2160" x1="2288" />
            <wire x2="2416" y1="2160" y2="2208" x1="2416" />
            <wire x2="2608" y1="2208" y2="2208" x1="2416" />
            <wire x2="2608" y1="2208" y2="2272" x1="2608" />
            <wire x2="2944" y1="2272" y2="2272" x1="2608" />
            <wire x2="2752" y1="1792" y2="1792" x1="2608" />
            <wire x2="2608" y1="1792" y2="2208" x1="2608" />
        </branch>
        <branch name="readData1(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2448" y="1408" type="branch" />
            <wire x2="1664" y1="1920" y2="2096" x1="1664" />
            <wire x2="1904" y1="2096" y2="2096" x1="1664" />
            <wire x2="2512" y1="1920" y2="1920" x1="1664" />
            <wire x2="2448" y1="1408" y2="1408" x1="2368" />
            <wire x2="2512" y1="1408" y2="1408" x1="2448" />
            <wire x2="2512" y1="1408" y2="1920" x1="2512" />
        </branch>
        <branch name="XLXN_43(3:0)">
            <wire x2="1984" y1="1200" y2="1200" x1="1728" />
            <wire x2="1728" y1="1200" y2="2032" x1="1728" />
            <wire x2="1904" y1="2032" y2="2032" x1="1728" />
            <wire x2="1984" y1="1024" y2="1024" x1="1936" />
            <wire x2="1984" y1="1024" y2="1200" x1="1984" />
        </branch>
        <instance x="1904" y="2192" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_51(31:0)">
            <wire x2="1904" y1="2160" y2="2160" x1="1824" />
            <wire x2="1824" y1="2160" y2="2240" x1="1824" />
            <wire x2="2400" y1="2240" y2="2240" x1="1824" />
            <wire x2="2400" y1="2240" y2="2384" x1="2400" />
            <wire x2="2400" y1="2384" y2="2384" x1="2288" />
        </branch>
        <branch name="Instruction(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1392" y="1344" type="branch" />
            <wire x2="784" y1="1696" y2="1936" x1="784" />
            <wire x2="784" y1="1936" y2="2000" x1="784" />
            <wire x2="784" y1="2000" y2="2176" x1="784" />
            <wire x2="1472" y1="1696" y2="1696" x1="784" />
            <wire x2="1392" y1="1344" y2="1344" x1="1264" />
            <wire x2="1472" y1="1344" y2="1344" x1="1392" />
            <wire x2="1472" y1="1344" y2="1472" x1="1472" />
            <wire x2="1472" y1="1472" y2="1536" x1="1472" />
            <wire x2="1472" y1="1536" y2="1600" x1="1472" />
            <wire x2="1472" y1="1600" y2="1696" x1="1472" />
        </branch>
        <bustap x2="1568" y1="1472" y2="1472" x1="1472" />
        <branch name="Instruction(5:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1584" y="1472" type="branch" />
            <wire x2="1472" y1="1088" y2="1088" x1="1408" />
            <wire x2="1408" y1="1088" y2="1200" x1="1408" />
            <wire x2="1696" y1="1200" y2="1200" x1="1408" />
            <wire x2="1696" y1="1200" y2="1472" x1="1696" />
            <wire x2="1584" y1="1472" y2="1472" x1="1568" />
            <wire x2="1696" y1="1472" y2="1472" x1="1584" />
        </branch>
        <instance x="848" y="1568" name="XLXI_1" orien="R0">
        </instance>
        <instance x="880" y="912" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_72(1:0)">
            <wire x2="1360" y1="880" y2="880" x1="1264" />
            <wire x2="1360" y1="880" y2="1024" x1="1360" />
            <wire x2="1472" y1="1024" y2="1024" x1="1360" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="2560" y1="816" y2="816" x1="1264" />
            <wire x2="2560" y1="816" y2="2144" x1="2560" />
            <wire x2="2944" y1="2144" y2="2144" x1="2560" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="2608" y1="752" y2="752" x1="1264" />
            <wire x2="2608" y1="752" y2="1536" x1="2608" />
            <wire x2="2752" y1="1536" y2="1536" x1="2608" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="2656" y1="688" y2="688" x1="1264" />
            <wire x2="2656" y1="688" y2="1472" x1="2656" />
            <wire x2="2752" y1="1472" y2="1472" x1="2656" />
        </branch>
    </sheet>
</drawing>