-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2018 a las 03:41:17
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aei`
--
CREATE DATABASE IF NOT EXISTS `aei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biografia`
--

CREATE TABLE `biografia` (
  `Id_Biografia` int(10) UNSIGNED NOT NULL,
  `Años_Negocio` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Tipos_Trabajo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Intereses` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ciudad_Residencia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Años_Ciudad` int(10) UNSIGNED DEFAULT NULL,
  `Clave_Exito` longtext COLLATE utf8mb4_unicode_ci,
  `Metas` longtext COLLATE utf8mb4_unicode_ci,
  `Logros` longtext COLLATE utf8mb4_unicode_ci,
  `Producto_estrella` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Habilidades` longtext COLLATE utf8mb4_unicode_ci,
  `Referencia_Ideal` longtext COLLATE utf8mb4_unicode_ci,
  `Mayor_Problema_Resuelto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mi_Historia_AEI` longtext COLLATE utf8mb4_unicode_ci,
  `Mi_Socio_Preferencial` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `biografia`
--

INSERT INTO `biografia` (`Id_Biografia`, `Años_Negocio`, `Tipos_Trabajo`, `Intereses`, `Ciudad_Residencia`, `Años_Ciudad`, `Clave_Exito`, `Metas`, `Logros`, `Producto_estrella`, `Habilidades`, `Referencia_Ideal`, `Mayor_Problema_Resuelto`, `Mi_Historia_AEI`, `Mi_Socio_Preferencial`, `created_at`, `updated_at`, `Id_Usuario`) VALUES
(3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-03 22:40:43', '2018-10-03 22:40:43', 3),
(6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-04 00:03:07', '2018-10-04 00:03:07', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_p-s`
--

CREATE TABLE `catalogo_p-s` (
  `Id_P/S` int(10) UNSIGNED NOT NULL,
  `Nombre_P/S` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion_P/S` longtext COLLATE utf8mb4_unicode_ci,
  `Imagen_P/S` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Costo_P/S` double(6,2) NOT NULL DEFAULT '0.00',
  `Descuento_P/S` int(10) UNSIGNED NOT NULL,
  `Tipo_P/S` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL,
  `Id_Empresa` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `Id_Contacto` int(10) UNSIGNED NOT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `Id_Documento` int(10) UNSIGNED NOT NULL,
  `Nombre_Documento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Categoria_Documento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Privacidad_Documento` tinyint(1) NOT NULL DEFAULT '0',
  `Ruta_Documento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id_Evento` int(10) UNSIGNED NOT NULL,
  `Nombre_Evento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion_Evento` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha_Registro_Evento` datetime NOT NULL,
  `Duracion_Evento` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Direccion_Evento` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Num_Invitados` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Costo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Ponente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Organizador` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correo_Electronico_Organizador` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Telefono_Organizador` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `Estado_Evento` tinyint(1) NOT NULL DEFAULT '0',
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpnc`
--

CREATE TABLE `gpnc` (
  `Id_GPNC` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_GPNC_Dado` int(10) UNSIGNED DEFAULT NULL,
  `Id_GPNC_Recibido` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpnc_dado`
--

CREATE TABLE `gpnc_dado` (
  `Id_GPNC_Dado` int(10) UNSIGNED NOT NULL,
  `Tipo_GPNC` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo_Referencia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comentario_GPNC` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Id_Usuario` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpnc_recibido`
--

CREATE TABLE `gpnc_recibido` (
  `Id_GPNC_Recibido` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_10_171142_Biografia', 1),
(4, '2018_09_10_173829_Catalogo_P-S', 1),
(5, '2018_09_10_175507_contacto', 1),
(6, '2018_09_10_180926_Docuemento', 1),
(7, '2018_09_10_181728_Evento', 1),
(8, '2018_09_10_183832_GPNC', 1),
(9, '2018_09_10_184328_GPNC-Dado', 1),
(10, '2018_09_10_184907_GPNC_Recibido', 1),
(11, '2018_09_10_185239_Mis-Contactos', 1),
(12, '2018_09_10_185642_Notificacion-Administrador', 1),
(13, '2018_09_10_190103_Perfil-Empresa', 1),
(14, '2018_09_10_190957_Perfil-Usuario', 1),
(15, '2018_09_10_191712_Registro-Evento', 1),
(16, '2018_09_10_192054_Registro-Invitado-Evento', 1),
(17, '2018_09_10_192646_Testimonio', 1),
(18, '2018_09_10_192951_Testimonio-Dado', 1),
(19, '2018_09_10_193220_Testimonio-Recibido', 1),
(20, '2018_09_10_222609_Add_ids_to_User', 1),
(21, '2018_09_10_224606_Add_ids_to_Catalogo', 1),
(22, '2018_09_10_230322_Add_ids_to_Documento', 1),
(23, '2018_09_10_233548_Add_ids_to_GPNC', 1),
(24, '2018_09_11_155319_Add_ids_to_GPNC_Recibido', 1),
(25, '2018_09_11_162031_Add_ids_to_Notificacion-Administrador', 1),
(26, '2018_09_11_163036_Add_ids_to_Mis_Contactos', 1),
(27, '2018_09_11_164216_Add_ids_to_Registro_Evento', 1),
(28, '2018_09_11_164942_Add_ids_to_Registro_Invitado_Evento', 1),
(29, '2018_09_11_165358_Add_ids_to_Testimonio', 1),
(30, '2018_09_11_171206_Add_ids_to_Testimonio_Dado', 1),
(31, '2018_09_11_171703_Add_ids_to_Testimonio_Recibido', 1),
(32, '2018_09_14_174823_Add_ids_to_Perfil_Usuario', 1),
(33, '2018_09_14_175022_Add_ids_to_Perfil_Emprsa', 1),
(34, '2018_09_14_175158_Add_ids_to_Biografia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mis_contactos`
--

CREATE TABLE `mis_contactos` (
  `Id_Mis_Contactos` int(10) UNSIGNED NOT NULL,
  `Seguir` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Contacto` int(10) UNSIGNED DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_administrador`
--

CREATE TABLE `notificacion_administrador` (
  `Id_Notificacion` int(10) UNSIGNED NOT NULL,
  `Descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Visto` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('gerarball_@hotmail.com', '$2y$10$ehqmSQqhtoSPU15.tiNFY.tKRmwdkamGlli4tiClAVX1EZGsozbbu', '2018-09-26 04:21:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_empresa`
--

CREATE TABLE `perfil_empresa` (
  `Id_Empresa` int(10) UNSIGNED NOT NULL,
  `Nombre_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Giro_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Servicio_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Producto_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Logo_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'public/ImagenEmpresa/Empresadefault.png',
  `Horario_Atencion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cantidad_Productos` bigint(20) UNSIGNED DEFAULT NULL,
  `Telefono_Fijo_Empresa` bigint(20) UNSIGNED DEFAULT NULL,
  `Telefono_Movil_Empresa` bigint(20) UNSIGNED DEFAULT NULL,
  `Correo_Electronico_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion_Empresa` longtext COLLATE utf8mb4_unicode_ci,
  `Red_Social_Twitter_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pag_Web_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Facebook_Empresa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `perfil_empresa`
--

INSERT INTO `perfil_empresa` (`Id_Empresa`, `Nombre_Empresa`, `Tipo_Empresa`, `Giro_Empresa`, `Servicio_Empresa`, `Producto_Empresa`, `Logo_Empresa`, `Horario_Atencion`, `Cantidad_Productos`, `Telefono_Fijo_Empresa`, `Telefono_Movil_Empresa`, `Correo_Electronico_Empresa`, `Direccion_Empresa`, `Red_Social_Twitter_Empresa`, `Pag_Web_Empresa`, `Red_Social_Facebook_Empresa`, `Red_Social_Instagram`, `Red_Social_Whatsapp`, `created_at`, `updated_at`, `Id_Usuario`) VALUES
(3, 'Google', 'Privada', 'Redes', 'internet', 'Nexus', 'public/ImagenEmpresa/46roWLC790lBRj2giVNP7nGO0o4p9FzmpucP1h4O.jpeg', NULL, NULL, 5555555555, NULL, '', 'enriquesegobiano', NULL, NULL, NULL, NULL, NULL, '2018-10-03 22:40:43', '2018-10-03 23:26:42', 3),
(6, 'Google', 'Privada', 'Redes', 'internet', 'Nexus', 'public/ImagenEmpresa/babcdz3SVTspIopoCvAM5Aob1zyPgHPHfjCxgUE0.jpeg', NULL, NULL, 5555555555, NULL, 'gerarball_@hotmail.com', 'enriquesegobiano', NULL, NULL, NULL, NULL, NULL, '2018-10-04 00:03:08', '2018-10-04 00:48:13', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `Id_Perfil` int(10) UNSIGNED NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Sexo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` longtext COLLATE utf8mb4_unicode_ci,
  `Telefono_Fijo` bigint(20) UNSIGNED DEFAULT NULL,
  `Telefono_Movil` bigint(20) UNSIGNED DEFAULT NULL,
  `Area_Profesional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cedula_Profesional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imagen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'public/Imagen_Usuario/PerfilDefault.png',
  `Horario_Atencion` datetime DEFAULT NULL,
  `Pag_Web` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Red_Social_Instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`Id_Perfil`, `Fecha_Nacimiento`, `Sexo`, `Direccion`, `Telefono_Fijo`, `Telefono_Movil`, `Area_Profesional`, `Cedula_Profesional`, `Imagen`, `Horario_Atencion`, `Pag_Web`, `Red_Social_Facebook`, `Red_Social_Twitter`, `Red_Social_Whatsapp`, `Red_Social_Instagram`, `created_at`, `updated_at`, `Id_Usuario`) VALUES
(3, '1996-02-14', 'Hombre', NULL, 5555555555, NULL, NULL, NULL, 'public/Imagen_Usuario/zz10kLT096kzhXSRtvGhCQqIdDnoYnkS7ZUxyKt3.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-03 22:40:43', '2018-10-03 23:26:42', 3),
(6, '1996-08-10', 'Mujer', NULL, 5555555555, NULL, NULL, NULL, 'public/Imagen_Usuario/tzRsWUOhyq35LCnjDfj1LAd6OG6QIIoE9pp4EZP9.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-04 00:03:07', '2018-10-04 01:21:27', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_evento`
--

CREATE TABLE `registro_evento` (
  `Id_Registro_Evento` int(10) UNSIGNED NOT NULL,
  `Fecha_Registro_Evento` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL,
  `Id_Evento` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_invitado_evento`
--

CREATE TABLE `registro_invitado_evento` (
  `Id_Invitado` int(10) UNSIGNED NOT NULL,
  `Nombre_Invitado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido_Invitado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correo_Electronico_Invitado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Edad_Invitado` int(10) UNSIGNED NOT NULL,
  `Sexo_Invitado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL,
  `Id_Evento` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonio`
--

CREATE TABLE `testimonio` (
  `Id_Testimonio` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Testimonio_Recibido` int(10) UNSIGNED DEFAULT NULL,
  `Id_Testimonio_Dado` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonio_dado`
--

CREATE TABLE `testimonio_dado` (
  `Id_Testimonio_Dado` int(10) UNSIGNED NOT NULL,
  `Descripcion_Testimonio` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valoracion_Testimonio` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonio_recibido`
--

CREATE TABLE `testimonio_recibido` (
  `Id_Testimonio_Recibido` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_Usuario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id_Usuario` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `Apellido_Paterno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Apellido_Materno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo_Usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Asociado',
  `Privilegios_Administrador` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id_Usuario`, `name`, `Apellido_Paterno`, `Apellido_Materno`, `email`, `password`, `Tipo_Usuario`, `Privilegios_Administrador`, `status`, `confirmation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Gerardo Fernando', 'Salazar', 'Uribe', 'gerarball_@hotmail.com', '$2y$10$hnhbur7rR2YvRGlciAWvq.McKHDu9UvnpOlWIxSI1/hwuUGBkJc/G', 'Asociado', 0, 1, 'RigMhMdDhtEuM33cj6M3yqaRy', 'Pg4CdFkth7xLGYasuYXdDWfIMVCdsrJ3bqJ9rWjdZhvwcHzEr9mVelcvrwg0', '2018-10-03 22:40:42', '2018-10-03 23:26:43'),
(6, 'Jeniffer Alicia', 'Toral', 'Ponce', 'jennitoral68@gmail.com', '$2y$10$soJtQt.R4rPGdhUPnQizJOQl2ItKrdII5yasU7LxNWKBI.VV7NPZ2', 'No Asociado', 0, 1, 'VyvrtlXVTOm7te5vBhAFJ9yQp', NULL, '2018-10-04 00:03:07', '2018-10-04 01:22:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biografia`
--
ALTER TABLE `biografia`
  ADD PRIMARY KEY (`Id_Biografia`),
  ADD KEY `biografia_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `catalogo_p-s`
--
ALTER TABLE `catalogo_p-s`
  ADD PRIMARY KEY (`Id_P/S`),
  ADD KEY `catalogo_p_s_id_usuario_foreign` (`Id_Usuario`),
  ADD KEY `catalogo_p_s_id_empresa_foreign` (`Id_Empresa`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`Id_Contacto`),
  ADD KEY `contacto_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`Id_Documento`),
  ADD KEY `documento_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id_Evento`),
  ADD UNIQUE KEY `evento_correo_electronico_organizador_unique` (`Correo_Electronico_Organizador`),
  ADD KEY `evento_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `gpnc`
--
ALTER TABLE `gpnc`
  ADD PRIMARY KEY (`Id_GPNC`),
  ADD KEY `gpnc_id_gpnc_dado_foreign` (`Id_GPNC_Dado`),
  ADD KEY `gpnc_id_gpnc_recibido_foreign` (`Id_GPNC_Recibido`);

--
-- Indices de la tabla `gpnc_dado`
--
ALTER TABLE `gpnc_dado`
  ADD PRIMARY KEY (`Id_GPNC_Dado`);

--
-- Indices de la tabla `gpnc_recibido`
--
ALTER TABLE `gpnc_recibido`
  ADD PRIMARY KEY (`Id_GPNC_Recibido`),
  ADD KEY `gpnc_recibido_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mis_contactos`
--
ALTER TABLE `mis_contactos`
  ADD PRIMARY KEY (`Id_Mis_Contactos`),
  ADD KEY `mis_contactos_id_contacto_foreign` (`Id_Contacto`),
  ADD KEY `mis_contactos_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `notificacion_administrador`
--
ALTER TABLE `notificacion_administrador`
  ADD PRIMARY KEY (`Id_Notificacion`),
  ADD KEY `notificacion_administrador_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `perfil_empresa`
--
ALTER TABLE `perfil_empresa`
  ADD PRIMARY KEY (`Id_Empresa`),
  ADD UNIQUE KEY `perfil_empresa_correo_electronico_empresa_unique` (`Correo_Electronico_Empresa`),
  ADD UNIQUE KEY `perfil_empresa_red_social_twitter_empresa_unique` (`Red_Social_Twitter_Empresa`),
  ADD UNIQUE KEY `perfil_empresa_pag_web_empresa_unique` (`Pag_Web_Empresa`),
  ADD UNIQUE KEY `perfil_empresa_red_social_facebook_empresa_unique` (`Red_Social_Facebook_Empresa`),
  ADD UNIQUE KEY `perfil_empresa_red_social_instagram_unique` (`Red_Social_Instagram`),
  ADD UNIQUE KEY `perfil_empresa_red_social_whatsapp_unique` (`Red_Social_Whatsapp`),
  ADD KEY `perfil_empresa_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`Id_Perfil`),
  ADD UNIQUE KEY `perfil_usuario_cedula_profesional_unique` (`Cedula_Profesional`),
  ADD UNIQUE KEY `perfil_usuario_pag_web_unique` (`Pag_Web`),
  ADD UNIQUE KEY `perfil_usuario_red_social_facebook_unique` (`Red_Social_Facebook`),
  ADD UNIQUE KEY `perfil_usuario_red_social_twitter_unique` (`Red_Social_Twitter`),
  ADD UNIQUE KEY `perfil_usuario_red_social_whatsapp_unique` (`Red_Social_Whatsapp`),
  ADD UNIQUE KEY `perfil_usuario_red_social_instagram_unique` (`Red_Social_Instagram`),
  ADD KEY `perfil_usuario_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `registro_evento`
--
ALTER TABLE `registro_evento`
  ADD PRIMARY KEY (`Id_Registro_Evento`),
  ADD KEY `registro_evento_id_usuario_foreign` (`Id_Usuario`),
  ADD KEY `registro_evento_id_evento_foreign` (`Id_Evento`);

--
-- Indices de la tabla `registro_invitado_evento`
--
ALTER TABLE `registro_invitado_evento`
  ADD PRIMARY KEY (`Id_Invitado`),
  ADD UNIQUE KEY `registro_invitado_evento_correo_electronico_invitado_unique` (`Correo_Electronico_Invitado`),
  ADD KEY `registro_invitado_evento_id_usuario_foreign` (`Id_Usuario`),
  ADD KEY `registro_invitado_evento_id_evento_foreign` (`Id_Evento`);

--
-- Indices de la tabla `testimonio`
--
ALTER TABLE `testimonio`
  ADD PRIMARY KEY (`Id_Testimonio`),
  ADD KEY `testimonio_id_testimonio_recibido_foreign` (`Id_Testimonio_Recibido`),
  ADD KEY `testimonio_id_testimonio_dado_foreign` (`Id_Testimonio_Dado`);

--
-- Indices de la tabla `testimonio_dado`
--
ALTER TABLE `testimonio_dado`
  ADD PRIMARY KEY (`Id_Testimonio_Dado`),
  ADD KEY `testimonio_dado_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `testimonio_recibido`
--
ALTER TABLE `testimonio_recibido`
  ADD PRIMARY KEY (`Id_Testimonio_Recibido`),
  ADD KEY `testimonio_recibido_id_usuario_foreign` (`Id_Usuario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `biografia`
--
ALTER TABLE `biografia`
  MODIFY `Id_Biografia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `catalogo_p-s`
--
ALTER TABLE `catalogo_p-s`
  MODIFY `Id_P/S` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `Id_Contacto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `Id_Documento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `Id_Evento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gpnc`
--
ALTER TABLE `gpnc`
  MODIFY `Id_GPNC` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gpnc_dado`
--
ALTER TABLE `gpnc_dado`
  MODIFY `Id_GPNC_Dado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gpnc_recibido`
--
ALTER TABLE `gpnc_recibido`
  MODIFY `Id_GPNC_Recibido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `mis_contactos`
--
ALTER TABLE `mis_contactos`
  MODIFY `Id_Mis_Contactos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificacion_administrador`
--
ALTER TABLE `notificacion_administrador`
  MODIFY `Id_Notificacion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil_empresa`
--
ALTER TABLE `perfil_empresa`
  MODIFY `Id_Empresa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `Id_Perfil` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registro_evento`
--
ALTER TABLE `registro_evento`
  MODIFY `Id_Registro_Evento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_invitado_evento`
--
ALTER TABLE `registro_invitado_evento`
  MODIFY `Id_Invitado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `testimonio`
--
ALTER TABLE `testimonio`
  MODIFY `Id_Testimonio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `testimonio_dado`
--
ALTER TABLE `testimonio_dado`
  MODIFY `Id_Testimonio_Dado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `testimonio_recibido`
--
ALTER TABLE `testimonio_recibido`
  MODIFY `Id_Testimonio_Recibido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `Id_Usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biografia`
--
ALTER TABLE `biografia`
  ADD CONSTRAINT `biografia_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `catalogo_p-s`
--
ALTER TABLE `catalogo_p-s`
  ADD CONSTRAINT `catalogo_p_s_id_empresa_foreign` FOREIGN KEY (`Id_Empresa`) REFERENCES `perfil_empresa` (`Id_Empresa`),
  ADD CONSTRAINT `catalogo_p_s_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `gpnc`
--
ALTER TABLE `gpnc`
  ADD CONSTRAINT `gpnc_id_gpnc_dado_foreign` FOREIGN KEY (`Id_GPNC_Dado`) REFERENCES `gpnc_dado` (`Id_GPNC_Dado`),
  ADD CONSTRAINT `gpnc_id_gpnc_recibido_foreign` FOREIGN KEY (`Id_GPNC_Recibido`) REFERENCES `gpnc_recibido` (`Id_GPNC_Recibido`);

--
-- Filtros para la tabla `gpnc_recibido`
--
ALTER TABLE `gpnc_recibido`
  ADD CONSTRAINT `gpnc_recibido_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `mis_contactos`
--
ALTER TABLE `mis_contactos`
  ADD CONSTRAINT `mis_contactos_id_contacto_foreign` FOREIGN KEY (`Id_Contacto`) REFERENCES `contacto` (`Id_Contacto`),
  ADD CONSTRAINT `mis_contactos_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `notificacion_administrador`
--
ALTER TABLE `notificacion_administrador`
  ADD CONSTRAINT `notificacion_administrador_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `perfil_empresa`
--
ALTER TABLE `perfil_empresa`
  ADD CONSTRAINT `perfil_empresa_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `perfil_usuario_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `registro_evento`
--
ALTER TABLE `registro_evento`
  ADD CONSTRAINT `registro_evento_id_evento_foreign` FOREIGN KEY (`Id_Evento`) REFERENCES `evento` (`Id_Evento`),
  ADD CONSTRAINT `registro_evento_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `registro_invitado_evento`
--
ALTER TABLE `registro_invitado_evento`
  ADD CONSTRAINT `registro_invitado_evento_id_evento_foreign` FOREIGN KEY (`Id_Evento`) REFERENCES `evento` (`Id_Evento`),
  ADD CONSTRAINT `registro_invitado_evento_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `testimonio`
--
ALTER TABLE `testimonio`
  ADD CONSTRAINT `testimonio_id_testimonio_dado_foreign` FOREIGN KEY (`Id_Testimonio_Dado`) REFERENCES `testimonio_dado` (`Id_Testimonio_Dado`),
  ADD CONSTRAINT `testimonio_id_testimonio_recibido_foreign` FOREIGN KEY (`Id_Testimonio_Recibido`) REFERENCES `testimonio_recibido` (`Id_Testimonio_Recibido`);

--
-- Filtros para la tabla `testimonio_dado`
--
ALTER TABLE `testimonio_dado`
  ADD CONSTRAINT `testimonio_dado_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);

--
-- Filtros para la tabla `testimonio_recibido`
--
ALTER TABLE `testimonio_recibido`
  ADD CONSTRAINT `testimonio_recibido_id_usuario_foreign` FOREIGN KEY (`Id_Usuario`) REFERENCES `users` (`Id_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
