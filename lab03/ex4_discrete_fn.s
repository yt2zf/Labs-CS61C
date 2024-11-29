.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (read the lab spec for more information).
# The return value should be stored in a0
f:
    # Your code here
    addi t0 a0 3 # t0 = index
    mv t1 a1     # t1 = address of output array
    slli t2 t0 2 # index * 4 -> address offset
    add t2 t1 t2
    lw a0 0(t2)
    
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
