.block 0
    ldy 8
    lds
    mdt
    mvax
    ldy 0
    lds
    add
    sts

    ldy 9
    lds
    mdt
    mvax
    ldy 1
    lds
    add
    sts

    ldy 10
    lds
    mdt
    mvax
    ldy 2
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

