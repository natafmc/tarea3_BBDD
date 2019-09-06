/*PARTE A
Mostrar los datos de:
Nombres y Apellidos
Domicilio
Tipo de Documento de identidad
Nro de Documento
Lugar de Expedición
*/
SELECT c.NOMBRE, c.APELLIDO_PAT, c.APELLIDO_MAT, c.APELLIDO_CASADA, c.DOMICILIO,
d.NOMBRE as TIPO_DOCUMENTO, dc.NUMERO as NRO_DOCUMENTO, l.NOMBRE as LUGAR_EXPEDICION
FROM CONTRIBUYENTE c
LEFT JOIN DOCUMENTO_CONTRIBUYENTE dc ON dc.ID_CONTRIBUYENTE = c.ID_CONTRIBUYENTE
LEFT JOIN DOCUMENTO d ON d.ID_DOCUMENTO = dc.ID_DOCUMENTO
JOIN LUGAR l ON l.ID_LUGAR = dc.ID_LUGAR
WHERE c.ID_CONTRIBUYENTE = 1


/*PARTE B
Mostrar los datos de:
NIT del empleador
Nombres y Apellidos o Razón Social del Empleador
Domicilio del Empleador
*/
SELECT e.NIT, e.RAZON_SOCIAL_NOMBRE, e.DOMICILIO, 
FROM FORMULARIO f
JOIN EMPLEADOR e ON e.ID_EMPLEADOR = f.ID_EMPLEADOR
WHERE f.ID_CONTRIBUYENTE = 1 AND e.ORDEN = 1 AND f.ID_FORMULARIO = 1


/*PARTE C
Mostrar los datos de:
Detalle de Facturas (En Bolivianos sin centavos)
*/
SELECT f.NIT, f.NRO_FACTURA, f.NRO_AUTORIZACION, f.FECHA, f.IMPORTE, f.CODIGO_CONTROL, f.FAC_ELECTRONICA
FROM FACTURA f
WHERE f.ID_FORMULARIO = 1


/*PARTE D
Mostrar los datos de:
Total Detalle de Facturas (COD.)
Total Detalle de Facturas (IMPORTE)
Determinación del Pago a Cuenta (COD.)
Determinación del Pago a Cuenta (IMPORTE)
*/
SELECT tf.COD_IMPORTE, f.IMPORTE_TOTAL, tf.COD_PAGO, f.PAGO_TOTAL
FROM FORMULARIO f
LEFT JOIN tipo_formulario tf ON tf.ID_TIPO_FORMULARIO = f.ID_TIPO_FORMULARIO
WHERE f.ID_FORMULARIO = 1

