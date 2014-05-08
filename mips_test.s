# Required Operations:
# - add  _x_
# - addi _x_
# - beq  ___
# - bne  _x_
# - j    ___
# - lw   _x_
# - sw   _x_

# 'Compiled' code is in `MIPS_32/instructions.txt`

# Code goes here
.text
    addi $s0, $zero, 1
  # addi  rt,    rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 00000 10000 0000000000000001
  #         ADDI   0     16    1
  #         opcode rs    rt    immediate

    addi $s1, $zero, 2
  # addi  rt,    rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 00000 10001 0000000000000010
  #         ADDI   0     17    2
  #         opcode rs    rt    immediate

    add  $s2, $s0, $s1
  # add   rd,  rs,  rt
  # rd <- rs + rt
  # BINARY: 000000 10000 10001 10010 00000 100000
  #         SPEC   16    17    18    0     ADD
  #         opcode rs    rt    rd    shamt funct

    sw   $s2, 0(0)
  # sw    rt, offset(base)
  # memory[base + offset] <- rt
  # BINARY: 101011 00000 10010 0000000000000000
  #         SW     0     18    0
  #         opcode base  rt    offset

    add  $s3, $zero, $zero
  # add   rd,    rs,    rt
  # rd <- rs + rt
  # BINARY: 000000 00000 00000 10011 00000 100000
  #         SPEC   0     0     19    0     ADD
  #         opcode rs    rt    rd    shamt funct

    lw   $s4, 0(0)
  # lw    rt, offset(base)
  # rt <- memory[base + offset]
  # BINARY: 100011 00000 10100 0000000000000000
  #         LW     0     20    0
  #         opcode base  rt    offset

# -----------------------------------------------------------------------------
#   instructionsTest.txt ends here
# -----------------------------------------------------------------------------

    bne  $s3, $s4, jumpA
  # bne   rs,  rt, offset
  # if rs != rt then branch
  # BINARY: 000101 10011 10100 0000000000000100
  #         BNE    19    20    +4
  #         opcode rs    rt    offset

    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

jumpA:


