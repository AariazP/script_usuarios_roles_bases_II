DROP TABLE finanzas;
DROP TABLE empleados;
DROP TABLE proyectos;
DROP TABLE clientes;

CREATE TABLE clientes (
    id number,
    nombre varchar2(50),
    apellidos varchar2(50)
);

CREATE TABLE proyectos (
    id number,
    fecha date,
    cliente_id number,
    nombre varchar2(50),
    descripcion varchar2(100)
);

CREATE TABLE empleados (
    id number,
    nombre varchar2(50),
    apellidos varchar2(50)
);

CREATE TABLE finanzas (
    id number,
    proyecto_id number,
    empleado_id number,
    horas_trabajadas number,
    precio_hora number
);

CREATE TABLE roles (
    id number,
    nombre varchar2(50)
);

CREATE USER dba_global_tech IDENTIFIED BY password_dba;
CREATE USER gerente_proyectos IDENTIFIED BY password_gerente;
CREATE USER analista_financiero IDENTIFIED BY password_analista;
CREATE USER asistente_rrhh IDENTIFIED BY password_asistente;
CREATE ROLE rol_dba;
CREATE ROLE rol_gerente_proyectos;
CREATE ROLE rol_analista_financiero;
CREATE ROLE rol_asistente_rrhh;
GRANT ALL PRIVILEGES TO rol_dba;
GRANT SELECT, INSERT, UPDATE, DELETE ON proyectos TO rol_gerente_proyectos;
GRANT SELECT, INSERT, UPDATE, DELETE ON clientes TO rol_gerente_proyectos;
GRANT SELECT, INSERT, UPDATE, DELETE ON finanzas TO rol_analista_financiero;
GRANT SELECT ON empleados TO rol_asistente_rrhh;
GRANT rol_dba TO dba_global_tech;
GRANT rol_gerente_proyectos TO gerente_proyectos;
GRANT rol_analista_financiero TO analista_financiero;
GRANT rol_asistente_rrhh TO asistente_rrhh;
GRANT CREATE SESSION TO dba_global_tech;
GRANT CREATE SESSION TO gerente_proyectos;
GRANT CREATE SESSION TO analista_financiero;
GRANT CREATE SESSION TO asistente_rrhh;

-- Insertar 10 clientes
INSERT INTO clientes (id, nombre, apellidos) VALUES (1, 'Juan', 'Pérez');
INSERT INTO clientes (id, nombre, apellidos) VALUES (2, 'María', 'García');
INSERT INTO clientes (id, nombre, apellidos) VALUES (3, 'Luis', 'Rodríguez');
INSERT INTO clientes (id, nombre, apellidos) VALUES (4, 'Ana', 'López');
INSERT INTO clientes (id, nombre, apellidos) VALUES (5, 'Carlos', 'Martínez');
INSERT INTO clientes (id, nombre, apellidos) VALUES (6, 'Marta', 'Sánchez');
INSERT INTO clientes (id, nombre, apellidos) VALUES (7, 'Javier', 'González');
INSERT INTO clientes (id, nombre, apellidos) VALUES (8, 'Sofía', 'Hernández');
INSERT INTO clientes (id, nombre, apellidos) VALUES (9, 'Miguel', 'Díaz');
INSERT INTO clientes (id, nombre, apellidos) VALUES (10, 'Lucía', 'Flores');


-- Insertar 10 proyectos
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (1, TO_DATE('2021-01-01', 'YYYY-MM-DD'), 1, 'Proyecto 1', 'Descripción del proyecto 1');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (2, TO_DATE('2021-02-01', 'YYYY-MM-DD'), 2, 'Proyecto 2', 'Descripción del proyecto 2');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (3, TO_DATE('2021-03-01', 'YYYY-MM-DD'), 3, 'Proyecto 3', 'Descripción del proyecto 3');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (4, TO_DATE('2021-04-01', 'YYYY-MM-DD'), 4, 'Proyecto 4', 'Descripción del proyecto 4');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (5, TO_DATE('2021-05-01', 'YYYY-MM-DD'), 5, 'Proyecto 5', 'Descripción del proyecto 5');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (6, TO_DATE('2021-06-01', 'YYYY-MM-DD'), 6, 'Proyecto 6', 'Descripción del proyecto 6');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (7, TO_DATE('2021-07-01', 'YYYY-MM-DD'), 7, 'Proyecto 7', 'Descripción del proyecto 7');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (8, TO_DATE('2021-08-01', 'YYYY-MM-DD'), 8, 'Proyecto 8', 'Descripción del proyecto 8');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (9, TO_DATE('2021-09-01', 'YYYY-MM-DD'), 9, 'Proyecto 9', 'Descripción del proyecto 9');
INSERT INTO proyectos (id, fecha, cliente_id, nombre, descripcion) VALUES (10, TO_DATE('2021-10-01', 'YYYY-MM-DD'), 10, 'Proyecto 10', 'Descripción del proyecto 10');

-- Insertar 10 empleados
INSERT INTO empleados (id, nombre, apellidos) VALUES (1, 'Pedro', 'Gómez');
INSERT INTO empleados (id, nombre, apellidos) VALUES (2, 'Laura', 'Fernández');
INSERT INTO empleados (id, nombre, apellidos) VALUES (3, 'Antonio', 'Martín');
INSERT INTO empleados (id, nombre, apellidos) VALUES (4, 'Isabel', 'Jiménez');
INSERT INTO empleados (id, nombre, apellidos) VALUES (5, 'Manuel', 'Vázquez');
INSERT INTO empleados (id, nombre, apellidos) VALUES (6, 'Carmen', 'Sanz');
INSERT INTO empleados (id, nombre, apellidos) VALUES (7, 'Francisco', 'Morales');
INSERT INTO empleados (id, nombre, apellidos) VALUES (8, 'Elena', 'Ortega');
INSERT INTO empleados (id, nombre, apellidos) VALUES (9, 'Jesús', 'Iglesias');
INSERT INTO empleados (id, nombre, apellidos) VALUES (10, 'Rosa', 'Ramírez');

-- Insertar 10 registros en la tabla finanzas
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (1, 1, 1, 10, 20);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (2, 2, 2, 20, 30);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (3, 3, 3, 30, 40);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (4, 4, 4, 40, 50);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (5, 5, 5, 50, 60);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (6, 6, 6, 60, 70);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (7, 7, 7, 70, 80);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (8, 8, 8, 80, 90);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (9, 9, 9, 90, 100);
INSERT INTO finanzas (id, proyecto_id, empleado_id, horas_trabajadas, precio_hora) VALUES (10, 10, 10, 100, 110);

COMMIT;





