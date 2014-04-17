<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
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
        <block symbolname="instruction_MEM" name="XLXI_1">
            <blockpin name="clk" />
            <blockpin name="index(31:0)" />
            <blockpin name="instruction(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="index_in(31:0)" />
            <blockpin name="index_out(31:0)" />
            <blockpin name="rst" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="1600" name="XLXI_1" orien="R0">
        </instance>
        <instance x="144" y="1552" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>