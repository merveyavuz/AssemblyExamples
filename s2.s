;En Buyuk Satir Toplam
	AREA sample,CODE,READONLY	
	
	ENTRY	
	LDR R1,=dizi 		;dizi baslangici 
	MOV R2,#0 			;eleman sayisi
	MOV R7,#0 			;MAX

	
while
	
	MOV R3,#0			;elemanlarin toplami=0
	MOV R0,#0			;satir index=0
    ADD R2,R2,#1		;dizinin içinde ilerlemek icin
	CMP R2,#25			;dizinin sinirlari icinde kalmak icin
	BGE EXIT
	B forDongu
	
	
forDongu
	LDR R4,[R1],#4 		;dizi elemanlarinda ilerle
	ADD R2,R2,#1		;dizinin icinde ilerlemek icin
	ADD R0,R0,#1		;indis sayisini arttir
	ADD R3,R3,R4		;elemani toplama ekle
	CMP R0,#5 			;sayiyi 5la karsilastir
	BEQ etiket 			;sayi 5'ten buyuk veya esitse devam et
	B forDongu

etiket	
	CMP R7,R3			;max gelen toplam degerden 
	BGT while			;buyukse whilea geri doner
	MOV R7,R3			;kucukse yeni max atanir
	MOV R3,#0			;elemanlarin toplami=0
	MOV R0,#0			;satir index=0
	B forDongu			;for donguye geri doner

	
EXIT B EXIT

dizi DCD 1,2,3,4,5
	 DCD 1,2,-4,-6,8
	 DCD -1,2,3,4,5
     DCD 1,2,4,6,8
	 DCD -1,-2,3,-4,5
	END