use devops_app;
CREATE TABLE `participantes` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(250) NULL DEFAULT NULL,
	`apellido` VARCHAR(250) NULL DEFAULT NULL,
	`localidad` VARCHAR(250) NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `id_index` (`id`) USING BTREE
)
AUTO_INCREMENT=1
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
INSERT INTO `participantes` (`nombre`, `apellido`, `localidad`) VALUES ('Juan Manuel ', 'Roldan', 'Neuquen');
INSERT INTO `participantes` (`nombre`, `apellido`, `localidad`) VALUES ('Cristian', 'Cajal', 'San Miguel');
INSERT INTO `participantes` (`nombre`, `apellido`, `localidad`) VALUES ('Ezequiel ', 'Leiter', NULL);
INSERT INTO `participantes` (`nombre`, `apellido`, `localidad`) VALUES ('Gerardo ', 'Ibarra', 'San Miguel');
