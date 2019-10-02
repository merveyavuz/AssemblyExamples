	AREA Program, CODE, READONLY
	ENTRY
		
	LDR r1,=dizi	;dizi baslangici
	
	MOV r2,#0		;index numarasi
	MOV r0,#13		;aranan sayi
	MOV r4,#4		;offset ilerlemesi
	
	
dongu
	LDR r3,[r1,r4]		;eleman 
	ADD r4,r4,#4		;offset degeri arttir
	CMP r0,r3	        ;esitligi kontrol et
	BEQ devam			
	
	ADD r6,r6,#1   		;dizide tek tek dizide gez
	CMP r6,#26			;dizinin sinirlari icerisinde mi
	BNE dongu			;esit degil ise dongu
	B devam 			;esit ise devam
devam
	MOV r2,r6			;r2ye aranan sayinin indeksini ata
	ADD r2,r2,#2		;eksikleri ekle
	B exit              ;exite git


dizi DCD 1,2,3,4,5
	 DCD 1,2,-4,-6,8
	 DCD -1,2,13,4,5
     DCD 1,2,4,6,8
	 DCD -1,-2,1,-4,5
exit b exit
	END