CREATE TABLE Vehiculo
(
  IdVehiculo INT NOT NULL,
  TIpoUnidad VARCHAR(50) NOT NULL,
  PlacaTracto CHAR(6) NOT NULL,
  PlacaCarreta CHAR(6) NOT NULL,
  PRIMARY KEY (IdVehiculo)
);

CREATE TABLE EmpresaCliente
(
  IdEmpresaCliente INT NOT NULL,
  NombreEmpresa VARCHAR(50) NOT NULL,
  TelEmpresa CHAR(9) NOT NULL,
  CorreoEmpresa VARCHAR(50) NOT NULL,
  DireccionEmpresa VARCHAR(100) NOT NULL,
  PRIMARY KEY (IdEmpresaCliente)
);

CREATE TABLE Conductor
(
  IdConductor INT NOT NULL,
  NombreEmpleado VARCHAR(50) NOT NULL,
  DniEmpleado VARCHAR(8) NOT NULL,
  AFP VARCHAR(30) NOT NULL,
  RemDia NUMERIC(7,2) NOT NULL,
  BASICO NUMERIC(8,2) NOT NULL,
  RemNeta NUMERIC(9,2) NOT NULL,
  Reencaje NUMERIC(7,2) NOT NULL,
  Tipo VARCHAR(20) NOT NULL,
  Brevete VARCHAR(9) NOT NULL,
  Estado INT NOT NULL,
  PRIMARY KEY (IdConductor)
);

CREATE TABLE Pago
(
  IdPago INT NOT NULL,
  MontoPago NUMERIC(9,2) NOT NULL,
  MetodoPago VARCHAR(20) NOT NULL,
  FechaPago DATE NOT NULL,
  PRIMARY KEY (IdPago)
);

CREATE TABLE Usuario
(
  IdUsuario INT NOT NULL,
  NomUsuario VARCHAR(100) NOT NULL,
  TelUsuario CHAR(9) NOT NULL,
  CorreoUsuario VARCHAR(50) NOT NULL,
  PRIMARY KEY (IdUsuario)
);

CREATE TABLE ServicioTransporte
(
  IdServicioTransporte INT NOT NULL,
  IdVehiculo INT NOT NULL,
  IdEmpresaCliente INT NOT NULL,
  FechaInicio DATE NOT NULL,
  FechaEntrega DATE NOT NULL,
  Peso INT NOT NULL,
  Origen VARCHAR(100) NOT NULL,
  Destino VARCHAR(100) NOT NULL,
  PRIMARY KEY (IdServicioTransporte),
  FOREIGN KEY (IdVehiculo) REFERENCES Vehiculo(IdVehiculo),
  FOREIGN KEY (IdEmpresaCliente) REFERENCES EmpresaCliente(IdEmpresaCliente)
);

CREATE TABLE BoletaServicio
(
  IdBoletaServicio INT NOT NULL,
  IdServicioTransporte INT NOT NULL,
  IdUsuario INT NOT NULL,
  IdPago INT NOT NULL,
  GR VARCHAR(15) NOT NULL,
  NumBoleta INT NOT NULL,
  Subtotal NUMERIC(9,2) NOT NULL,
  Total NUMERIC(9,2) NOT NULL,
  PRIMARY KEY (IdBoletaServicio),
  FOREIGN KEY (IdServicioTransporte) REFERENCES ServicioTransporte(IdServicioTransporte),
  FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
  FOREIGN KEY (IdPago) REFERENCES Pago(IdPago)
);

CREATE TABLE Servicio_Conductor_
(
  IdServicioTransporte INT NOT NULL,
  IdConductor INT NOT NULL,
  Observacion CHAR(2) NOT NULL,
  PRIMARY KEY (IdServicioTransporte, IdConductor),
  FOREIGN KEY (IdServicioTransporte) REFERENCES ServicioTransporte(IdServicioTransporte),
  FOREIGN KEY (IdConductor) REFERENCES Conductor(IdConductor)
);
