.const VAR 10

.block 0
    #another comment
    ldy 8 #a comment
    lds
    mvax
    ldy 0
    lds
    add
    sts

    ldy 9
    lds
    mvax
    ldy 1
    lds
    add
    sts

    ldy 10
    lds
    mvax
    ldy 2
    lds
    add
    sts

    ldy 7
    lds
    dec
    ldx 0
    jgt NotDead
    die
    end

NotDead:
    sts
    end

.endblock

.block 1
    Label:
.endblock

