-- Creación de tablas
CREATE TABLE Departamentos (
    departamento_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    ubicacion VARCHAR2(100) NOT NULL
);

CREATE TABLE Trabajadores (
    trabajador_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    apellido VARCHAR2(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sueldo NUMBER(10, 2) NOT NULL,
    departamento_id NUMBER,
    CONSTRAINT fk_trabajador_departamento FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

CREATE TABLE Proyectos (
    proyecto_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    presupuesto NUMBER(10, 2) NOT NULL,
    departamento_id NUMBER,
    CONSTRAINT fk_proyecto_departamento FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

CREATE TABLE Asignaciones (
    asignacion_id NUMBER PRIMARY KEY,
    trabajador_id NUMBER NOT NULL,
    proyecto_id NUMBER NOT NULL,
    horas_asignadas NUMBER NOT NULL,
    CONSTRAINT fk_asignacion_trabajador FOREIGN KEY (trabajador_id) REFERENCES Trabajadores(trabajador_id),
    CONSTRAINT fk_asignacion_proyecto FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id)
);

-- Inserción de datos en Departamentos
INSERT INTO Departamentos (departamento_id, nombre, ubicacion)
VALUES (1, 'Recursos Humanos', 'Planta Baja');

INSERT INTO Departamentos (departamento_id, nombre, ubicacion)
VALUES (2, 'Desarrollo', 'Segundo Piso');

INSERT INTO Departamentos (departamento_id, nombre, ubicacion)
VALUES (3, 'Marketing', 'Tercer Piso');

INSERT INTO Departamentos (departamento_id, nombre, ubicacion)
VALUES (4, 'Finanzas', 'Cuarto Piso');

-- Inserción de datos en Trabajadores
INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (1, 'Juan', 'Pérez', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 1200.50, 1);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (2, 'Ana', 'Gómez', TO_DATE('1990-03-15', 'YYYY-MM-DD'), 1400.75, 2);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (3, 'Carlos', 'Martínez', TO_DATE('1978-12-10', 'YYYY-MM-DD'), 1250.00, 3);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (4, 'Laura', 'Hernández', TO_DATE('1992-07-12', 'YYYY-MM-DD'), 1800.00, 2);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (5, 'María', 'Fernández', TO_DATE('1980-11-22', 'YYYY-MM-DD'), 1350.00, 4);

-- Más trabajadores hasta llegar a 20
INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (6, 'José', 'Ramírez', TO_DATE('1983-03-05', 'YYYY-MM-DD'), 1500.50, 1);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (7, 'Luis', 'Morales', TO_DATE('1995-10-10', 'YYYY-MM-DD'), 1600.00, 3);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (8, 'Elena', 'López', TO_DATE('1987-04-25', 'YYYY-MM-DD'), 1700.75, 2);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (9, 'Pedro', 'González', TO_DATE('1982-08-15', 'YYYY-MM-DD'), 1450.00, 4);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (10, 'Carmen', 'Castillo', TO_DATE('1991-12-03', 'YYYY-MM-DD'), 1750.25, 1);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (11, 'Raúl', 'Sánchez', TO_DATE('1985-02-20', 'YYYY-MM-DD'), 1300.00, 2);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (12, 'Sofía', 'Vargas', TO_DATE('1993-09-17', 'YYYY-MM-DD'), 1600.50, 3);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (13, 'Andrés', 'Reyes', TO_DATE('1990-06-30', 'YYYY-MM-DD'), 1550.00, 4);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (14, 'Mónica', 'Flores', TO_DATE('1989-01-13', 'YYYY-MM-DD'), 1650.75, 1);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (15, 'Javier', 'Silva', TO_DATE('1981-11-28', 'YYYY-MM-DD'), 1700.00, 2);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (16, 'Rosa', 'Peña', TO_DATE('1986-07-19', 'YYYY-MM-DD'), 1450.50, 3);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (17, 'Diego', 'Ortega', TO_DATE('1994-05-05', 'YYYY-MM-DD'), 1500.75, 4);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (18, 'Natalia', 'Rojas', TO_DATE('1992-03-25', 'YYYY-MM-DD'), 1800.00, 1);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (19, 'Pablo', 'Méndez', TO_DATE('1984-09-10', 'YYYY-MM-DD'), 1400.25, 2);

INSERT INTO Trabajadores (trabajador_id, nombre, apellido, fecha_nacimiento, sueldo, departamento_id)
VALUES (20, 'Lucía', 'Jiménez', TO_DATE('1996-02-02', 'YYYY-MM-DD'), 1300.00, 3);

-- Inserción de datos en Proyectos
INSERT INTO Proyectos (proyecto_id, nombre, presupuesto, departamento_id)
VALUES (1, 'Sistema de Gestión', 10000.00, 2);

INSERT INTO Proyectos (proyecto_id, nombre, presupuesto, departamento_id)
VALUES (2, 'Campaña Publicitaria', 8000.00, 3);

INSERT INTO Proyectos (proyecto_id, nombre, presupuesto, departamento_id)
VALUES (3, 'Optimización Financiera', 12000.00, 4);

-- Inserción de datos en Asignaciones
INSERT INTO Asignaciones (asignacion_id, trabajador_id, proyecto_id, horas_asignadas)
VALUES (1, 2, 1, 40);

INSERT INTO Asignaciones (asignacion_id, trabajador_id, proyecto_id, horas_asignadas)
VALUES (2, 7, 2, 35);

INSERT INTO Asignaciones (asignacion_id, trabajador_id, proyecto_id, horas_asignadas)
VALUES (3, 13, 3, 30);
