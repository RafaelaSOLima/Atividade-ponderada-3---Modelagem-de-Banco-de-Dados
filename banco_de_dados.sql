-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'publicações_do_feed_faça_você_mesmo'
-- 
-- ---

DROP TABLE IF EXISTS `publicações_do_feed_faça_você_mesmo`;
		
CREATE TABLE `publicações_do_feed_faça_você_mesmo` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `texto descritivo` VARCHAR(6000) NULL DEFAULT NULL,
  `imagens` VARBINARY(8) NULL DEFAULT NULL,
  `novo campo` INTEGER NULL DEFAULT NULL,
  `titulo` INTEGER(50) NULL DEFAULT NULL,
  `id_filtro_de_publicação` INT NULL DEFAULT NULL,
  `id_informações_de_usuário` INTEGER NULL DEFAULT NULL,
  `id_interações_da_publicação` INTEGER NULL DEFAULT NULL,
  `id_refizeram_o_projeto` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'refizeram_o_projeto'
-- 
-- ---

DROP TABLE IF EXISTS `refizeram_o_projeto`;
		
CREATE TABLE `refizeram_o_projeto` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_informações_de_usuário` INTEGER NULL DEFAULT NULL,
  `id_publicações_do_feed_faça_você_mesmo` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'informações_de_usuário'
-- 
-- ---

DROP TABLE IF EXISTS `informações_de_usuário`;
		
CREATE TABLE `informações_de_usuário` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `nome` VARCHAR(250) NULL DEFAULT NULL,
  `e-mail` VARCHAR(256) NULL DEFAULT NULL,
  `senha ` VARCHAR(8) NULL DEFAULT NULL,
  `idade` INTEGER(3) NULL DEFAULT NULL,
  `foto de usuário` VARBINARY(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'publicações_do_feed_comum'
-- 
-- ---

DROP TABLE IF EXISTS `publicações_do_feed_comum`;
		
CREATE TABLE `publicações_do_feed_comum` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_interações_da_publicação` INTEGER NULL DEFAULT NULL,
  `titulo ` VARCHAR(65) NULL DEFAULT NULL,
  `imagem` VARBINARY(4) NULL DEFAULT NULL,
  `id_informações_de_usuário` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'interações_da_publicação'
-- 
-- ---

DROP TABLE IF EXISTS `interações_da_publicação`;
		
CREATE TABLE `interações_da_publicação` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `número de curtidas` INTEGER NULL DEFAULT NULL,
  `compartilhamentos` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'publicações_do_feed'
-- 
-- ---

DROP TABLE IF EXISTS `publicações_do_feed`;
		
CREATE TABLE `publicações_do_feed` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_publicações_do_feed_faça_você_mesmo` INTEGER NULL DEFAULT NULL,
  `id_publicações_do_feed_comum` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'filtro_de_publicação'
-- 
-- ---

DROP TABLE IF EXISTS `filtro_de_publicação`;
		
CREATE TABLE `filtro_de_publicação` (
  `id` INT NULL AUTO_INCREMENT DEFAULT NULL,
  `causa animal` INT NULL DEFAULT NULL,
  `idosos` INT NULL DEFAULT NULL,
  `roupas` INT NULL DEFAULT NULL,
  `custo zero` INT NULL DEFAULT NULL,
  `custo baixo` INT NULL DEFAULT NULL,
  `custo alto` INT NULL DEFAULT NULL,
  `custo médio` INT NULL DEFAULT NULL,
  `educação` INT NULL DEFAULT NULL,
  `crianças` INT NULL DEFAULT NULL,
  `alimentos` INT NULL DEFAULT NULL,
  `moradores de rua` INTEGER NULL DEFAULT NULL,
  `tempo ` TIME NULL DEFAULT NULL,
  `artes` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `publicações_do_feed_faça_você_mesmo` ADD FOREIGN KEY (id_filtro_de_publicação) REFERENCES `filtro_de_publicação` (`id`);
ALTER TABLE `publicações_do_feed_faça_você_mesmo` ADD FOREIGN KEY (id_informações_de_usuário) REFERENCES `informações_de_usuário` (`id`);
ALTER TABLE `publicações_do_feed_faça_você_mesmo` ADD FOREIGN KEY (id_interações_da_publicação) REFERENCES `interações_da_publicação` (`id`);
ALTER TABLE `publicações_do_feed_faça_você_mesmo` ADD FOREIGN KEY (id_refizeram_o_projeto) REFERENCES `refizeram_o_projeto` (`id`);
ALTER TABLE `refizeram_o_projeto` ADD FOREIGN KEY (id_informações_de_usuário) REFERENCES `informações_de_usuário` (`id`);
ALTER TABLE `refizeram_o_projeto` ADD FOREIGN KEY (id_publicações_do_feed_faça_você_mesmo) REFERENCES `publicações_do_feed_faça_você_mesmo` (`id`);
ALTER TABLE `publicações_do_feed_comum` ADD FOREIGN KEY (id_interações_da_publicação) REFERENCES `interações_da_publicação` (`id`);
ALTER TABLE `publicações_do_feed_comum` ADD FOREIGN KEY (id_informações_de_usuário) REFERENCES `informações_de_usuário` (`id`);
ALTER TABLE `publicações_do_feed` ADD FOREIGN KEY (id_publicações_do_feed_faça_você_mesmo) REFERENCES `publicações_do_feed_faça_você_mesmo` (`id`);
ALTER TABLE `publicações_do_feed` ADD FOREIGN KEY (id_publicações_do_feed_comum) REFERENCES `publicações_do_feed_comum` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `publicações_do_feed_faça_você_mesmo` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `refizeram_o_projeto` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `informações_de_usuário` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `publicações_do_feed_comum` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `interações_da_publicação` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `publicações_do_feed` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `filtro_de_publicação` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `publicações_do_feed_faça_você_mesmo` (`id`,`texto descritivo`,`imagens`,`novo campo`,`titulo`,`id_filtro_de_publicação`,`id_informações_de_usuário`,`id_interações_da_publicação`,`id_refizeram_o_projeto`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `refizeram_o_projeto` (`id`,`id_informações_de_usuário`,`id_publicações_do_feed_faça_você_mesmo`) VALUES
-- ('','','');
-- INSERT INTO `informações_de_usuário` (`id`,`nome`,`e-mail`,`senha `,`idade`,`foto de usuário`) VALUES
-- ('','','','','','');
-- INSERT INTO `publicações_do_feed_comum` (`id`,`id_interações_da_publicação`,`titulo `,`imagem`,`id_informações_de_usuário`) VALUES
-- ('','','','','');
-- INSERT INTO `interações_da_publicação` (`id`,`número de curtidas`,`compartilhamentos`) VALUES
-- ('','','');
-- INSERT INTO `publicações_do_feed` (`id`,`id_publicações_do_feed_faça_você_mesmo`,`id_publicações_do_feed_comum`) VALUES
-- ('','','');
-- INSERT INTO `filtro_de_publicação` (`id`,`causa animal`,`idosos`,`roupas`,`custo zero`,`custo baixo`,`custo alto`,`custo médio`,`educação`,`crianças`,`alimentos`,`moradores de rua`,`tempo `,`artes`) VALUES
-- ('','','','','','','','','','','','','','');
