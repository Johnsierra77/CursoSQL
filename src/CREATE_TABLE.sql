  CREATE TABLE 
  usuario(idusuario 
   INT PRIMARY KEY IDENTITY(1,1),
    numero_documento NVARCHAR(100) NOT NULL)

    CREATE TABLE
    Tipo_Traslado(id_Tipo_Traslado
    INT PRIMARY KEY IDENTITY(1,1),
    descripcion NVARCHAR(100) NOT NULL)

    CREATE TABLE
    Aprobado_Negado(id_Aprobado_Negado
    INT PRIMARY KEY IDENTITY(1,1),
    descripcion NVARCHAR(100) NOT NULL)

  CREATE TABLE
   Traslado(id_traslado INT PRIMARY KEY IDENTITY(1,1),
    fecha_traslado DATE,
     usuario_id INT,
    Tipo_traslado_id INT,     
    FOREIGN KEY(usuario_id) REFERENCES 
    usuario(idusuario), 
    FOREIGN KEY(Tipo_traslado_id) REFERENCES
     Tipo_traslado(id_tipo_traslado)
     )