Algoritmo proyecto2
	Definir opcion, precio, peso, descuento, valordescuento, totalDescuento, Iva, totalIVA, descuentoCantidad, TotalCantidad, costopeso, totalpeso, costoenvio, totalcompleto, valorenvio Como Real
	Definir Cantidad Como Entero
	
	
	Dimensionar destinos[5,2]
	
	destinos[1,1] = "Region Metropolitana"
	destinos[1,2] = "5000"
	destinos[2,1] = "Región de Antofagasta."
	destinos[2,2] = "10000"
	destinos[3,1] = "Region de O´higgins "
	destinos[3,2] = "7000"
	destinos[4,1] ="Región de Valparaíso"
	destinos[4,2] ="6000"
	destinos[5,1] ="Región de Coquimbo."
	destinos[5,2] ="7000"
	
	Escribir "Ingrese el precio original del producto:"
	Leer precio
	
	Escribir "Ingrese el cupon de descuento (%) :"
	Leer descuento
	
	valordescuento<-precio*(descuento/100)
	totalDescuento <- precio - (precio * (descuento / 100 ))
	
	Si totalDescuento < 0 Entonces
		totalDescuento<-0
	FinSi
	
	Escribir " "
	
	Escribir "Ingrese el porcentaje de impuesto:"
	Leer Iva 
	
	Iva<-totalDescuento*(Iva/100)
	totalIVA<-totalDescuento+Iva
	
	Escribir "¿Cuantas unidades desea comprar?:"
	Leer Cantidad
	
	Si Cantidad>=2 Entonces
		descuentoCantidad<-totalIVA*0.95
		TotalCantidad<-Cantidad*descuentoCantidad
	SiNo
		TotalCantidad<-totalIVA
	FinSi
	
	Escribir "Ingrese el peso del paquete:"
	Leer peso
	
	costopeso<-peso*3000  
	totalpeso<-TotalCantidad+costopeso
	
	Escribir "Seleccione el destino del envio:"
	para i=1 Hasta 5 Con Paso 1 Hacer
		Escribir i, ". ", destinos[i,1]
	FinPara
	Leer destino
	
	envio<-destinos[destino,2]
	costoenvio<- ConvertirANumero(envio)
	
	valorenvio<-costoenvio+costopeso
	totalcompleto<-totalpeso+costoenvio
	
	Escribir "Resumen de compra: "
	Escribir "Valor producto: ", precio
	Escribir "Cupon de descuento: %",descuento ", -", Redon(valordescuento)
	Escribir "IVA: ", redon(IVA)
	Escribir "Descuento por Cantidad: -", Redon(descuentoCantidad)
	Escribir "Costo de Envio: ", valorenvio 
	Escribir "Total: ", Redon(totalcompleto)
FinAlgoritmo
