use BlazorPeliculas

create table Actores
(
Id			int				identity,
Nombre		nvarchar(max)	not null,
Biografia	nvarchar(max)	null,
Foto		nvarchar(max)	null,
FechaNacimiento	datetime2	null,
constraint PK_Actores
primary key (Id)
)

create table Generos
(
Id			int				identity,
Nombre		nvarchar(max)	not null,
constraint PK_Generos
primary key (Id)
)

create table Peliculas
(
Id			int				identity,
Titulo		varchar(max)	not null, 
Resumen		nvarchar(max)	null,
EnCartelera	bit				not null,
Trailer		nvarchar(max)	null,
Lanzamiento	datetime2		null,
 Poster		nvarchar(max)	null,
 constraint PK_Peliculas
 primary key (Id)
 )

 create table GenerosPeliculas
 (
 PeliculaId	int	not null,
 GeneroId	int	not null,
 constraint PK_GenerosPeliculas
 primary key (PeliculaId, GeneroId),
 constraint FK_GenerosPeliculas_Generos
 foreign key (GeneroId) references Generos (Id),
 constraint FK_GenerosPeliculas_Peliculas
 foreign key (PeliculaId) references Peliculas (Id)
 )

 create table PeliculasActores
 (
ActorId	int				not null,
PeliculaId	int				not null,
Personaje	nvarchar(max)	null,
Orden		int				not null,
constraint PK_PeliculasActores
primary key (ActorId, PeliculaId),
constraint FK_PeliculasActores_Actores
foreign key (ActorId) references Actores (Id),
constraint FK_PeliculasActores_Peliculas
foreign key (PeliculaId) references Peliculas (Id)
)

create Index IDX_Generos_Peliculas
On GenerosPeliculas (PeliculaId)

create Index IDX_Peliculas_Actores
On PeliculasActores (PeliculaId)

go