.import constants.asm

.const OBJECT_ITEM_Z OBJECT_DATA0
.const OBJECT_TIME OBJECT_DATA1

.const ROTATION_RATE 90 # degrees/s
.const OSCILLATION_RATE_SCALE 2 # scales rotation value used for height
.const OSCILLATION_SCALE 0.25 # scales oscillation height

.block 0
        ldy OBJECT_TIME
        lds
        ldy OBJECT_ROTATION
        sts
        ldx OSCILLATION_RATE_SCALE
        mul
        sin
        ldx OSCILLATION_SCALE
        mul
        mvax
        ldy OBJECT_ITEM_Z
        lds
        add
        ldy OBJECT_Z
        sts

        lda ROTATION_RATE
        mdt
        mvax
        ldy OBJECT_TIME
        lds
        add
        sts
        end
.endblock