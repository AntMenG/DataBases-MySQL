-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 03, 2017 at 04:56 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cine`
--

-- --------------------------------------------------------

--
-- Table structure for table `boleto`
--

CREATE TABLE IF NOT EXISTS `boleto` (
  `id` int(10) NOT NULL,
  `id_user` int(3) DEFAULT NULL,
  `id_movie` int(3) DEFAULT NULL,
  `id_sala` int(2) DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boleto`
--

INSERT INTO `boleto` (`id`, `id_user`, `id_movie`, `id_sala`, `hora`) VALUES
(2, 1, 4, 4, '3:03:37'),
(3, 1, 4, 4, '3:03:07'),
(4, 1, 4, 4, '3:03:11'),
(5, 1, 4, 4, '3:03:08'),
(6, 1, 2, 2, '3:03:24'),
(7, 1, 10, 10, '3:03:18'),
(8, 2, 10, 10, '3:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(10) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `genero` varchar(24) NOT NULL,
  `duracion` varchar(24) NOT NULL,
  `sinopsis` varchar(600) NOT NULL,
  `director` varchar(150) NOT NULL,
  `actores` varchar(150) NOT NULL,
  `price` int(3) DEFAULT NULL,
  `id_sala` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `nombre`, `genero`, `duracion`, `sinopsis`, `director`, `actores`, `price`, `id_sala`) VALUES
(1, 'Mujer Maravilla', 'Accion', '141 min', 'Antes de ser Wonder Woman era Diana, princesa de las Amazonas entrenada para ser una guerrera invencible. Diana ha sido criada en una isla paradisíaca protegida. Hasta que un día un piloto americano que tiene un accidente y acaba en sus costas le habla de un gran conflicto existente en el mundo [Primera Guerra Mundial]. Diana decide salir de la isla convencida de que puede detener la terrible amenaza. Mientras lucha junto a los hombres en la guerra que acabará con todas las guerras, Diana descubre todos sus poderes, y de paso, su verdadero destino.', 'Patty Jenkins', 'Chris Pine,Robin Wright,Gal Gadot', 1, 1),
(2, 'Iron Man 3', 'AcciÃ³n, Aventura', '130 min.', 'En ''Iron Man 3'' de Marvel, el descarado pero brillante empresario Tony Stark/Iron Man se enfrentarÃ¡ a un enemigo cuyo poder no conoce lÃ­mites. Cuando Stark comprende que su enemigo ha destruido su universo personal, se embarca en una angustiosa bÃºsqueda para encontrar a los responsables. Este viaje pondrÃ¡ a prueba su entereza una y otra vez. Acorralado, Stark tendrÃ¡ que sobrevivir por sus propios medios, confiando en su ingenio y su instinto para proteger a las personas que quiere. Durante su lucha, Stark conocerÃ¡ la respuesta a la pregunta que le atormenta en secreto: Â¿El hÃ¡bito hace ', 'Shane Black', 'Don Cheadle, Robert Downey Jr., Gwyneth Paltrow, Rebecca Hall, Guy Pearce', 1, 2),
(3, 'Un Don Excepcional', 'Drama', '101 min', 'Frank Adler (Chris Evans) es un hombre soltero que estÃ¡ criando a su sobrina Mary (Mckenna Grace), una niÃ±a de siete aÃ±os con unas extraordinarias habilidades para las matemÃ¡ticas. Su abuela Evelyn (Lindsay Duncan) lo sabe bien. Mientras Frank intenta que su sobrina lleve una vida normal, como cualquier niÃ±o de su edad, y que disfrute de su infancia, Evelyn tiene otros planes para la niÃ±a, y pretende potenciar sus habilidades. Como consecuencia, Frank se verÃ¡ obligado a luchar desesperadamente por su custodia.', 'Marc Webb', 'Chris Evans, Mckenna Grace, Lindsay Duncan', 1, 3),
(4, 'La Momia', 'Accion y Aventura', '110 min', 'Olvidada y enterrada dentro de una cripta en medio del desierto, una antigua reina (Sofia Boutella de Kingsman: El Servicio Secreto y Star Trek sin lÃ­mites), a quien su destino le fue arrebatado injustamente, es despertada en la Ã©poca actual trayendo consigo toda la maldad y terror guardado por siglos que definirÃ¡ el futuro de la humanidad. Desde el desierto del Medio Oriente hasta las modernas calles de Londres, La Momia nos trae una nueva versiÃ³n que nos transporta a un mundo de dioses y monstruos.', 'Alex Kurtzman', 'Tom Cruise,Annabelle Wallis,Russell Crowe,Sofia Boutella', 1, 4),
(5, 'Cars 3', 'Infantil', '109 min', 'Sorprendido por una nueva generaciÃ³n de corredores ultra-rÃ¡pidos, el legendario â€œEl Rayoâ€ McQueen repentinamente se encuentra dejado de lado en el deporte que adora. Para volver al ruedo, necesitarÃ¡ la ayuda de Cruz Ramirez, una vigorosa joven tÃ©cnica de carreras, que tiene su propio plan para ganar, ademÃ¡s de la inspiraciÃ³n del fabuloso difunto Hudson Hornet, y un par de giros inesperados. Â¡Demostrar que el #95 aÃºn no estÃ¡ terminado pondrÃ¡ a prueba el corazÃ³n del campeÃ³n, en el mÃ¡s grande escenario de la Copa PistÃ³n!', '-', '-', 1, 5),
(6, 'Guardianes de la BahÃ­a', 'Comedia', '117 min', 'BAYWATCH: GUARDIANES DE LA BAHÃA sigue al devoto salvavidas Mitch Buchannon (Johnson) mientras se enfrenta con un nuevo recluta bastante atolondrado (Efron). Juntos, descubren un plan criminal que pone en peligro el futuro de la bahÃ­a.', 'Seth Gordon', 'Zac Efron,Dwayne Johnson,Alexandra Daddario', 1, 6),
(7, 'Viaje Salvaje', 'Comedia', '91 min', 'DespuÃ©s de que su novio la deja en vÃ­speras de sus exÃ³ticas vacaciones, la impetuosa soÃ±adora Emily Middleton (Amy Schumer) persuade a su ultra-cautelosa madre, Linda (Goldie Hawn) de viajar con ella al paraÃ­so. Emily y Linda se dan cuenta que la Ãºnica manera de escapar de una peligrosa pero divertida e impredecible aventura en la jungla es trabajar en conjunto a pesar de sus diferencias como madre e hija.', 'Jonathan Levine', 'Amy Schumer,Goldie Hawn', 1, 7),
(8, 'Piratas del Caribe: La Venganza', 'Accion, Aventura', '129 min', 'El capitÃ¡n Jack Sparrow se enfrentarÃ¡ a un grupo de piratas-fantasma comandados por una de sus viejas nÃ©mesis, el terrorÃ­fico capitÃ¡n Salazar, reciÃ©n escapado del TriÃ¡ngulo de las Bermudas. La Ãºnica posibilidad de Sparrow para salir con vida es encontrar el legendario Tridente de PoseidÃ³n, un poderoso artefacto que le da a su poseedor el control de los mares.', 'Joachim RÃ¸nning, Espen Sandberg', 'Javier Bardem,Johnny Depp', 1, 8),
(9, 'CAPITÃN AMÃ‰RICA: EL SOLDADO DE INVIERNO', 'Aventura, AcciÃ³n', '128 min', 'Mientras que CapitÃ¡n America: El primer vengador nos sumergÃ­a en los primeros aÃ±os del universo Marvel a travÃ©s de la traslaciÃ³n del legendario cÃ³mic a la gran pantalla, ahora el hÃ©roe regresa con CapitÃ¡n AmÃ©rica: El soldado del invierno. Esta historia se desarrolla en la actualidad y tiene como protagonistas a Chris Evans, Samuel L. Jackson y Scarlett Johansson, entre otros. La trama de la historia sigue girando alrededor del soldado Steve Rogers, que mantiene su alianza con Nick Furia y con la agencia secreta SHIELD, e intenta, ademÃ¡s, involucrarse en el mundo moderno.', 'Anthony Russo, Joe Russo', 'Chris Evans, Scarlett Johansson, Anthony Mackie', 1, 9),
(10, 'LA QUINTA OLA', 'Ciencia ficciÃ³n, Aventu', '112 min', 'Cuatro oleadas sucesivas de ataques cada vez mÃ¡s mortÃ­feros han dejado la mayor parte de la Tierra diezmada. La primera ola fue un apagÃ³n generalizado en todo el planeta, la segunda fue la subida del oleaje, la tercera ola fue una plaga y la cuarta ola fueron un grupo de asesinos llamados Silenciadores que se dedicaban a cazar a los supervivientes. En este escenario de miedo y desconfianza, Cassie Sullivan (ChloÃ« Grace Moretz), una adolescente de 16 aÃ±os, trata de sobrevivir.', 'J Blakeson', 'ChloÃ« Grace Moretz, Nick Robinson, Alex Roe', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `id` int(2) NOT NULL,
  `price` int(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `price`) VALUES
(1, 58);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE IF NOT EXISTS `sala` (
  `id` int(2) NOT NULL,
  `places` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`id`, `places`) VALUES
(1, ',A3,E5,A2,D4,D5'),
(2, ',A5,A6,'),
(3, ','),
(4, 'B4,B5,B4,B5,A5,A6,'),
(5, ','),
(6, ','),
(7, ','),
(8, ','),
(9, ','),
(10, ',A5,B5,B6,');

-- --------------------------------------------------------

--
-- Table structure for table `usrs`
--

CREATE TABLE IF NOT EXISTS `usrs` (
  `id` int(10) NOT NULL,
  `user` varchar(24) NOT NULL,
  `password` varchar(300) NOT NULL,
  `type` int(1) NOT NULL,
  `saldo` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usrs`
--

INSERT INTO `usrs` (`id`, `user`, `password`, `type`, `saldo`) VALUES
(1, 'AntMenG', '$2y$10$MMf3g5rize.JSly9b9tObe4HO977C.vFPGWonh/2/45uCvKsYU6.C', 1, 58),
(2, 'Arturo', '$2y$10$qJPwv6GEpLPiC8u1lbF.3.9hMvsarc7dBUffMTbt1DIF8bNIHSYZ6', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usrs`
--
ALTER TABLE `usrs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boleto`
--
ALTER TABLE `boleto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `usrs`
--
ALTER TABLE `usrs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
