# Required Operations:
# - add  _x_
# - addi _x_
# - beq  _x_
# - bne  _x_
# - j    _x_
# - lw   _x_
# - sw   _x_

# 'Compiled' code is in `MIPS_32/instructionsTest.txt`

# Code goes here
.text
    # 5
    addi $s0, $zero, 1
  # addi  rt,    rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 00000 10000 0000000000000001
  #         ADDI   0     16    1
  #         opcode rs    rt    immediate

    # 6
    addi $s1, $zero, 2
  # addi  rt,    rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 00000 10001 0000000000000010
  #         ADDI   0     17    2
  #         opcode rs    rt    immediate

    # 7
    add  $s2, $s0, $s1
  # add   rd,  rs,  rt
  # rd <- rs + rt
  # BINARY: 000000 10000 10001 10010 00000 100000
  #         SPEC   16    17    18    0     ADD
  #         opcode rs    rt    rd    shamt funct

    # 8
    sw   $s2, 0(0)
  # sw    rt, offset(base)
  # memory[base + offset] <- rt
  # BINARY: 101011 00000 10010 0000000000000000
  #         SW     0     18    0
  #         opcode base  rt    offset

    # 9
    add  $s3, $zero, $zero
  # add   rd,    rs,    rt
  # rd <- rs + rt
  # BINARY: 000000 00000 00000 10011 00000 100000
  #         SPEC   0     0     19    0     ADD
  #         opcode rs    rt    rd    shamt funct

    # 10
    lw   $s4, 0(0)
  # lw    rt, offset(base)
  # rt <- memory[base + offset]
  # BINARY: 100011 00000 10100 0000000000000000
  #         LW     0     20    0
  #         opcode base  rt    offset

    # 11
    bne  $s4, $s3, jumpA
  # bne   rs,  rt, offset
  # if rs != rt then branch
  # BINARY: 000101 10100 10011 0000000000000001
  #         BNE    20    19    +1
  #         opcode rs    rt    offset

    # 12
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

  jumpA:
    # 13
    beq  $s2, $s4, jumpB
  # beq   rs,  rt, offset
  # if rs == rt then branch
  # BINARY: 000100 10010 10100 0000000000000010
  #         BEQ    18    20    +2

    # 14
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

    # 15
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

  jumpB:
    # 16
    j    jumpC
  # j    instr_index
  # BINARY: 000010 00000000000000000000010101
  #         J      21
  #         opcode instr_index

    # 17
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

    # 18
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

    # 19
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

    # 20
    addi $s3, $s3, 1
  # addi  rt,  rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 10011 10011 0000000000000001
  #         ADDI   19    19    1
  #         opcode rs    rt    immediate

  jumpC:
    # 21
    addi $s5, $zero, 32
  # addi  rt,    rs, immediate
  # rt <- rs + immediate
  # BINARY: 001000 00000 10101 0000000000100000
  #         ADDI   0     21
  #         opcode rs    rt    immediate

    halt
