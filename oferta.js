Algoritmo Oferta
	Definir Descuento Como Real
	Escribir "Valor de su compra: "
	Leer Compra
	Si Compra>=10000 Entonces
		Descuento<-Compra*0.1
		Total<-Compra-Descuento
		Escribir "Descuento incluido, su total es ",Total
	SiNo
		Escribir "Su total es de " Compra
	FinSi
	
FinAlgoritmo
