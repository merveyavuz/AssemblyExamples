	AREA Program, CODE, READONLY
	ENTRY

	LDR R1,=dizi 		;dizi baslangici atandi
	MOV R0,#0 		;negatif sayaci
	MOV R2,#25 		;dizinin boyutu
	
dongu
	LDR R3,[R1],#4 		;dizi elemanlarinda ilerle
	CMP R3,#0 		;sayiyi 0la karsilastir
	BGE devam 		;sayi 0'a buyuk veya esitse devam et
	ADD R0,R0,#1 		;sayi kucukse sayaci 1 artir
devam
	SUB R2,R2,#1 		;dizi boyutunda ilerlendigi icin bir azaldi
	CMP R2,#0 		;dizi boyutunu 0la karsilatir
	BLS EXIT 		; eger 0dan kucuk veya 0a esitse dizi bitmistir kodu sonlardir
	B dongu 		;eger buyukse donguye devam et
EXIT B EXIT 			;kod bitimini belirtir

dizi DCD 1,2,3,4,5 
	 DCD 1,2,-4,-6,8
	 DCD -1,2,3,4,5
     DCD 1,2,4,6,8
	 DCD -1,-2,3,-4,5
	END