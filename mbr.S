SECTION MBR vstart=0x7c00
	mov ax,cx
	mov ds,ax
	mov es,ax
	mov ss,ax
	mov fs,ax
	mov sp,0x7c00
	mov ax,0xb800 ;显存初始地址(x86)
	mov gs,ax

	mov ax, 0x600
	mov bx, 0x7c00
	mov cx, 0
	mov dx, 0x184f

	int 0x10

	;输出字符串 

	mov ax, message
	mov bp, ax

	mov dx, 0x0600

	mov cx, 160
	mov ax, 0x1301

	mov bx,0x2

	int 0x10

	mov byte [gs:0x900],'A'
	mov byte [gs:0x901],0x24 ;1010 0100
	
	mov byte [gs:0x902],' '
 	mov byte [gs:0x903],0x24

	mov byte [gs:0x904],'S'
	mov byte [gs:0x905],0x24
	
	mov byte [gs:0x906],'I'
 	mov byte [gs:0x907],0x24
	
	mov byte [gs:0x908],'M'
	mov byte [gs:0x909],0x24
	
	mov byte [gs:0x90a],'P'
 	mov byte [gs:0x90b],0x24

 	mov byte [gs:0x90c],'L'
	mov byte [gs:0x90d],0x24
	
	mov byte [gs:0x90e],'E'
 	mov byte [gs:0x90f],0x24
	
	mov byte [gs:0x910],' '
	mov byte [gs:0x911],0x24
	
	mov byte [gs:0x912],'O'
 	mov byte [gs:0x913],0x24

 	mov byte [gs:0x914],'S'
 	mov byte [gs:0x915],0x24

	jmp $

	message db "  2018 software project management course project of School of software,                                     Sichuan University"
	times 510-($-$$) db 0
	db 0x55,0xaa



