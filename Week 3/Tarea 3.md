# Tarea 3

## Instrucciones generales

1.   Se entregará un único trabajo por equipo
2.   El trabajo deberá entregarse transcrito en computadora
3.   Debes escribir el enunciado del problema, no solo tu solución
4.   Desarrolla todos y cada uno de los pasos indicados 
5.   Realiza las siguientes actividades en *R Studio* utilizando un documento `R Notebook`
6.   Para cada paso, escribe la instrucción en una celda `Markdown` seguida de la solución en una celda de código
7.   Escribe de manera concisa la conclusión de cada paso
8.   No se considerarán solo resultados sin justificación
9.   El trabajo se entregará en Moodle en formato PDF
10.   Cada inciso tendrá un puntaje máximo de 4. 

### Rúbrica 

| Puntaje | Indicación                                                   |
| ------- | ------------------------------------------------------------ |
| -1      | Presentó un resultado sin justificación alguna               |
| 0       | No presentó una solución                                     |
| 1       | Desarrollo incompleto o ilegible                             |
| 2       | Desarrollo completo pero conclusión incorrecta               |
| 3       | Desarrollo completo, conclusión correcta pero redacción inadecuada |
| 4       | Desarrollo completo, conclusión correcta y redacción adecuada. |

##  Actividades

1.   Descarga el conjunto de datos *International arrivals by country* desde el sitio https://www.kaggle.com/datasets/julihocc/tourism-by-max-roser e impórtalos como un marco de datos. 
2.   Crea un vector con los códigos únicos correspondientes solo a entidades con código ISO-3.
3.   Utilizando el vector anterior, filtra los datos cuyo código sea ISO-3 y convierte los códigos de cadenas de caracteres a factores. 
4.   Selecciona solo los datos a partir del año 2000.
5.   Crea un marco de datos con las diez entidades con mayor media de arribos.
6.   Selecciona solo las entidades que se encuentran en el marco de datos anterior. 
7.   Crea un reporte con los estadísticos más importantes del número de arribos (en millones) por entidad con base en el marco de datos anterior. 
8.   Crea un diagrama de caja con la información anterior, ordenando las entidades por número mediano de arribos, de mayor a menor. 
