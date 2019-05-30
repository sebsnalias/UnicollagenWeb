DROP DATABASE IF EXISTS unicollagen;
CREATE DATABASE unicollagen;
USE unicollagen;

CREATE TABLE productos(
    ID_p VARCHAR(20) NOT NULL PRIMARY KEY,
    Nombre_p VARCHAR(20) NOT NULL,
    Precio_p FLOAT(10) NOT NULL,
    Marca_p VARCHAR(20) NOT NULL,
    Presentacion_p VARCHAR(20) NOT NULL,
    Tipo_p VARCHAR(20) NOT NULL,
    Descripcion_p VARCHAR(20) NOT NULL,
    Recomendacion_p VARCHAR(20) NOT NULL,
    Beneficios_p VARCHAR(20) NOT NULL
 )
CREATE TABLE administradores(
    ID_a VARCHAR(20) NOT NULL PRIMARY KEY
)
CREATE TABLE Existencias(
    ID_E VARCHAR(20) NOT NULL PRIMARY KEY)
CREATE TABLE usuarios(
    ID_u VARCHAR(20) NOT NULL PRIMARY KEY
)
