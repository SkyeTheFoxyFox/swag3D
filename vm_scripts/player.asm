.import constants.asm

.block 0
    ldy G_PLAYER_X
    ldg
    ldy OBJECT_X
    sts

    ldy G_PLAYER_Y
    ldg
    ldy OBJECT_Y
    sts

    ldy G_PLAYER_Z
    ldg
    ldy OBJECT_Z
    sts

    lda 8
    lht
    
    end
.endblock