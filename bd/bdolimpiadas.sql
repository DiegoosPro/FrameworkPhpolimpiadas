/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     13/11/2023 15:26:21                          */
/*==============================================================*/
create database bdolimpiadas;
use bdolimpiadas;

drop table if exists TAB_CIUDADES;

drop table if exists TAB_DEPORTES;

drop table if exists TAB_DEPORTISTAS;

drop table if exists TAB_EVENTOS;

drop table if exists TAB_NACIONALIDADES;

drop table if exists TAB_RESULTADOS;

drop table if exists TAB_SEDESOLIMPICAS;

drop table if exists TAB_USUARIOS;

/*==============================================================*/
/* Table: TAB_CIUDADES                                          */
/*==============================================================*/
create table TAB_CIUDADES
(
   IDCIUDAD             int not null auto_increment,
   NOMBRECIUDAD         varchar(50),
   PAIS                 varchar(50),
   primary key (IDCIUDAD)
);

/*==============================================================*/
/* Table: TAB_DEPORTES                                          */
/*==============================================================*/
create table TAB_DEPORTES
(
   IDDEPORTE            integer not null auto_increment,
   NOMBREDEPORTE        varchar(50),
   primary key (IDDEPORTE)
);

/*==============================================================*/
/* Table: TAB_DEPORTISTAS                                       */
/*==============================================================*/
create table TAB_DEPORTISTAS
(
   IDDEPORTISTA         integer not null auto_increment,
   IDNACIONALIDAD       integer,
   NOMBREDEPORTISTA     varchar(100),
   FECHANACIMIENTO      date,
   TELEFONO             varchar(10),
   primary key (IDDEPORTISTA)
);

/*==============================================================*/
/* Table: TAB_EVENTOS                                           */
/*==============================================================*/
create table TAB_EVENTOS
(
   IDEVENTO             int not null auto_increment,
   IDDEPORTE            integer,
   IDSEDE               int,
   NOMBREEVENTO         varchar(50),
   FECHAEVENTO          date,
   primary key (IDEVENTO)
);

/*==============================================================*/
/* Table: TAB_NACIONALIDADES                                    */
/*==============================================================*/
create table TAB_NACIONALIDADES
(
   IDNACIONALIDAD       integer not null auto_increment,
   NOMBRENACIONALIDAD   varchar(50),
   primary key (IDNACIONALIDAD)
);

/*==============================================================*/
/* Table: TAB_RESULTADOS                                        */
/*==============================================================*/
create table TAB_RESULTADOS
(
   IDRESULTADO          int not null auto_increment,
   IDEVENTO             int,
   IDDEPORTISTA         integer,
   POSICION             int,
   MARCATIEMPO          time,
   RONDA                varchar(50),
   primary key (IDRESULTADO)
);

/*==============================================================*/
/* Table: TAB_SEDESOLIMPICAS                                    */
/*==============================================================*/
create table TAB_SEDESOLIMPICAS
(
   IDSEDE               int not null auto_increment,
   IDCIUDAD             int,
   NOMBRESEDE           varchar(50),
   ANIOCELEBRACION      int,
   primary key (IDSEDE)
);

/*==============================================================*/
/* Table: TAB_USUARIOS                                          */
/*==============================================================*/
create table TAB_USUARIOS
(
   IDUSUARIO            int not null auto_increment,
   NOMBREUSUARIO        varchar(50),
   USUARIO              varchar(50),
   CLAVE                varchar(50),
   ROL                  varchar(50),
   primary key (IDUSUARIO)
);

alter table TAB_DEPORTISTAS add constraint FK_REFERENCE_1 foreign key (IDNACIONALIDAD)
      references TAB_NACIONALIDADES (IDNACIONALIDAD);

alter table TAB_EVENTOS add constraint FK_REFERENCE_3 foreign key (IDDEPORTE)
      references TAB_DEPORTES (IDDEPORTE);

alter table TAB_EVENTOS add constraint FK_REFERENCE_4 foreign key (IDSEDE)
      references TAB_SEDESOLIMPICAS (IDSEDE);

alter table TAB_RESULTADOS add constraint FK_REFERENCE_5 foreign key (IDEVENTO)
      references TAB_EVENTOS (IDEVENTO);

alter table TAB_RESULTADOS add constraint FK_REFERENCE_6 foreign key (IDDEPORTISTA)
      references TAB_DEPORTISTAS (IDDEPORTISTA);

alter table TAB_SEDESOLIMPICAS add constraint FK_REFERENCE_2 foreign key (IDCIUDAD)
      references TAB_CIUDADES (IDCIUDAD);

