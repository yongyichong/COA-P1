INCLUDE Irvine32.inc

;Chong Yong Yi

.data
LIST DWORD 70019,9003,3001,4,6,1

.code

main PROC

	mov esi, OFFSET LIST
	mov ecx, LENGTHOF LIST

L1: mov eax,dword ptr [esi] ;get the values stored in address of esi
	call WriteInt           ;display values stored in eax
	call Crlf				;enter new line
	add esi,type LIST		;type LIST return 4 and add into esi
	loop L1

	exit
main ENDP
END main
