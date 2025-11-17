.import constants.asm

.block 0
    ldy 8
    lds
    mdt
    mvax
    ldy OBJECT_X
    lds
    add
    sts

    ldy 9
    lds
    mdt
    mvax
    ldy OBJECT_Y
    lds
    add
    sts

    ldy 10
    lds
    mdt
    mvax
    ldy OBJECT_Z
    lds
    add
    sts

    lda 1
    mdt
    mvax
    ldy 7
    lds
    sub
    ldx 0
    jgt NotDead
    die
    end

NotDead:
    sts
    end

.endblock

