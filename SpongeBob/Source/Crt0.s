@********************************************************************
@*          crt0.s                                                  *
@*            Start Up Routine (for GAS)                            *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
    .INCLUDE    "AgbDefine.s"
    .INCLUDE    "AgbMemoryMap.s"
    .INCLUDE    "AgbMacro.s"
    .TEXT

    .GLOBAL     _start
_start:
    .INCLUDE    "Rom_Header.s"

@--------------------------------------------------------------------
@-                          Reset                                   -
@--------------------------------------------------------------------
    .EXTERN     AgbMain
    .GLOBAL     start_vector
    .CODE 32
start_vector:
        mov     r0, #PSR_IRQ_MODE       @ Switch to IRQ Mode
        msr     cpsr, r0
        ldr     sp, sp_irq              @ Set SP_irq
        mov     r0, #PSR_SYS_MODE       @ Switch to System Mode
        msr     cpsr, r0
        ldr     sp, sp_usr              @ Set SP_usr
        ldr     r1, =INTR_VECTOR_BUF    @ Set Interrupt Address
        adr     r0, intr_main
        str     r0, [r1]
        ldr     r1, =AgbMain            @ Start & Switch to 16bit Code
        mov     lr, pc
        bx      r1
        b       start_vector            @ Reset

    .ALIGN
sp_usr: .word   WRAM_END - 0x100
sp_irq: .word   WRAM_END - 0x60


@--------------------------------------------------------------------
@-       Interrupt Branch Process (Drawing from table) 32Bit 23-61c -
@--------------------------------------------------------------------
    .EXTERN     IntrTable
    .GLOBAL     intr_main
    .ALIGN
    .CODE 32
intr_main:
        mov     r3, #REG_BASE           @ IE/IF Check
        add     r3, r3, #OFFSET_REG_IE  @ r3: REG_IE
        ldr     r2, [r3]
        and     r1, r2, r2, lsr #16     @ r1: IE & IF
        mov     r2, #0
        ands    r0, r1, #V_BLANK_INTR_FLAG   @ V-Blank Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #H_BLANK_INTR_FLAG   @ H-Blank Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #V_COUNT_INTR_FLAG   @ V-Blank Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #TIMER0_INTR_FLAG    @ Timer 0 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #TIMER1_INTR_FLAG    @ Timer 1 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #TIMER2_INTR_FLAG    @ Timer 2 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #TIMER3_INTR_FLAG    @ Timer 3 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #SIO_INTR_FLAG       @ Serial Communication Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #DMA0_INTR_FLAG      @ DMA0 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #DMA1_INTR_FLAG      @ DMA1 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #DMA2_INTR_FLAG      @ DMA2 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #DMA3_INTR_FLAG      @ DMA3 Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #KEY_INTR_FLAG       @ Key Interrupt
        bne     jump_intr
        add     r2, r2, #4
        ands    r0, r1, #CASSETTE_INTR_FLAG  @ Cassette Interrupt
jump_intr:
        strh    r0, [r3, #2]            @ IF Clear        11c
        ldr     r1, =IntrTable          @ Jump to user IRQ process
        add     r1, r1, r2
        ldr     r0, [r1]
        bx      r0


@   .ORG    0x200


    .END

