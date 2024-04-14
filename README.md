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

- `opcion` es la elección del producto a comprar.
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
- `nombre` nombre de cada producto para mencionarlo en el resumen.

```
  Definir opcion, precio, peso, descuento, valordescuento, totalDescuento, Iva, totalIVA, descuentoCantidad, TotalCantidad, costopeso, totalpeso, costoenvio, totalcompleto Como Real
	Definir Cantidad Como Entero
	Definir nombre como cadena
```


2. Se solicita al usuario seleccionar un producto:
- Se da una bienvenida al cliente.
- Se genera un bucle para que el cliente tome un numero dentro de las opciones.
- Dentro de cada opcion se asigna el precio, nombre y el peso de cada producto.

```
Escribir "Bienvenido a Electronicos Sonya"
	
	Repetir
	Escribir "Seleccione el producto:"
	Escribir "1. PlayStation 5 Valor: $439.000"
	Escribir "2. Audifonos Inalambricos Valor: $28.990"
	Escribir "3. Mouse + Teclado Gamer Valor $15.990"
	Escribir "4. Gabinete RGB Valor $31.990"
	Escribir "5. Cable HDMI Valor $3.490"
	Escribir "6. Cargador Tipo C Valor $5.490"
	Escribir "Ingrese el numero correspondiente al producto que desea:"
	Leer Opcion 
	Segun Opcion hacer
		Caso 1:
			precio <- 439000
			peso<-3.2
			nombre<-"PlayStation 5"
		Caso 2:
			precio <- 28990
			peso<-0.3
			nombre<-"Audifonos Inalambricos"
		Caso 3:
			precio <- 15990
			peso<-0.85
			nombre<-"Mouse + Teclado Gamer"
		Caso 4:
			precio <- 31990
			peso<-3
			nombre<-"Gabinete RGB"
		Caso 5:
			precio <- 3490
			peso<-0.1
			nombre<-"Cable HDMI"
		Caso 6:
			precio <- 5490
			peso<-0.2
			nombre<-"Cargador Tipo C"
		De Otro Modo:
			Escribir "..."
			Escribir "Opcion invalida. Por favor seleccione un numero valido"
	FinSegun
	Hasta Que Opcion<7 y Opcion>0
```


3. Se abre la opción de añadir el valor del| cupon de descuento|
