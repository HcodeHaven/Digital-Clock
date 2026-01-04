INCLUDE Irvine32.inc

GetLocalTime PROTO, lpSystemTime:PTR SYSTEMTIME

SYSTEMTIME STRUCT
    wYear       WORD ?
    wMonth      WORD ?
    wDayOfWeek  WORD ?
    wDay        WORD ?
    wHour       WORD ?
    wMinute     WORD ?
    wSecond     WORD ?
    wMilliseconds WORD ?
SYSTEMTIME ENDS

.data
sysTime SYSTEMTIME <>
timeStr BYTE "00:00:00",0
clocktitle BYTE "DIGITAL_CLOCK",0
prevSecond WORD 0
colors BYTE 1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14, 15
colorCount BYTE 13

.code
main PROC
    call ClrScr
    
    mov dh, 5
    mov dl, 32
    call GotoXY
    lea edx, clocktitle
    call WriteString
    
ClockLoop:
    lea eax, sysTime
    invoke GetLocalTime, eax
    
    mov ax, sysTime.wSecond
    cmp ax, prevSecond
    je CheckKey
    
    mov prevSecond, ax
    
    mov eax, 12
    call RandomRange
    movzx eax, al
    mov al, colors[eax]
    call SetTextColor

    mov ax, sysTime.wHour
    mov cl, 10
    div cl
    add al, '0'
    add ah, '0'
    mov [timeStr], al
    mov [timeStr+1], ah
    
    mov ax, sysTime.wMinute
    div cl
    add al, '0'
    add ah, '0'
    mov [timeStr+3], al
    mov [timeStr+4], ah
    
    mov ax, sysTime.wSecond
    div cl
    add al, '0'
    add ah, '0'
    mov [timeStr+6], al
    mov [timeStr+7], ah
    
    mov dh, 10
    mov dl, 35
    call GotoXY
    lea edx, timeStr
    call WriteString
    
CheckKey:
    call ReadKey
    cmp al, 27
    jne ClockLoop
    
    invoke ExitProcess, 0
main ENDP

END main