INSERT INTO EmpresaCliente VALUES (1, 'LogiTrans SAC', '987654321', 'contacto@logitrans.com', 'Av. Arequipa 1234');
INSERT INTO EmpresaCliente VALUES (2, 'Cargo Perú', '912345678', 'info@cargoperu.com', 'Jr. Lima 456');
INSERT INTO EmpresaCliente VALUES (3, 'Express Andes', '998877665', 'ventas@expressandes.pe', 'Av. Los Incas 789');
INSERT INTO EmpresaCliente VALUES (4, 'Andes Cargo', '923456789', 'andes.cargo@empresa.com', 'Av. El Sol 123, Cusco');
INSERT INTO EmpresaCliente VALUES (5, 'Pacífico Express', '934567890', 'pacifico.express@empresa.com', 'Av. Javier Prado 456, Lima');


INSERT INTO Vehiculo VALUES (1, 'Camión Plataforma', 'ABC123', 'XYZ789');
INSERT INTO Vehiculo VALUES (2, 'Furgón Cerrado', 'DEF456', 'UVW234');
INSERT INTO Vehiculo VALUES (3, 'Camión Cisterna', 'GHI789', 'RST567');
INSERT INTO Vehiculo VALUES (4, 'Camión Baranda', 'JUI123', 'KOP456');
INSERT INTO Vehiculo VALUES (5, 'Camión Frigorífico', 'LDF234', 'MNZ789');
INSERT INTO Vehiculo VALUES (6, 'Camión Granelero', 'QWE345', 'RTY654');
INSERT INTO Vehiculo VALUES (7, 'Camioneta Reparto', 'ZXA111', 'XCB222');
INSERT INTO Vehiculo VALUES (8, 'Tráiler Pesado', 'OPQ321', 'HJK432');
INSERT INTO Vehiculo VALUES (9, 'Camión Cava', 'MLP567', 'TRW345');
INSERT INTO Vehiculo VALUES (10, 'Minivan', 'BNM789', 'CVR012');


INSERT INTO Conductor VALUES (1, 'Luis Salazar', '12345678', 'Integra AFP', 120.00, 2500.00, 2800.00, 100.00, 'Titular', 'B12345678', 0);
INSERT INTO Conductor VALUES (2, 'María Pérez', '87654321', 'Prima AFP', 130.50, 2600.00, 2950.00, 110.00, 'Reemplazo', 'C23456789', 0);
INSERT INTO Conductor VALUES (3, 'Carlos Gómez', '11223344', 'Hábitat', 140.75, 2700.00, 3100.00, 120.00, 'Titular', 'D34567890', 0);
INSERT INTO Conductor VALUES (4, 'Pedro Suárez', '23456789', 'Prima', 129.19, 2661, 2630, 95.00, 'Titular', 'L12345678', 0);
INSERT INTO Conductor VALUES (5, 'Lucía Vega', '34567890', 'Integra', 119.69, 2578, 2803, 125.68, 'Reemplazo', 'M23456789', 0);
INSERT INTO Conductor VALUES (6, 'José Mendoza', '45678901', 'Hábitat', 132.45, 2730, 2950, 110.35, 'Titular', 'N34567890', 0);
INSERT INTO Conductor VALUES (7, 'Daniela Rojas', '56789012', 'Profuturo', 118.30, 2450.00, 2700.00, 90.00, 'Titular', 'O45678901', 0);
INSERT INTO Conductor VALUES (8, 'Miguel Ángel', '67890123', 'Integra', 127.80, 2550.00, 2850.00, 115.50, 'Reemplazo', 'P56789012', 0);
INSERT INTO Conductor VALUES (9, 'Verónica Lazo', '78901234', 'Prima', 135.20, 2800.00, 3100.00, 130.00, 'Titular', 'Q67890123', 0);
INSERT INTO Conductor VALUES (10, 'Jorge Huamán', '89012345', 'Hábitat', 125.75, 2600.00, 2900.00, 105.00, 'Titular', 'R78901234', 0);


INSERT INTO Usuario VALUES (1, 'Carlos Ramírez', '987654321', 'carlos@transgali.com');
INSERT INTO Usuario VALUES (2, 'Ana Torres', '912345678', 'ana@transgali.com');
INSERT INTO Usuario VALUES (3, 'Diego Flores', '901234567', 'diego@transgali.com');
INSERT INTO Usuario VALUES (4, 'Valeria Quispe', '900112233', 'valeria@transgali.com');
INSERT INTO Usuario VALUES (5, 'Miguel Salinas', '955667788', 'miguel@transgali.com');


INSERT INTO Pago VALUES (1, 1500.50, 'Transferencia', TO_DATE('2025-06-20', 'YYYY-MM-DD'));
INSERT INTO Pago VALUES (2, 1800.00, 'Efectivo', TO_DATE('2025-06-22', 'YYYY-MM-DD'));
INSERT INTO Pago VALUES (3, 1650.75, 'Tarjeta', TO_DATE('2025-06-23', 'YYYY-MM-DD'));
INSERT INTO Pago VALUES (4, 1450.00, 'Transferencia', TO_DATE('2025-06-24', 'YYYY-MM-DD'));
INSERT INTO Pago VALUES (5, 1700.80, 'Efectivo', TO_DATE('2025-06-25', 'YYYY-MM-DD'));


INSERT INTO ServicioTransporte VALUES (1, 1, 1, TO_DATE('2025-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-18', 'YYYY-MM-DD'), 5000, 'Lima', 'Arequipa');
INSERT INTO ServicioTransporte VALUES (2, 2, 2, TO_DATE('2025-06-16', 'YYYY-MM-DD'), TO_DATE('2025-06-20', 'YYYY-MM-DD'), 6000, 'Trujillo', 'Cusco');
INSERT INTO ServicioTransporte VALUES (3, 3, 1, TO_DATE('2025-06-17', 'YYYY-MM-DD'), TO_DATE('2025-06-21', 'YYYY-MM-DD'), 5500, 'Tacna', 'Lima');
INSERT INTO ServicioTransporte VALUES (4, 4, 3, TO_DATE('2025-06-18', 'YYYY-MM-DD'), TO_DATE('2025-06-22', 'YYYY-MM-DD'), 4700, 'Piura', 'Chiclayo');
INSERT INTO ServicioTransporte VALUES (5, 5, 4, TO_DATE('2025-06-19', 'YYYY-MM-DD'), TO_DATE('2025-06-23', 'YYYY-MM-DD'), 6900, 'Ica', 'Puno');
INSERT INTO ServicioTransporte VALUES (6, 6, 5, TO_DATE('2025-06-20', 'YYYY-MM-DD'), TO_DATE('2025-06-24', 'YYYY-MM-DD'), 7200, 'Chimbote', 'Tumbes');
INSERT INTO ServicioTransporte VALUES (7, 7, 1, TO_DATE('2025-06-21', 'YYYY-MM-DD'), TO_DATE('2025-06-25', 'YYYY-MM-DD'), 3900, 'Lima', 'Huancayo');
INSERT INTO ServicioTransporte VALUES (8, 8, 2, TO_DATE('2025-06-22', 'YYYY-MM-DD'), TO_DATE('2025-06-26', 'YYYY-MM-DD'), 8000, 'Cusco', 'Trujillo');
INSERT INTO ServicioTransporte VALUES (9, 9, 3, TO_DATE('2025-06-23', 'YYYY-MM-DD'), TO_DATE('2025-06-27', 'YYYY-MM-DD'), 5400, 'Huánuco', 'Iquitos');
INSERT INTO ServicioTransporte VALUES (10, 10, 4, TO_DATE('2025-06-24', 'YYYY-MM-DD'), TO_DATE('2025-06-28', 'YYYY-MM-DD'), 6100, 'Moquegua', 'Lambayeque');


INSERT INTO BoletaServicio VALUES (1, 1, 1, 1, 'GR001', 1001, 1500.50, 1800.60);
INSERT INTO BoletaServicio VALUES (2, 2, 2, 2, 'GR002', 1002, 1800.00, 2100.00);
INSERT INTO BoletaServicio VALUES (3, 3, 3, 3, 'GR003', 1003, 1650.75, 1900.90);
INSERT INTO BoletaServicio VALUES (4, 4, 4, 4, 'GR004', 1004, 1450.00, 1700.00);
INSERT INTO BoletaServicio VALUES (5, 5, 5, 5, 'GR005', 1005, 1700.80, 1950.00);


INSERT INTO Servicio_Conductor_ VALUES (1, 1, 'OK');
INSERT INTO Servicio_Conductor_ VALUES (2, 2, 'OK');
INSERT INTO Servicio_Conductor_ VALUES (3, 3, 'OK');
INSERT INTO Servicio_Conductor_ VALUES (4, 4, 'OK');
INSERT INTO Servicio_Conductor_ VALUES (5, 5, 'OK');
