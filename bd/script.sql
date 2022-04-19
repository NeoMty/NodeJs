--
-- Creación de base de datos `eshop` 
--

CREATE DATABASE eshop;

--
-- Seleccionar la base de datos a usar 
--

USE eshop;

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE category (
  id_category int  NOT NULL,
  id_parent int  NOT NULL,
  id_shop_default int  NOT NULL DEFAULT 1,
  level_depth int  NOT NULL DEFAULT 0,
  active int  NOT NULL DEFAULT 0,
  date_add datetime NOT NULL,
  date_upd datetime NOT NULL,
  name varchar(250) NOT NULL
)

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO category VALUES
(1, 0, 1, 1, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'TV e Vídeo'),
(2, 1, 1, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Televisores'),
(3, 1, 1, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'DVD e Blu-Ray Players'),
(4, 1, 1, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Home Theater'),
(5, 836, 836, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Som Automotivo'),
(7, 3279, 3279, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'MP3 e MP4 Players'),
(10, 11, 1, 3, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Conversores Digitais'),
(11, 1, 1, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Acessórios para TVs'),
(12, 336, 336, 2, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Outros Consoles'),
(13, 0, 13, 1, 1, '2018-10-22 00:00:00', '2018-10-22 00:00:00', 'Eletrodomésticos');


ALTER TABLE category
  ADD PRIMARY KEY (id_category);