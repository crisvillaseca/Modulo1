![banner](banner.png)

# Proyecto 1: Algortimo de Sistema de Costos
## Planteamiento
Se necesita un algoritmo de pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado.

## Requerimientos
El pseudocodigo debe cumplir con los siguientes parámetros:
- Leer el precio original del producto.
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

## Solución explicada paso a paso
1. Primero se declaran las variables que se utilizarán en el código:

- `precio` es el valor del producto.
- `peso` el peso del producto.
- `descuento` es el descuento aplicado por el cupón.
- `valordescuento` es el valor dedl descuento respecto al producto.
- `totalDescuento` es el total del producto con el descuento ya aplicado.
- `Iva` Iva respecto al producto.
- `totalIVA` el valor despues de aplicar al Iva.
- `descuentoCantidad` este es el descuento al comprarse mas de un producto.
- `TotalCantidad` descuento por cantidad ya aplicado.
- `costopeso` el valor respecto al peso del producto
- `totalpeso` total con el valor del peso agregado.
- `costoenvio` valor del envio para desglosarlo en resumen.
- `totalcompleto`total final más valor de envio.
- `cantidad` unidades elegidas para comprar.

```
  Definir opcion, precio, peso, descuento, valordescuento, totalDescuento, Iva, totalIVA, descuentoCantidad, TotalCantidad, costopeso, totalpeso, costoenvio, totalcompleto, valorenvio Como Real
	Definir Cantidad Como Entero
```

2.Se dimensiona una tabla de destinos con su nombre y valor:
```
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
```

3. Se solicita al usuario el `precio` y el `descuento` del producto aplicandolo de inmediato:

```
	Escribir "Ingrese el precio original del producto:"
	Leer precio
	
	Escribir "Ingrese el cupon de descuento (%) :"
	Leer descuento

	valordescuento<-precio*(descuento/100)
	totalDescuento <- precio - (precio * (descuento / 100 ))
	
	Si totalDescuento < 0 Entonces
		totalDescuento<-0
	FinSi
	

```

4. Se solicita al usuario el porcentaje del `IVA`, posteriormente aplicarlo:
```
	Escribir "Ingrese el porcentaje de impuesto:"
	Leer Iva 
	
	Iva<-totalDescuento*(Iva/100)
	totalIVA<-totalDescuento+Iva

```

5.Se solicita al usuario la `cantidad` de unidades que deesea comprar y posteriormente se calcula aplicando un descuento por la compra de dos o mas productos (este descuento seria de un 15%):

```
Escribir "¿Cuantas unidades desea comprar?:"
	Leer Cantidad
	
	Si Cantidad>=2 Entonces
		descuentoCantidad<-totalIVA*0.95
		TotalCantidad<-Cantidad*descuentoCantidad
	SiNo
		TotalCantidad<-totalIVA
	FinSi
	
```

6. Se solicita el `peso` del paquete y el destino del envío, proyectando una lista y añadiendo el valor al precio actual del producto:
```
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
```

7. Por ultimo se refleja un resumen de la compra:

```
Escribir "Resumen de compra: "
	Escribir "Valor producto: ", precio
	Escribir "Cupon de descuento: %",descuento ", -", Redon(valordescuento)
	Escribir "IVA: ", redon(IVA)
	Escribir "Descuento por Cantidad: -", Redon(descuentoCantidad)
	Escribir "Costo de Envio: ", valorenvio 
	Escribir "Total: ", Redon(totalcompleto)
```

## Pseudocodigo completo

La solucion en conjunto seria:
```
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
		descuentoCantidad<-totalIVA*0.15
		TotalCantidad<-(totalIVA*Cantidad)-descuentoCantidad
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
```





