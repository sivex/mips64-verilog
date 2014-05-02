<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Instruction(31:0)" />
        <signal name="Instruction(25:21)" />
        <signal name="Instruction(20:16)" />
        <signal name="Instruction(15:11)" />
        <signal name="Instruction(15:0)" />
        <signal name="readData1(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="XLXN_31(31:0)" />
        <signal name="XLXN_22(31:0)" />
        <signal name="XLXN_51(31:0)" />
        <signal name="Instruction(5:0)" />
        <signal name="MemToReg" />
        <signal name="MemRead" />
        <signal name="MemWrite" />
        <signal name="XLXN_81" />
        <signal name="Instruction(31:26)" />
        <signal name="XLXN_88(31:0)" />
        <signal name="XLXN_89(31:0)" />
        <signal name="XLXN_91(31:0)" />
        <signal name="XLXN_90(31:0)" />
        <signal name="XLXN_100(31:0)" />
        <signal name="XLXN_114" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_129" />
        <signal name="XLXN_134" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="XLXN_135(15:0)" />
        <signal name="XLXN_136(4:0)" />
        <signal name="XLXN_137(31:0)" />
        <signal name="XLXN_139(3:0)" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141(1:0)" />
        <signal name="XLXN_142" />
        <signal name="XLXN_143(31:0)" />
        <signal name="XLXN_144(31:0)" />
        <signal name="XLXN_146(31:0)" />
        <signal name="XLXN_147(31:0)" />
        <signal name="XLXN_149(31:0)" />
        <signal name="XLXN_150(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <blockdef name="instruction_MEM">
            <timestamp>2014-5-1T21:12:13</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2014-5-1T21:12:7</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="320" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="registers">
            <timestamp>2014-5-1T21:12:2</timestamp>
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
            <timestamp>2014-5-2T20:10:22</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="sign_Extend">
            <timestamp>2014-5-2T20:10:10</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="mux_32bit">
            <timestamp>2014-5-2T20:10:17</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2014-5-2T20:6:23</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
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
            <timestamp>2014-5-1T21:17:9</timestamp>
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
        <blockdef name="shifter">
            <timestamp>2014-5-2T20:17:6</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="add_One">
            <timestamp>2014-5-2T20:19:8</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="adder">
            <timestamp>2014-5-2T20:19:24</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="instruction_MEM" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_89(31:0)" name="index(31:0)" />
            <blockpin signalname="Instruction(31:0)" name="instruction(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_100(31:0)" name="index_in(31:0)" />
            <blockpin signalname="XLXN_89(31:0)" name="index_out(31:0)" />
            <blockpin signalname="rst" name="rst" />
        </block>
        <block symbolname="registers" name="XLXI_3">
            <blockpin name="regWrite" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Instruction(25:21)" name="readReg1(25:21)" />
            <blockpin signalname="Instruction(20:16)" name="readReg2(20:16)" />
            <blockpin signalname="XLXN_136(4:0)" name="writeReg(4:0)" />
            <blockpin signalname="XLXN_137(31:0)" name="writeData(31:0)" />
            <blockpin signalname="readData1(31:0)" name="readData1(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="readData2(31:0)" />
        </block>
        <block symbolname="mux_5bit" name="XLXI_4">
            <blockpin name="ctrl" />
            <blockpin signalname="Instruction(20:16)" name="a(4:0)" />
            <blockpin signalname="Instruction(15:11)" name="b(4:0)" />
            <blockpin signalname="XLXN_136(4:0)" name="outM(4:0)" />
        </block>
        <block symbolname="sign_Extend" name="XLXI_5">
            <blockpin signalname="Instruction(15:0)" name="a(15:0)" />
            <blockpin signalname="XLXN_88(31:0)" name="outE(31:0)" />
        </block>
        <block symbolname="mux_32bit" name="XLXI_6">
            <blockpin signalname="XLXN_81" name="ctrl" />
            <blockpin signalname="XLXN_31(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_88(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_51(31:0)" name="outM(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_7">
            <blockpin signalname="XLXN_139(3:0)" name="ALUOp(3:0)" />
            <blockpin signalname="readData1(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_51(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_129" name="zero" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_23(31:0)" name="outCalc(31:0)" />
        </block>
        <block symbolname="data_MEM" name="XLXI_8">
            <blockpin signalname="MemWrite" name="memWrite" />
            <blockpin signalname="MemRead" name="memRead" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_31(31:0)" name="writeData(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="readDataMem(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="address(31:0)" />
        </block>
        <block symbolname="mux_32bit" name="XLXI_9">
            <blockpin signalname="MemToReg" name="ctrl" />
            <blockpin signalname="XLXN_22(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_137(31:0)" name="outM(31:0)" />
        </block>
        <block symbolname="ALU_Control" name="XLXI_10">
            <blockpin signalname="XLXN_141(1:0)" name="ALUOp(1:0)" />
            <blockpin signalname="Instruction(5:0)" name="function_field(5:0)" />
            <blockpin signalname="XLXN_139(3:0)" name="ALUCtrl(3:0)" />
        </block>
        <block symbolname="control_unit" name="XLXI_11">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="zero" />
            <blockpin signalname="Instruction(31:26)" name="inst(5:0)" />
            <blockpin signalname="XLXN_81" name="ALUSrc" />
            <blockpin name="PCSrc" />
            <blockpin name="PCen" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="MemToReg" name="MemToReg" />
            <blockpin signalname="XLXN_141(1:0)" name="ALUOp(1:0)" />
        </block>
        <block symbolname="shifter" name="XLXI_12">
            <blockpin signalname="XLXN_88(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_91(31:0)" name="outS(31:0)" />
        </block>
        <block symbolname="add_One" name="XLXI_13">
            <blockpin signalname="XLXN_89(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_90(31:0)" name="outA(31:0)" />
        </block>
        <block symbolname="adder" name="XLXI_14">
            <blockpin signalname="XLXN_90(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_91(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_150(31:0)" name="outA(31:0)" />
        </block>
        <block symbolname="mux_32bit" name="XLXI_15">
            <blockpin signalname="XLXN_114" name="ctrl" />
            <blockpin signalname="XLXN_90(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_150(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_100(31:0)" name="outM(31:0)" />
        </block>
        <block symbolname="or2" name="XLXI_19">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="XLXN_117" name="I1" />
            <blockpin signalname="XLXN_114" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="XLXN_134" name="I0" />
            <blockpin signalname="XLXN_121" name="I1" />
            <blockpin signalname="XLXN_117" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="XLXN_129" name="I0" />
            <blockpin signalname="XLXN_120" name="I1" />
            <blockpin signalname="XLXN_118" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="XLXN_129" name="I" />
            <blockpin signalname="XLXN_134" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
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
        <bustap x2="880" y1="2176" y2="2176" x1="784" />
        <branch name="Instruction(15:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="2176" type="branch" />
            <wire x2="928" y1="2176" y2="2176" x1="880" />
            <wire x2="928" y1="2176" y2="2240" x1="928" />
            <wire x2="1040" y1="2240" y2="2240" x1="928" />
        </branch>
        <instance x="2752" y="1760" name="XLXI_8" orien="R0">
        </instance>
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
        <instance x="1904" y="2544" name="XLXI_6" orien="R0">
        </instance>
        <branch name="readData1(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2448" y="1408" type="branch" />
            <wire x2="1664" y1="1920" y2="2096" x1="1664" />
            <wire x2="1904" y1="2096" y2="2096" x1="1664" />
            <wire x2="2512" y1="1920" y2="1920" x1="1664" />
            <wire x2="2448" y1="1408" y2="1408" x1="2368" />
            <wire x2="2512" y1="1408" y2="1408" x1="2448" />
            <wire x2="2512" y1="1408" y2="1920" x1="2512" />
        </branch>
        <instance x="1904" y="2192" name="XLXI_7" orien="R0">
        </instance>
        <branch name="Instruction(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1328" y="1344" type="branch" />
            <wire x2="784" y1="1696" y2="1936" x1="784" />
            <wire x2="784" y1="1936" y2="2000" x1="784" />
            <wire x2="784" y1="2000" y2="2176" x1="784" />
            <wire x2="1472" y1="1696" y2="1696" x1="784" />
            <wire x2="1328" y1="1344" y2="1344" x1="1264" />
            <wire x2="1472" y1="1344" y2="1344" x1="1328" />
            <wire x2="1472" y1="1344" y2="1392" x1="1472" />
            <wire x2="1472" y1="1392" y2="1472" x1="1472" />
            <wire x2="1472" y1="1472" y2="1536" x1="1472" />
            <wire x2="1472" y1="1536" y2="1600" x1="1472" />
            <wire x2="1472" y1="1600" y2="1696" x1="1472" />
        </branch>
        <bustap x2="1568" y1="1472" y2="1472" x1="1472" />
        <branch name="Instruction(5:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1584" y="1472" type="branch" />
            <wire x2="1472" y1="1088" y2="1088" x1="1440" />
            <wire x2="1440" y1="1088" y2="1168" x1="1440" />
            <wire x2="1696" y1="1168" y2="1168" x1="1440" />
            <wire x2="1696" y1="1168" y2="1472" x1="1696" />
            <wire x2="1584" y1="1472" y2="1472" x1="1568" />
            <wire x2="1696" y1="1472" y2="1472" x1="1584" />
        </branch>
        <instance x="848" y="1568" name="XLXI_1" orien="R0">
        </instance>
        <branch name="MemWrite">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1872" y="560" type="branch" />
            <wire x2="1872" y1="560" y2="560" x1="1264" />
            <wire x2="2640" y1="560" y2="560" x1="1872" />
            <wire x2="2640" y1="560" y2="1472" x1="2640" />
            <wire x2="2752" y1="1472" y2="1472" x1="2640" />
        </branch>
        <instance x="880" y="784" name="XLXI_11" orien="R0">
        </instance>
        <branch name="MemRead">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1872" y="624" type="branch" />
            <wire x2="1872" y1="624" y2="624" x1="1264" />
            <wire x2="2608" y1="624" y2="624" x1="1872" />
            <wire x2="2608" y1="624" y2="1536" x1="2608" />
            <wire x2="2752" y1="1536" y2="1536" x1="2608" />
        </branch>
        <branch name="MemToReg">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="688" type="branch" />
            <wire x2="1856" y1="688" y2="688" x1="1264" />
            <wire x2="2576" y1="688" y2="688" x1="1856" />
            <wire x2="2576" y1="688" y2="1920" x1="2576" />
            <wire x2="2928" y1="1920" y2="1920" x1="2576" />
            <wire x2="2928" y1="1920" y2="2144" x1="2928" />
            <wire x2="2944" y1="2144" y2="2144" x1="2928" />
        </branch>
        <instance x="240" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_81">
            <wire x2="720" y1="1136" y2="2384" x1="720" />
            <wire x2="1904" y1="2384" y2="2384" x1="720" />
            <wire x2="1360" y1="1136" y2="1136" x1="720" />
            <wire x2="1360" y1="368" y2="368" x1="1264" />
            <wire x2="1360" y1="368" y2="1136" x1="1360" />
        </branch>
        <bustap x2="1568" y1="1392" y2="1392" x1="1472" />
        <branch name="Instruction(31:26)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1584" y="1392" type="branch" />
            <wire x2="880" y1="752" y2="752" x1="832" />
            <wire x2="832" y1="752" y2="1200" x1="832" />
            <wire x2="1664" y1="1200" y2="1200" x1="832" />
            <wire x2="1664" y1="1200" y2="1392" x1="1664" />
            <wire x2="1584" y1="1392" y2="1392" x1="1568" />
            <wire x2="1664" y1="1392" y2="1392" x1="1584" />
        </branch>
        <instance x="1536" y="304" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_89(31:0)">
            <wire x2="752" y1="1168" y2="1168" x1="688" />
            <wire x2="752" y1="1168" y2="1536" x1="752" />
            <wire x2="848" y1="1536" y2="1536" x1="752" />
            <wire x2="752" y1="208" y2="1168" x1="752" />
            <wire x2="1472" y1="208" y2="208" x1="752" />
            <wire x2="1472" y1="208" y2="272" x1="1472" />
            <wire x2="1536" y1="272" y2="272" x1="1472" />
        </branch>
        <branch name="XLXN_91(31:0)">
            <wire x2="2432" y1="480" y2="480" x1="2416" />
            <wire x2="2592" y1="336" y2="336" x1="2432" />
            <wire x2="2432" y1="336" y2="480" x1="2432" />
        </branch>
        <instance x="2256" y="864" name="XLXI_19" orien="R0" />
        <branch name="XLXN_120">
            <wire x2="2064" y1="816" y2="816" x1="1264" />
            <wire x2="2064" y1="816" y2="1072" x1="2064" />
            <wire x2="2208" y1="1072" y2="1072" x1="2064" />
        </branch>
        <branch name="XLXN_117">
            <wire x2="2256" y1="736" y2="736" x1="2192" />
            <wire x2="2192" y1="736" y2="880" x1="2192" />
            <wire x2="2416" y1="880" y2="880" x1="2192" />
            <wire x2="2416" y1="880" y2="960" x1="2416" />
            <wire x2="2416" y1="960" y2="960" x1="2384" />
        </branch>
        <instance x="2128" y="1056" name="XLXI_23" orien="R0" />
        <branch name="XLXN_118">
            <wire x2="2256" y1="800" y2="800" x1="2240" />
            <wire x2="2240" y1="800" y2="848" x1="2240" />
            <wire x2="2480" y1="848" y2="848" x1="2240" />
            <wire x2="2480" y1="848" y2="1104" x1="2480" />
            <wire x2="2480" y1="1104" y2="1104" x1="2464" />
        </branch>
        <instance x="2208" y="1200" name="XLXI_24" orien="R0" />
        <branch name="XLXN_129">
            <wire x2="2208" y1="1136" y2="1136" x1="2192" />
            <wire x2="2192" y1="1136" y2="1200" x1="2192" />
            <wire x2="2288" y1="1200" y2="1200" x1="2192" />
            <wire x2="2288" y1="1200" y2="1248" x1="2288" />
            <wire x2="2544" y1="1248" y2="1248" x1="2288" />
            <wire x2="2544" y1="1248" y2="2032" x1="2544" />
            <wire x2="2288" y1="1248" y2="1248" x1="2272" />
            <wire x2="2544" y1="2032" y2="2032" x1="2288" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="1312" y1="992" y2="992" x1="1264" />
            <wire x2="1504" y1="944" y2="944" x1="1312" />
            <wire x2="1312" y1="944" y2="992" x1="1312" />
            <wire x2="1504" y1="864" y2="944" x1="1504" />
            <wire x2="2016" y1="864" y2="864" x1="1504" />
            <wire x2="2016" y1="864" y2="928" x1="2016" />
            <wire x2="2128" y1="928" y2="928" x1="2016" />
        </branch>
        <instance x="2272" y="1216" name="XLXI_26" orien="R180" />
        <branch name="XLXN_134">
            <wire x2="2128" y1="992" y2="992" x1="2016" />
            <wire x2="2016" y1="992" y2="1248" x1="2016" />
            <wire x2="2048" y1="1248" y2="1248" x1="2016" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="848" y="368" type="branch" />
            <wire x2="848" y1="368" y2="368" x1="832" />
            <wire x2="880" y1="368" y2="368" x1="848" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="224" y="1168" type="branch" />
            <wire x2="224" y1="1168" y2="1168" x1="208" />
            <wire x2="240" y1="1168" y2="1168" x1="224" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="224" y="1360" type="branch" />
            <wire x2="224" y1="1360" y2="1360" x1="208" />
            <wire x2="240" y1="1360" y2="1360" x1="224" />
        </branch>
        <iomarker fontsize="28" x="208" y="1168" name="clk" orien="R180" />
        <iomarker fontsize="28" x="832" y="368" name="clk" orien="R180" />
        <iomarker fontsize="28" x="208" y="1360" name="rst" orien="R180" />
        <branch name="clk">
            <wire x2="848" y1="1472" y2="1472" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1472" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="2752" y1="1600" y2="1600" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1600" name="clk" orien="R180" />
        <branch name="XLXN_23(31:0)">
            <wire x2="2688" y1="2224" y2="2224" x1="2288" />
            <wire x2="2688" y1="2224" y2="2272" x1="2688" />
            <wire x2="2944" y1="2272" y2="2272" x1="2688" />
            <wire x2="2752" y1="1792" y2="1792" x1="2688" />
            <wire x2="2688" y1="1792" y2="2224" x1="2688" />
        </branch>
        <instance x="1040" y="2272" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_51(31:0)">
            <wire x2="1904" y1="2160" y2="2160" x1="1824" />
            <wire x2="1824" y1="2160" y2="2272" x1="1824" />
            <wire x2="2400" y1="2272" y2="2272" x1="1824" />
            <wire x2="2400" y1="2272" y2="2576" x1="2400" />
            <wire x2="2400" y1="2576" y2="2576" x1="2288" />
        </branch>
        <branch name="XLXN_136(4:0)">
            <wire x2="1520" y1="2064" y2="2064" x1="1424" />
            <wire x2="1520" y1="1664" y2="2064" x1="1520" />
            <wire x2="1872" y1="1664" y2="1664" x1="1520" />
        </branch>
        <branch name="XLXN_137(31:0)">
            <wire x2="1872" y1="1728" y2="1728" x1="1776" />
            <wire x2="1776" y1="1728" y2="1856" x1="1776" />
            <wire x2="3376" y1="1856" y2="1856" x1="1776" />
            <wire x2="3376" y1="1856" y2="2336" x1="3376" />
            <wire x2="3376" y1="2336" y2="2336" x1="3328" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1472" type="branch" />
            <wire x2="1856" y1="1472" y2="1472" x1="1840" />
            <wire x2="1872" y1="1472" y2="1472" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1472" name="clk" orien="R180" />
        <branch name="XLXN_139(3:0)">
            <wire x2="1728" y1="1168" y2="1504" x1="1728" />
            <wire x2="1744" y1="1504" y2="1504" x1="1728" />
            <wire x2="1744" y1="1504" y2="2032" x1="1744" />
            <wire x2="1904" y1="2032" y2="2032" x1="1744" />
            <wire x2="1984" y1="1168" y2="1168" x1="1728" />
            <wire x2="1984" y1="1024" y2="1024" x1="1936" />
            <wire x2="1984" y1="1024" y2="1168" x1="1984" />
        </branch>
        <branch name="XLXN_141(1:0)">
            <wire x2="1440" y1="752" y2="752" x1="1264" />
            <wire x2="1440" y1="752" y2="1024" x1="1440" />
            <wire x2="1472" y1="1024" y2="1024" x1="1440" />
        </branch>
        <branch name="XLXN_88(31:0)">
            <wire x2="2032" y1="416" y2="416" x1="1408" />
            <wire x2="1408" y1="416" y2="1760" x1="1408" />
            <wire x2="1472" y1="1760" y2="1760" x1="1408" />
            <wire x2="1472" y1="1760" y2="2304" x1="1472" />
            <wire x2="1472" y1="2304" y2="2512" x1="1472" />
            <wire x2="1904" y1="2512" y2="2512" x1="1472" />
            <wire x2="1472" y1="2304" y2="2304" x1="1424" />
        </branch>
        <instance x="2032" y="448" name="XLXI_12" orien="R0">
        </instance>
        <instance x="2592" y="368" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_100(31:0)">
            <wire x2="96" y1="128" y2="1296" x1="96" />
            <wire x2="240" y1="1296" y2="1296" x1="96" />
            <wire x2="3312" y1="128" y2="128" x1="96" />
            <wire x2="3312" y1="128" y2="752" x1="3312" />
            <wire x2="3312" y1="752" y2="800" x1="3312" />
            <wire x2="3312" y1="800" y2="800" x1="3232" />
        </branch>
        <branch name="XLXN_150(31:0)">
            <wire x2="3040" y1="480" y2="480" x1="2720" />
            <wire x2="2720" y1="480" y2="736" x1="2720" />
            <wire x2="2848" y1="736" y2="736" x1="2720" />
            <wire x2="3040" y1="400" y2="400" x1="2976" />
            <wire x2="3040" y1="400" y2="480" x1="3040" />
        </branch>
        <instance x="2848" y="768" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_114">
            <wire x2="2768" y1="768" y2="768" x1="2512" />
            <wire x2="2848" y1="608" y2="608" x1="2768" />
            <wire x2="2768" y1="608" y2="768" x1="2768" />
        </branch>
        <branch name="XLXN_90(31:0)">
            <wire x2="1968" y1="336" y2="336" x1="1920" />
            <wire x2="1968" y1="272" y2="336" x1="1968" />
            <wire x2="2528" y1="272" y2="272" x1="1968" />
            <wire x2="2592" y1="272" y2="272" x1="2528" />
            <wire x2="2528" y1="272" y2="480" x1="2528" />
            <wire x2="2672" y1="480" y2="480" x1="2528" />
            <wire x2="2672" y1="480" y2="672" x1="2672" />
            <wire x2="2848" y1="672" y2="672" x1="2672" />
        </branch>
    </sheet>
</drawing>