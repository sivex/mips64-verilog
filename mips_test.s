# Required Operations:
# - add
# - addi
# - beq
# - bne
# - jmp
# - lw
# - sw

# Code goes here
.text
  # put 1 in $s0
  addi $s0, $zero, 1
  # BINARY: 001000 10000 00000 0000000000000001
  #         opcode rt    rs    immediate

  # put 2 in $s1
  addi $s1, $zero, 2
  # BINARY: 001000 10001 00000 0000000000000010
  #         opcode rt    rs    immediate

  # put $s0 + $s1 (1 + 2 = 3) in $s2
  add  $s2, $s0, $s1
  # BINARY: 000000 10010 10000 10001 00000 100000
  #         opcode rt    rs    rd    shamt funct

  # store $s2 (3) in memory location
  sw, $s2, 0(0)
  # BINARY: 101011 00000 10010 0000000000000000
  #         opcode base  rt    offset
