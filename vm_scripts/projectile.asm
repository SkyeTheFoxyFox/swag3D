.import constants.asm

.const OBJECT_LIFE OBJECT_DATA0
.const OBJECT_DX OBJECT_DATA1
.const OBJECT_DY OBJECT_DATA2
.const OBJECT_DZ OBJECT_DATA3

.const GRAVITY -9.8
.const BOUNCE_MULT -0.95
.const FRICTION_MULT 0.90
.const SIZE_MULT 0.95

.block 0
    lda 5
    lht

    ldy OBJECT_DX # load dx
    lds
    mdt
    mvax
    ldy OBJECT_X # sub x by dx
    lds
    add
    sts

    ldy OBJECT_DY # load dy
    lds
    mdt
    mvax
    ldy OBJECT_Y # sub y by dy
    lds
    add
    sts

    lda GRAVITY # get gravity
    mdt
    mvax 

    ldy OBJECT_DZ # load dz
    lds

    sub # sub dz by gravity
    sts

    mdt
    mvax
    ldy OBJECT_Z # sub z by dz
    lds
    add
    sts

    ldy OBJECT_Y # load y
    lds
    mvax
    ldy OBJECT_X # load x
    lds
    trn # get terrain at X,Y
    mvax
    ldy OBJECT_Z # load z
    lds
    jlt AboveTerrain

    mvxa # store terrain height to z
    sts

    ldy OBJECT_DX # load DX
    lds
    ldx FRICTION_MULT
    mul
    sts

    ldy OBJECT_DY # load DY
    lds
    ldx FRICTION_MULT
    mul
    sts

    ldy OBJECT_DZ # load DZ
    lda 0 # write 0
    sts

    ldy OBJECT_SIZE # load DZ
    lds
    ldx SIZE_MULT
    mul
    sts

    ldx 0.01
    jgt AboveTerrain # check if dead
    die
    end

AboveTerrain:
    

    #lda 1
    #mdt
    #mvax
    #ldy OBJECT_LIFE #load life
    #lds
    #sub # sub 1
    #ldx 0
    #jgt NotDead # check if dead
    #die
    #end

NotDead:
    sts
    end
.endblock

