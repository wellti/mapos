SET foreign_key_checks = 0;
#
# TABLE STRUCTURE FOR: anexos
#

DROP TABLE IF EXISTS `anexos`;

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL AUTO_INCREMENT,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  PRIMARY KEY (`idAnexos`),
  KEY `fk_anexos_os1` (`os_id`),
  CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: anotacoes_os
#

DROP TABLE IF EXISTS `anotacoes_os`;

CREATE TABLE `anotacoes_os` (
  `idAnotacoes` int(11) NOT NULL AUTO_INCREMENT,
  `anotacao` varchar(255) NOT NULL,
  `data_hora` datetime NOT NULL,
  `os_id` int(11) NOT NULL,
  PRIMARY KEY (`idAnotacoes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO `anotacoes_os` (`idAnotacoes`, `anotacao`, `data_hora`, `os_id`) VALUES (1, 'sdsdssdsdsd', '2020-05-14 20:42:50', 5);
INSERT INTO `anotacoes_os` (`idAnotacoes`, `anotacao`, `data_hora`, `os_id`) VALUES (2, 'VIATURA ESTAVA EM BURITI', '2020-05-15 15:17:04', 6);


#
# TABLE STRUCTURE FOR: categorias
#

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(80) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('68qd78sa714ssab7r5ti1t33n20ge0mc', '::1', 1589398726, '__ci_last_regenerate|i:1589398726;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9ud21ekfc3ss4t11040aodbok88d5rt1', '::1', 1589399808, '__ci_last_regenerate|i:1589399808;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9nji182k9c62iim14ikngco77n8i4q2k', '::1', 1589400908, '__ci_last_regenerate|i:1589400908;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8tr9jtb26957gc588ifjens4pekt505f', '::1', 1589400560, '__ci_last_regenerate|i:1589400560;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7vk3na0rg14b589lvuld1pcehpc3jh7c', '::1', 1589401551, '__ci_last_regenerate|i:1589401551;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('345i1a49sc8avpp8f449s7isqp8op3ei', '::1', 1589402420, '__ci_last_regenerate|i:1589402420;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8cmabn1evs2bjv716sedm2sadkqlrskv', '::1', 1589402758, '__ci_last_regenerate|i:1589402758;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hagdjkbtvjpmmfeo5mfhe0hp626sojmt', '::1', 1589403147, '__ci_last_regenerate|i:1589403147;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h73bollfkqqamm94j99jme1oeg89csiv', '::1', 1589403596, '__ci_last_regenerate|i:1589403596;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nv210vt5gaua3nnplkm3svb6trk28nt3', '::1', 1589403598, '__ci_last_regenerate|i:1589403596;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jr2uouo8qphbhf32fk5teaceb1m6dhor', '::1', 1589451023, '__ci_last_regenerate|i:1589451023;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ac2hculjr8uvu0f288khkne8468hln66', '::1', 1589451346, '__ci_last_regenerate|i:1589451346;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6ii81567ru4mbfcin6edokg7mhur1ai2', '::1', 1589451675, '__ci_last_regenerate|i:1589451675;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kms65mngejsls0g9jcdqlo68qlcam9n8', '::1', 1589453464, '__ci_last_regenerate|i:1589453464;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1fep1svmtpc5a4uq1j32u3krtet691v4', '::1', 1589458847, '__ci_last_regenerate|i:1589458847;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('25jjk7kgig03q4kj2b5sp4km650nd6n3', '::1', 1589459564, '__ci_last_regenerate|i:1589459564;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mnq51n926l9og5fak7gqn2ng0ids3st3', '::1', 1589460270, '__ci_last_regenerate|i:1589460048;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4u4f57pvvj9mpf81hajn74e67s0a73j2', '::1', 1589460049, '__ci_last_regenerate|i:1589460048;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f1u849rqinvglit1h0bmhn8rkqtnlqsc', '::1', 1589473582, '__ci_last_regenerate|i:1589473582;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('t83886j3df2d4quueqf73ucf603mnrau', '::1', 1589474280, '__ci_last_regenerate|i:1589474280;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j73hpm2n704fpqbvmcu19g3j9lm294ac', '::1', 1589474649, '__ci_last_regenerate|i:1589474649;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('aladr5o86knb2oeckmcpk35qijbjjdgi', '::1', 1589476466, '__ci_last_regenerate|i:1589476466;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6hphedadr11vrcrpdavqkl7t75u9ompb', '::1', 1589476787, '__ci_last_regenerate|i:1589476787;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lvmpmqbrrprno66q0ej8fs3pi9026krv', '::1', 1589476795, '__ci_last_regenerate|i:1589476787;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('letl214lahdphqnnj5kjk9iejus6khtb', '::1', 1589478801, '__ci_last_regenerate|i:1589478801;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l5h64funjstpcnood6ev1tv086kkchvm', '::1', 1589479108, '__ci_last_regenerate|i:1589479108;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kpuhgd5ngcdb1n2k6oo83c3vrd1ut9es', '::1', 1589479420, '__ci_last_regenerate|i:1589479420;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bibscf5tk8rfg9otvi88dt2okedkn9vg', '::1', 1589479727, '__ci_last_regenerate|i:1589479727;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ip52a54bhih8pj621m16s3f4765tppje', '::1', 1589480070, '__ci_last_regenerate|i:1589480070;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0qkoffhf57jkkvosusfml2s0j11cppha', '::1', 1589480632, '__ci_last_regenerate|i:1589480632;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g9d04pqfrgsjgkeftuvpfkn6na2po6u5', '::1', 1589480940, '__ci_last_regenerate|i:1589480940;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ruos9u2nn7flo0qngqv42rbolamqllc1', '::1', 1589481272, '__ci_last_regenerate|i:1589481272;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('82ithmom3nmi41cke5jtuglodkq570u3', '::1', 1589481598, '__ci_last_regenerate|i:1589481598;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4bigc3vj3ip0luuq5l2ctmtpk4mp62vg', '::1', 1589482301, '__ci_last_regenerate|i:1589482301;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dagepiiagekmartpdu05bseabtsggnej', '::1', 1589482630, '__ci_last_regenerate|i:1589482630;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lvmp7sses6oa1ucb3au928kq43d55als', '::1', 1589482948, '__ci_last_regenerate|i:1589482948;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cp6q71ng0qu8su6p45ulg45hd5soie8a', '::1', 1589483321, '__ci_last_regenerate|i:1589483321;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vpiciktnaa6sqvi16sv1afjma81kcjvk', '::1', 1589484396, '__ci_last_regenerate|i:1589484396;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4f8o0f7mmg008t24qiadibsqtki0gkc2', '::1', 1589486182, '__ci_last_regenerate|i:1589486182;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3r5ssgjkhclsr9lqb7hvsqjo3l3nql9u', '::1', 1589486643, '__ci_last_regenerate|i:1589486643;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tuog5p9bbacrhomgpdnnif9omqassb3s', '::1', 1589486947, '__ci_last_regenerate|i:1589486947;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5jkiemeoeqbctebc3acj5gqplm24p615', '::1', 1589487280, '__ci_last_regenerate|i:1589487280;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g37ud99li2rb52uofs14tad2grm7o2co', '::1', 1589487610, '__ci_last_regenerate|i:1589487610;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o2hj60d35h1m3g2aebu957acpavv71tm', '::1', 1589487929, '__ci_last_regenerate|i:1589487929;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5qj230nsgh0mi36ba16084ecd2pomq6d', '::1', 1589488380, '__ci_last_regenerate|i:1589488380;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ajh59ocukq8l5lu2jsu5s5t52fvjark6', '::1', 1589488783, '__ci_last_regenerate|i:1589488783;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('86mmmj182p1dojjv08cglr63v13lq1fh', '::1', 1589488797, '__ci_last_regenerate|i:1589488783;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9871jojuqpv9vovgqngrl22nac3vebq9', '::1', 1589536007, '__ci_last_regenerate|i:1589536007;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gfv5699gs43l840pjqfrm9cda3ec31e3', '::1', 1589538699, '__ci_last_regenerate|i:1589538699;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('09nk4cfcq01ifqsaamrkmte4hdmhh612', '::1', 1589539178, '__ci_last_regenerate|i:1589539178;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('st28p6qvv0eodnk2de6084t2u14987ft', '::1', 1589539527, '__ci_last_regenerate|i:1589539527;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hubgddous7tqampp9ql3tdptg54ud30j', '::1', 1589543383, '__ci_last_regenerate|i:1589543383;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ln1ikhb2deb62ookk18aqopkv530qeua', '::1', 1589548414, '__ci_last_regenerate|i:1589548414;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('548gkstcl9b3pcprs5nq9jp81pa6g741', '::1', 1589548764, '__ci_last_regenerate|i:1589548764;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bve4dno3ths5q7sbb834d05fi6c6kjeo', '::1', 1589549173, '__ci_last_regenerate|i:1589549173;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kel5koos3t0rqkj1cti47j08vqqim3mb', '::1', 1589550362, '__ci_last_regenerate|i:1589550362;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('aki7cuv3lpoo50vtg13l18alug41vecj', '::1', 1589550924, '__ci_last_regenerate|i:1589550924;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('k0j51gpsnmoer66tq5vf9gfkpml5b72c', '::1', 1589551168, '__ci_last_regenerate|i:1589550924;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i3hku37kksj94hjmc3nfkmb5k8uesgd0', '::1', 1589567446, '__ci_last_regenerate|i:1589567446;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5obkq15g8hu4843dsjt2l183n64vdkph', '::1', 1589567769, '__ci_last_regenerate|i:1589567769;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d8an48438laae980h3heflog83s7l1to', '::1', 1589568093, '__ci_last_regenerate|i:1589568093;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('45f01h7d1itk2fgakm0emsv42ci9a9t4', '::1', 1589568487, '__ci_last_regenerate|i:1589568487;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h84j47hov7kls10ebovo1beql1sjgths', '::1', 1589568981, '__ci_last_regenerate|i:1589568981;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;success|s:117:\"OS adicionada com sucesso, você pode adicionar produtos ou serviços a essa OS nas abas de \"Produtos\" e \"Serviços\"!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8bupmqtbohr7ugrmfn04cbuk4qdonusj', '::1', 1589569432, '__ci_last_regenerate|i:1589569432;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e4p9j0890rmupqrtk95ubakpk2vvmd1u', '::1', 1589569734, '__ci_last_regenerate|i:1589569734;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5j666sb8mibksuk3s4j3nomrglaqist3', '::1', 1589570062, '__ci_last_regenerate|i:1589570062;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('39nu90ushpsuopto9o7had48efec0n7k', '::1', 1589570382, '__ci_last_regenerate|i:1589570382;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tt0f9b6j8iajikqqj1hbg4lpkicag34t', '::1', 1589570817, '__ci_last_regenerate|i:1589570817;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f5npi3bskpll7lk13ml5kg2fs52qoofs', '::1', 1589571141, '__ci_last_regenerate|i:1589571141;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('eln5v5lbup2hu8utv57mvhkpn7kaf49q', '::1', 1589571842, '__ci_last_regenerate|i:1589571842;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s1pbphcm4g4jm0fv6m2si8jk65uqkbtu', '::1', 1589572416, '__ci_last_regenerate|i:1589572416;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8j7gb3bbkohhl28rhkr9kucirns6lfo7', '::1', 1589572767, '__ci_last_regenerate|i:1589572767;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('se38tkuv2hofniddikt0us7cg3jr5c0e', '::1', 1589574381, '__ci_last_regenerate|i:1589574381;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qfcqhgim9vuuv32qg4q3hr68h2pa8q2u', '::1', 1589574389, '__ci_last_regenerate|i:1589574383;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('progreu0qv89cvpbalbhd1ss6g4lesu0', '::1', 1589623485, '__ci_last_regenerate|i:1589623456;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('78gnp3eesdps9p92p1r9vmlqblsc9vkl', '::1', 1589633936, '__ci_last_regenerate|i:1589633936;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ml98ok8vh1s8m7v053grr01shhf4ahvr', '::1', 1589637481, '__ci_last_regenerate|i:1589637481;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uch3782ve4qrrntovakl9pto62ii5ikc', '::1', 1589637513, '__ci_last_regenerate|i:1589637481;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;success|s:28:\"Produto editado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m17jfmk66ugpcg698cudbta0h96iohmj', '::1', 1589650258, '__ci_last_regenerate|i:1589650246;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lvbnn6vcrsftkpemq9ti3ntmm8b63elk', '::1', 1589657924, '__ci_last_regenerate|i:1589657922;nome|s:7:\"Cleyton\";email|s:24:\"cleytonandrade@gmail.com\";id|s:1:\"1\";permissao|s:1:\"1\";logado|b:1;');


#
# TABLE STRUCTURE FOR: clientes
#

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pessoa_fisica` tinyint(1) NOT NULL DEFAULT 1,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (12, 'VT01', NULL, 1, '', '', NULL, '', NULL, 'QSMS', 'AMBULÂNCIA', NULL, NULL, NULL, NULL, 'HLY-8197', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (13, 'VT02', NULL, 1, '', '', NULL, '', NULL, 'APOIO BASE', 'HILUX CD', NULL, NULL, NULL, NULL, 'KON-8600', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (14, 'VT03', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'HBN-9259', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (15, 'VT04', NULL, 1, '', '', NULL, '', NULL, 'QHSE', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYK-7121', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (16, 'VT05', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYK-7120', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (17, 'VT07', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYK-7123', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (18, 'VT08', NULL, 1, '', '', NULL, '', NULL, 'ADM', 'HILUX CD', NULL, NULL, NULL, NULL, 'KWJ-5104', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (19, 'VT09', NULL, 1, '', '', NULL, '', NULL, 'QHSE', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYJ-6883', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (20, 'VT10', NULL, 1, '', '', NULL, '', NULL, 'QSMS', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYZ-4378', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (21, 'VT11', NULL, 1, '', '', NULL, '', NULL, 'MECANICO', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYL-5102', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (22, 'VT12', NULL, 1, '', '', NULL, '', NULL, 'T.I', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYY-2436', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (23, 'VT13', NULL, 1, '', '', NULL, '', NULL, 'QHSE', 'HILUX CD', NULL, NULL, NULL, NULL, 'KON-8596', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (24, 'VT14', NULL, 1, '', '', NULL, '', NULL, 'APOIO BASE', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYX-3951', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (25, 'VT15', NULL, 1, '', '', NULL, '', NULL, 'APOIO', 'HILUX CD', NULL, NULL, NULL, NULL, 'KYK-7124', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (26, 'VT20', NULL, 1, '', '', NULL, '', NULL, 'QHSE', 'HILUX AMB', NULL, NULL, NULL, NULL, 'AYP-5049', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (27, 'VT21', NULL, 1, '', '', NULL, '', NULL, 'TOP - 07', 'JEEPÃO', NULL, NULL, NULL, NULL, 'HOP-0144', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (28, 'VT22', NULL, 1, '', '', NULL, '', NULL, 'SONDA-05', 'JEEPÃO', NULL, NULL, NULL, NULL, 'KGH-8862', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (29, 'VT23', NULL, 1, '', '', NULL, '', NULL, NULL, 'JEEPÃO', NULL, NULL, NULL, NULL, 'KIN-2938', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (30, 'VT24', NULL, 1, '', '', NULL, '', NULL, 'TOP-05', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JMX-9931', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (31, 'VT25', NULL, 1, '', '', NULL, '', NULL, 'SONDA-07', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JNK-0131', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (32, 'VT26', NULL, 1, '', '', NULL, '', NULL, 'TOP-04', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JKZ-8947', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (33, 'VT27', NULL, 1, '', '', NULL, '', NULL, 'RESERVA', 'JEEPÃO', NULL, NULL, NULL, NULL, 'KCW-1891', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (34, 'VT31', NULL, 1, '', '', NULL, '', NULL, 'R.A-03', 'JEEPÃO', NULL, NULL, NULL, NULL, 'KME-4695', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (35, 'VT30', NULL, 1, '', '', NULL, '', NULL, 'R.A-01', 'JEEPÃO', NULL, NULL, NULL, NULL, 'HZS-3643', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (36, 'VT33', NULL, 1, '', '', NULL, '', NULL, 'TOPO-10', 'JEEPÃO', NULL, NULL, NULL, NULL, 'KFQ-9471', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (37, 'VT35', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'PDJ-3437', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (38, 'VT36', NULL, 1, '', '', NULL, '', NULL, 'CARREGAMENTO', 'HILUX CS', NULL, NULL, NULL, NULL, 'AYK-3973', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (39, 'VT37', NULL, 1, '', '', NULL, '', NULL, 'CARREGAMENTO', 'HILUX CS', NULL, NULL, NULL, NULL, 'AYI-1856', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (40, 'VT39', NULL, 1, '', '', NULL, '', NULL, 'DETONAÇÃO', 'HILUX CD', NULL, NULL, NULL, NULL, 'PDJ-1277', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (41, 'VT42', NULL, 1, '', '', NULL, '', NULL, 'COORD-SISMO', 'HILUX CD', NULL, NULL, NULL, NULL, 'PED-4729', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (42, 'VT43', NULL, 1, '', '', NULL, '', NULL, 'SONDA-03', 'JEEPÃO', NULL, NULL, NULL, NULL, 'LVP-4393', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (43, 'VT44', NULL, 1, '', '', NULL, '', NULL, 'SONDA -06', 'JEEPÃO', NULL, NULL, NULL, NULL, 'HUF-7532', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (44, 'VT45', NULL, 1, '', '', NULL, '', NULL, 'SONDA-04', 'JEEPÃO', NULL, NULL, NULL, NULL, 'MMN-4166', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (45, 'VT48', NULL, 1, '', '', NULL, '', NULL, 'APOIO SISMO', 'F4000 VERDE', NULL, NULL, NULL, NULL, 'NNC-0439', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (46, 'VT50', NULL, 1, '', '', NULL, '', NULL, 'SISMO-B1', 'JEEPÃO', NULL, NULL, NULL, NULL, 'MNN-0109', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (47, 'VT51', NULL, 1, '', '', NULL, '', NULL, 'SISMO B', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JNM-3826', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (48, 'VT52', NULL, 1, '', '', NULL, '', NULL, 'CARREGAMEN-01', 'JEEPÃO', NULL, NULL, NULL, NULL, 'NEL-2816', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (49, 'VT53', NULL, 1, '', '', NULL, '', NULL, NULL, 'JEEPÃO', NULL, NULL, NULL, NULL, 'NBX-0239', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (50, 'VT55', NULL, 1, '', '', NULL, '', NULL, 'OBSERVADORES', 'HILUX CD', NULL, NULL, NULL, NULL, 'QDM-1237', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (51, 'VT56', NULL, 1, '', '', NULL, '', NULL, 'SISMO-A-1', 'JEEPÃO', NULL, NULL, NULL, NULL, 'KMB-7479', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (52, 'VT58', NULL, 1, '', '', NULL, '', NULL, 'QHSE', 'MERC 710', NULL, NULL, NULL, NULL, 'DXA-4931', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (53, 'VT59', NULL, 1, '', '', NULL, '', NULL, 'APOIO BASE', 'F4000', NULL, NULL, NULL, NULL, 'OOS-2511', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (54, 'VT63', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'PYU-4866', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (55, 'VT64', NULL, 1, '', '', NULL, '', NULL, 'SISMO', 'HILUX CS', NULL, NULL, NULL, NULL, 'AYQ-3701', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (56, 'VT67', NULL, 1, '', '', NULL, '', NULL, 'SISMO-A-2', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JKZ-6404', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (57, 'VT71', NULL, 1, '', '', NULL, '', NULL, 'CARREGAMENT-02', 'JEEPÃO', NULL, NULL, NULL, NULL, 'LVK-7848', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (58, 'VT73', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'QEL-0201', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (59, 'VT74', NULL, 1, '', '', NULL, '', NULL, 'REVISAO', 'HILUX CD', NULL, NULL, NULL, NULL, 'PYK-0678', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (60, 'VT75', NULL, 1, '', '', NULL, '', NULL, NULL, 'HILUX CD', NULL, NULL, NULL, NULL, 'PYK-8988', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (61, 'VT76', NULL, 1, '', '', NULL, '', NULL, 'APOIO R.A', 'HILUX CD', NULL, NULL, NULL, NULL, 'PCQ-1405', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (62, 'VT77', NULL, 1, '', '', NULL, '', NULL, 'DETONAÇÃO', 'HILUX CD', NULL, NULL, NULL, NULL, 'PZQ-3708', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (63, 'VT78', NULL, 1, '', '', NULL, '', NULL, 'SISMO', 'HILUX CS', NULL, NULL, NULL, NULL, 'BBD-5089', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (64, 'VT79', NULL, 1, '', '', NULL, '', NULL, 'COORD.TOPOG.', 'HILUS CD', NULL, NULL, NULL, NULL, 'QDU-9048', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (65, 'VT80', NULL, 1, '', '', NULL, '', NULL, 'CASA BRANCA', 'F4000', NULL, NULL, NULL, NULL, 'PSG-8710', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (66, 'VT81', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX CD', NULL, NULL, NULL, NULL, 'QDP-9358', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (67, 'VT82', NULL, 1, '', '', NULL, '', NULL, 'TOP-08', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JMS-1878', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (68, 'VT83', NULL, 1, '', '', NULL, '', NULL, 'CHEFIA ', 'HILUX CD', NULL, NULL, NULL, NULL, 'OAS-4402', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (69, 'VT84', NULL, 1, '', '', NULL, '', NULL, 'CAMINHÃO', 'FORD CARGO', NULL, NULL, NULL, NULL, 'JVU-3068', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (70, 'VT85', NULL, 1, '', '', NULL, '', NULL, 'DETONAÇÃO', 'HILUX CD', NULL, NULL, NULL, NULL, 'QEM-3309', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (71, 'VT86', NULL, 1, '', '', NULL, '', NULL, 'ADM', 'AMAROK', NULL, NULL, NULL, NULL, 'PKU-3506', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (72, 'VT87', NULL, 1, '', '', NULL, '', NULL, 'DETONAÇAO', 'HILUX CD', NULL, NULL, NULL, NULL, 'QPN-9039', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (73, 'VT91', NULL, 1, '', '', NULL, '', NULL, 'QSMS', 'HILUX CD', NULL, NULL, NULL, NULL, 'PLE-7449', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (74, 'VT92', NULL, 1, '', '', NULL, '', NULL, 'COORD.SONDA', 'HILUX CD', NULL, NULL, NULL, NULL, 'PLG-6853', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (75, 'VT93', NULL, 1, '', '', NULL, '', NULL, 'REVISAO', 'HILUX CD', NULL, NULL, NULL, NULL, 'PLG-9863', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (76, 'VT94', NULL, 1, '', '', NULL, '', NULL, 'APOIO', 'HILUX CD', NULL, NULL, NULL, NULL, 'PLF-4308', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (77, 'VT95', NULL, 1, '', '', NULL, '', NULL, 'CORD TOP', 'HILUX CD', NULL, NULL, NULL, NULL, 'QPG-5749', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (78, 'VT96', NULL, 1, '', '', NULL, '', NULL, 'APOIO SISMO-B', 'HILUX CS', NULL, NULL, NULL, NULL, 'QND-8854', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (79, 'VT97', NULL, 1, '', '', NULL, '', NULL, 'APOIO SISMO-A', 'HILUX CS', NULL, NULL, NULL, NULL, 'QND-8858', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (80, 'VT98', NULL, 1, '', '', NULL, '', NULL, 'COORD.TOPOG.', 'HILUX CD', NULL, NULL, NULL, NULL, 'PYY-3812', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (81, 'VT99', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX-CD', NULL, NULL, NULL, NULL, 'QND-8365', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (82, 'VT100', NULL, 1, '', '', NULL, '', NULL, 'TOP-01', 'JEEPÃO', NULL, NULL, NULL, NULL, 'JNK-4381', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (83, 'VT101', NULL, 1, '', '', NULL, '', NULL, 'SISMO', 'HILUX-CS', NULL, NULL, NULL, NULL, 'QNQ-9810', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (84, 'VT102', NULL, 1, '', '', NULL, '', NULL, 'COORD-SONDA', 'HILUX-CD', NULL, NULL, NULL, NULL, 'QEL-0A79', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (85, 'VT104', NULL, 1, '', '', NULL, '', NULL, 'TOP-06', 'JEEPÃO', NULL, NULL, NULL, NULL, 'CCJ-7328', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (86, 'VT105', NULL, 1, '', '', NULL, '', NULL, 'PERMISSORIA', 'HILUX-CD', NULL, NULL, NULL, NULL, 'QDM-2657', NULL);
INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`) VALUES (87, 'VT201', NULL, 1, '12122121', '', '', '', '2020-05-15', 'TI', 'JEEPAO', '', '', '', '', 'NNO-6285', '');


#
# TABLE STRUCTURE FOR: configuracoes
#

DROP TABLE IF EXISTS `configuracoes`;

CREATE TABLE `configuracoes` (
  `idConfig` int(11) NOT NULL AUTO_INCREMENT,
  `config` varchar(20) NOT NULL,
  `valor` varchar(20) NOT NULL,
  PRIMARY KEY (`idConfig`),
  UNIQUE KEY `config` (`config`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES (2, 'app_name', 'WS TRANSPORTES');
INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES (3, 'app_theme', 'white');
INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES (4, 'per_page', '50');
INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES (5, 'os_notification', 'cliente');
INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES (6, 'control_estoque', '1');


#
# TABLE STRUCTURE FOR: contas
#

DROP TABLE IF EXISTS `contas`;

CREATE TABLE `contas` (
  `idContas` int(11) NOT NULL AUTO_INCREMENT,
  `conta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idContas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: documentos
#

DROP TABLE IF EXISTS `documentos`;

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDocumentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: email_queue
#

DROP TABLE IF EXISTS `email_queue`;

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (5, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 6<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 16/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Orçamento                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 15:15:47', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (6, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 6<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 16/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Aberto                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                <tr class=\"heading\">\r\n                    <td>Serviço</td>\r\n                    <td>Quantidade</td>\r\n                    <td>Preço unit.</td>\r\n                    <td style=\"text-align: center\">Sub-total</td>\r\n                </tr>\r\n\r\n                <tr class=\"item\"><td>TROCA DE OLEO</td><td>1</td><td>0.00</td><td>R$ 0,00</td></tr>\r\n                <tr class=\"item\">\r\n                    <td colspan=\"3\"></td>\r\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 0,00</strong></td>\r\n                </tr>\r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 15:20:55', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (7, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 6<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 16/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Aberto                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                <tr class=\"heading\">\r\n                    <td>Serviço</td>\r\n                    <td>Quantidade</td>\r\n                    <td>Preço unit.</td>\r\n                    <td style=\"text-align: center\">Sub-total</td>\r\n                </tr>\r\n\r\n                <tr class=\"item\"><td>TROCA DE OLEO</td><td>1</td><td>0.00</td><td>R$ 0,00</td></tr>\r\n                <tr class=\"item\">\r\n                    <td colspan=\"3\"></td>\r\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 0,00</strong></td>\r\n                </tr>\r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 15:20:56', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (8, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 6<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 16/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Aberto                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                <tr class=\"heading\">\r\n                    <td>Produto</td>\r\n                    <td>Quantidade</td>\r\n                    <td>Preço unit.</td>\r\n                    <td style=\"text-align: center\">Sub-total</td>\r\n                </tr>\r\n\r\n                <tr class=\"item\"><td>MANGUEIRA DE RADIADOR</td><td>1</td><td><td style=\"text-align: center\">R$ 0,00</td></tr>\r\n                <tr class=\"item\">\r\n                    <td colspan=\"3\"></td>\r\n                    <td style=\"text-align: center\"><strong>Total em Produtos: R$ 0,00</strong></td>\r\n                </tr>\r\n            \r\n            \r\n                <tr class=\"heading\">\r\n                    <td>Serviço</td>\r\n                    <td>Quantidade</td>\r\n                    <td>Preço unit.</td>\r\n                    <td style=\"text-align: center\">Sub-total</td>\r\n                </tr>\r\n\r\n                <tr class=\"item\"><td>TROCA DE OLEO</td><td>1</td><td>0.00</td><td>R$ 0,00</td></tr>\r\n                <tr class=\"item\">\r\n                    <td colspan=\"3\"></td>\r\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 0,00</strong></td>\r\n                </tr>\r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 15:22:22', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (9, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 7<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 16/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Aberto                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 20:52:50', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (10, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 8<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 15/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Aberto                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 21:18:40', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (11, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 8<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 15/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Em Andamento                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 21:20:11', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (12, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 9<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 15/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Aberto                </td>\r\n            </tr>\r\n\r\n                            <tr class=\"details\">\r\n                    <td colspan=\"2\">\r\n                        Garantia\r\n                    </td>\r\n\r\n                    <td colspan=\"2\" style=\"text-align: center\">\r\n                        3                    </td>\r\n                </tr>\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 21:29:44', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES (13, '', NULL, NULL, '\r\n<!doctype html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <style>\r\n        .invoice-box {\r\n            max-width: 1100px;\r\n            margin: auto;\r\n            padding: 10px;\r\n            border: 1px solid #eee;\r\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\r\n            font-size: 16px;\r\n            line-height: 24px;\r\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n            color: #555;\r\n        }\r\n\r\n        .invoice-box table {\r\n            width: 100%;\r\n            line-height: inherit;\r\n            text-align: left;\r\n        }\r\n\r\n        .invoice-box table td {\r\n            padding: 5px;\r\n            vertical-align: top;\r\n        }\r\n\r\n        .invoice-box table tr td:nth-child(2) {\r\n            text-align: right;\r\n        }\r\n\r\n        .invoice-box table tr.top table td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.top table td.title {\r\n            font-size: 45px;\r\n            line-height: 45px;\r\n            color: #333;\r\n        }\r\n\r\n        .invoice-box table tr.information table td {\r\n            padding-bottom: 40px;\r\n        }\r\n\r\n        .invoice-box table tr.heading td {\r\n            background: #eee;\r\n            border-bottom: 1px solid #ddd;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .invoice-box table tr.details td {\r\n            padding-bottom: 20px;\r\n        }\r\n\r\n        .invoice-box table tr.item td {\r\n            border-bottom: 1px solid #eee;\r\n        }\r\n\r\n        .invoice-box table tr.item.last td {\r\n            border-bottom: none;\r\n        }\r\n\r\n        .invoice-box table tr.total td:nth-child(2) {\r\n            border-top: 2px solid #eee;\r\n            font-weight: bold;\r\n        }\r\n\r\n        @media only screen and (max-width: 600px) {\r\n            .invoice-box table tr.top table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n\r\n            .invoice-box table tr.information table td {\r\n                width: 100%;\r\n                display: block;\r\n                text-align: center;\r\n            }\r\n        }\r\n\r\n        /** RTL **/\r\n        .rtl {\r\n            direction: rtl;\r\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\r\n        }\r\n\r\n        .rtl table {\r\n            text-align: right;\r\n        }\r\n\r\n        .rtl table tr td:nth-child(2) {\r\n            text-align: left;\r\n        }\r\n\r\n        .justify {\r\n            text-align: justify;\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"invoice-box\">\r\n        <table cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr class=\"top\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td class=\"title\">\r\n                                <img src=\"http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png\" style=\"width:100%; max-width:120px;\">\r\n                            </td>\r\n                            <td style=\"text-align: right\">\r\n                                OS #: 10<br>\r\n                                Data Inicial: 15/05/2020 <br>\r\n                                Data Final: 30/05/2020                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"information\">\r\n                <td colspan=\"4\">\r\n                    <table>\r\n                        <tr>\r\n                            <td>\r\n                                Cliente: VT201<br>\r\n                                TI, JEEPAO, <br>\r\n                                 -  <br>\r\n                                 <br>\r\n                                                            </td>\r\n\r\n                            <td style=\"text-align: right\">\r\n                                WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA <br>\r\n                                Responsável: Cleyton<br>\r\n                                cleytonandrade@gmail.com                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"2\">\r\n                    Status\r\n                </td>\r\n                <td colspan=\"2\" style=\"text-align: center\">\r\n                    Em Andamento                </td>\r\n            </tr>\r\n\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n                        <tr class=\"heading\">\r\n                <td colspan=\"4\">\r\n                    <br>\r\n                </td>\r\n            </tr>\r\n\r\n            <tr class=\"heading\">\r\n                <td colspan=\"3\"></td>\r\n                <td style=\"text-align: center\">\r\n                    <strong>Total: R$ 0,00</strong>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>\r\n', 'pending', '2020-05-15 21:30:21', 'a:3:{s:4:\"From\";s:15:\"admin@admin.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');


#
# TABLE STRUCTURE FOR: emitente
#

DROP TABLE IF EXISTS `emitente`;

CREATE TABLE `emitente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`) VALUES (1, 'WELLFIELD SERVIÇOS GEOFISICOS DO BRASIL LTDA', '20.609.076/0004-79', '000', 'ABIL MONTEIRO', '2323', 'CENTRO', 'Entre Rios', 'BA', '0800878786', 'admin@admin.com', 'http://localhost:8080/wstransporte/assets/uploads/dc1242f2fb17667ab39256c523d15b61.png');


#
# TABLE STRUCTURE FOR: equipamentos
#

DROP TABLE IF EXISTS `equipamentos`;

CREATE TABLE `equipamentos` (
  `idEquipamentos` int(11) NOT NULL AUTO_INCREMENT,
  `equipamento` varchar(150) NOT NULL,
  `num_serie` varchar(80) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `tensao` varchar(45) DEFAULT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `voltagem` varchar(45) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `marcas_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEquipamentos`),
  KEY `fk_equipanentos_marcas1_idx` (`marcas_id`),
  KEY `fk_equipanentos_clientes1_idx` (`clientes_id`),
  CONSTRAINT `fk_equipanentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipanentos_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`idMarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: equipamentos_os
#

DROP TABLE IF EXISTS `equipamentos_os`;

CREATE TABLE `equipamentos_os` (
  `idEquipamentos_os` int(11) NOT NULL AUTO_INCREMENT,
  `defeito_declarado` varchar(200) DEFAULT NULL,
  `defeito_encontrado` varchar(200) DEFAULT NULL,
  `solucao` varchar(45) DEFAULT NULL,
  `equipamentos_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEquipamentos_os`),
  KEY `fk_equipamentos_os_equipanentos1_idx` (`equipamentos_id`),
  KEY `fk_equipamentos_os_os1_idx` (`os_id`),
  CONSTRAINT `fk_equipamentos_os_equipanentos1` FOREIGN KEY (`equipamentos_id`) REFERENCES `equipamentos` (`idEquipamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipamentos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: garantias
#

DROP TABLE IF EXISTS `garantias`;

CREATE TABLE `garantias` (
  `idGarantias` int(11) NOT NULL AUTO_INCREMENT,
  `dataGarantia` date DEFAULT NULL,
  `refGarantia` varchar(15) DEFAULT NULL,
  `textoGarantia` text DEFAULT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGarantias`),
  KEY `fk_garantias_usuarios1` (`usuarios_id`),
  CONSTRAINT `fk_garantias_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: itens_de_vendas
#

DROP TABLE IF EXISTS `itens_de_vendas`;

CREATE TABLE `itens_de_vendas` (
  `idItens` int(11) NOT NULL AUTO_INCREMENT,
  `subTotal` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  PRIMARY KEY (`idItens`),
  KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  KEY `fk_itens_de_vendas_produtos1` (`produtos_id`),
  CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: lancamentos
#

DROP TABLE IF EXISTS `lancamentos`;

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT 0,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `contas_id` int(11) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLancamentos`),
  KEY `fk_lancamentos_clientes1` (`clientes_id`),
  KEY `fk_lancamentos_categorias1_idx` (`categorias_id`),
  KEY `fk_lancamentos_contas1_idx` (`contas_id`),
  CONSTRAINT `fk_lancamentos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lancamentos_contas1` FOREIGN KEY (`contas_id`) REFERENCES `contas` (`idContas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLogs`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4;

INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (1, 'Cleyton', 'Efetuou login no sistema', '2020-05-12', '12:22:02', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (2, 'Cleyton', 'Adicionou um cliente.', '2020-05-12', '12:38:24', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (3, 'Cleyton', 'Removeu um cliente. ID1', '2020-05-12', '12:38:35', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (4, 'Cleyton', 'Adicionou um cliente.', '2020-05-12', '12:39:24', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (5, 'Cleyton', 'Removeu um cliente. ID2', '2020-05-12', '12:39:30', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (6, 'Cleyton', 'Efetuou login no sistema', '2020-05-12', '12:51:33', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (7, 'Cleyton', 'Efetuou login no sistema', '2020-05-12', '12:58:58', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (8, 'Cleyton', 'Adicionou um cliente.', '2020-05-12', '13:36:43', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (9, 'Cleyton', 'Alterou um cliente. ID3', '2020-05-12', '13:42:44', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (10, 'Cleyton', 'Removeu um cliente. ID3', '2020-05-12', '13:52:37', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (11, 'Cleyton', 'Efetuou login no sistema', '2020-05-12', '13:54:29', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (12, 'Cleyton', 'Adicionou um produto', '2020-05-12', '16:23:16', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (13, 'Cleyton', 'Alterou um produto. ID: 1', '2020-05-12', '16:25:02', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (14, 'Cleyton', 'Efetuou login no sistema', '2020-05-13', '11:34:31', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (15, 'Cleyton', 'Efetuou login no sistema', '2020-05-13', '21:33:48', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (16, 'Cleyton', 'Adicionou um serviço', '2020-05-13', '21:38:53', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (17, 'Cleyton', 'Adicionou um serviço', '2020-05-13', '21:38:53', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (18, 'Cleyton', 'Removeu um serviço. ID: 1', '2020-05-13', '21:39:04', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (19, 'Cleyton', 'Removeu um serviço. ID: 2', '2020-05-13', '21:39:06', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (20, 'Cleyton', 'Adicionou um serviço', '2020-05-13', '21:39:13', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (21, 'Cleyton', 'Adicionou um serviço', '2020-05-13', '21:39:13', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (22, 'Cleyton', 'Removeu um serviço. ID: 3', '2020-05-13', '21:39:18', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (23, 'Cleyton', 'Removeu um serviço. ID: 3', '2020-05-13', '21:39:18', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (24, 'Cleyton', 'Removeu um serviço. ID: 4', '2020-05-13', '21:39:20', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (25, 'Cleyton', 'Adicionou um cliente.', '2020-05-13', '22:11:33', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (26, 'Cleyton', 'Efetuou login no sistema', '2020-05-13', '22:25:52', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (27, 'Cleyton', 'Adicionou um cliente.', '2020-05-13', '22:26:40', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (28, 'Cleyton', 'Adicionou uma OS', '2020-05-13', '22:52:27', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (29, 'Cleyton', 'Efetuou login no sistema', '2020-05-14', '11:44:44', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (30, 'Cleyton', 'Removeu um cliente. ID4', '2020-05-14', '12:10:31', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (31, 'Cleyton', 'Removeu um cliente. ID5', '2020-05-14', '12:10:33', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (32, 'Cleyton', 'Adicionou um cliente.', '2020-05-14', '12:10:54', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (33, 'Cleyton', 'Alterou um cliente. ID6', '2020-05-14', '12:16:02', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (34, 'Cleyton', 'Removeu um cliente. ID6', '2020-05-14', '12:16:14', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (35, 'Cleyton', 'Adicionou um cliente.', '2020-05-14', '12:20:13', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (36, 'Cleyton', 'Adicionou uma OS', '2020-05-14', '12:21:30', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (37, 'Cleyton', 'Alterou um produto. ID: 1', '2020-05-14', '12:55:46', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (38, 'Cleyton', 'Adicionou uma OS', '2020-05-14', '14:41:26', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (39, 'Cleyton', 'Efetuou login no sistema', '2020-05-14', '18:26:25', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (40, 'Cleyton', 'Removeu uma OS. ID: 2', '2020-05-14', '18:26:31', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (41, 'Cleyton', 'Adicionou um serviço', '2020-05-14', '18:28:38', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (42, 'Cleyton', 'Alterou um produto. ID: 1', '2020-05-14', '18:38:09', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (43, 'Cleyton', 'Removeu uma OS. ID: 3', '2020-05-14', '18:38:18', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (44, 'Cleyton', 'Adicionou uma OS', '2020-05-14', '18:38:28', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (45, 'Cleyton', 'Efetuou login no sistema', '2020-05-14', '19:14:34', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (46, 'Cleyton', 'Efetuou login no sistema', '2020-05-14', '19:48:06', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (47, 'Cleyton', 'Adicionou produto a uma OS. ID (OS): 4', '2020-05-14', '19:49:22', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (48, 'Cleyton', 'Adicionou informações de emitente.', '2020-05-14', '19:51:31', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (49, 'Cleyton', 'Atualizou estoque de um produto. ID: 1', '2020-05-14', '19:53:21', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (50, 'Cleyton', 'Removeu produto de uma OS. ID (OS): 4', '2020-05-14', '19:56:49', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (51, 'Cleyton', 'Adicionou serviço a uma OS. ID (OS): 4', '2020-05-14', '19:57:37', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (52, 'Cleyton', 'Alterou um cliente. ID7', '2020-05-14', '20:27:45', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (53, 'Cleyton', 'Adicionou produto a uma OS. ID (OS): 4', '2020-05-14', '20:34:42', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (54, 'Cleyton', 'Enviou e-mail para o cliente: VT200. E-mail: ', '2020-05-14', '20:35:03', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (55, 'Cleyton', 'Adicionou um cliente.', '2020-05-14', '20:40:24', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (56, 'Cleyton', 'Adicionou um produto', '2020-05-14', '20:41:00', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (57, 'Cleyton', 'Adicionou um serviço', '2020-05-14', '20:41:17', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (58, 'Cleyton', 'Adicionou uma OS', '2020-05-14', '20:41:59', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (59, 'Cleyton', 'Alterou uma OS. ID: 5', '2020-05-14', '20:42:17', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (60, 'Cleyton', 'Adicionou produto a uma OS. ID (OS): 5', '2020-05-14', '20:42:28', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (61, 'Cleyton', 'Adicionou serviço a uma OS. ID (OS): 5', '2020-05-14', '20:42:35', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (62, 'Cleyton', 'Adicionou anexo(s) a uma OS. ID (OS): 5', '2020-05-14', '20:42:45', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (63, 'Cleyton', 'Adicionou anotação a uma OS. ID (OS): 5', '2020-05-14', '20:42:50', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (64, 'Cleyton', 'Alterou uma OS. ID: 5', '2020-05-14', '20:43:05', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (65, 'Cleyton', 'Efetuou login no sistema', '2020-05-14', '20:43:59', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (66, 'Cleyton', 'Efetuou login no sistema', '2020-05-14', '20:45:09', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (67, 'Cleyton', 'Adicionou um cliente.', '2020-05-14', '20:52:11', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (68, 'Cleyton', 'Alterou um cliente. ID9', '2020-05-14', '20:53:04', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (69, 'Cleyton', 'Adicionou serviço a uma OS. ID (OS): 5', '2020-05-14', '21:02:42', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (70, 'Cleyton', 'Adicionou serviço a uma OS. ID (OS): 5', '2020-05-14', '21:03:45', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (71, 'Cleyton', 'Removeu serviço de uma OS. ID (OS): 5', '2020-05-14', '21:03:47', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (72, 'Cleyton', 'Removeu serviço de uma OS. ID (OS): 5', '2020-05-14', '21:03:48', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (73, 'Cleyton', 'Removeu serviço de uma OS. ID (OS): 5', '2020-05-14', '21:03:49', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (74, 'Cleyton', 'Removeu uma OS. ID: 4', '2020-05-14', '21:03:53', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (75, 'Cleyton', 'Removeu uma OS. ID: 5', '2020-05-14', '21:03:55', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (76, 'Cleyton', 'Removeu um serviço. ID: 5', '2020-05-14', '21:04:02', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (77, 'Cleyton', 'Removeu um serviço. ID: 6', '2020-05-14', '21:04:05', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (78, 'Cleyton', 'Removeu um produto. ID: 1', '2020-05-14', '21:04:11', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (79, 'Cleyton', 'Removeu um produto. ID: 2', '2020-05-14', '21:04:13', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (80, 'Cleyton', 'Removeu um cliente. ID7', '2020-05-14', '21:04:18', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (81, 'Cleyton', 'Removeu um cliente. ID9', '2020-05-14', '21:04:20', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (82, 'Cleyton', 'Alterou um cliente. ID8', '2020-05-14', '21:04:34', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (83, 'Cleyton', 'Adicionou um cliente.', '2020-05-14', '21:09:08', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (84, 'Cleyton', 'Adicionou um cliente.', '2020-05-14', '21:12:16', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (85, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '11:40:25', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (86, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '11:44:30', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (87, 'Cleyton', 'Removeu um e-mail da fila de envio. ID: 1', '2020-05-15', '12:33:32', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (88, 'Cleyton', 'Removeu um e-mail da fila de envio. ID: 3', '2020-05-15', '12:33:34', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (89, 'Cleyton', 'Removeu um e-mail da fila de envio. ID: 2', '2020-05-15', '12:33:36', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (90, 'Cleyton', 'Removeu um e-mail da fila de envio. ID: 4', '2020-05-15', '12:33:37', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (91, 'Cleyton', 'Adicionou um usuário.', '2020-05-15', '12:45:46', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (92, 'Cleyton', 'Adicionou um cliente.', '2020-05-15', '15:15:23', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (93, 'Cleyton', 'Adicionou uma OS', '2020-05-15', '15:15:47', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (94, 'Cleyton', 'Adicionou um serviço', '2020-05-15', '15:16:37', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (95, 'Cleyton', 'Adicionou serviço a uma OS. ID (OS): 6', '2020-05-15', '15:16:54', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (96, 'Cleyton', 'Adicionou anotação a uma OS. ID (OS): 6', '2020-05-15', '15:17:04', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (97, 'Cleyton', 'Adicionou um produto', '2020-05-15', '15:20:41', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (98, 'Cleyton', 'Alterou uma OS. ID: 6', '2020-05-15', '15:20:55', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (99, 'Cleyton', 'Alterou uma OS. ID: 6', '2020-05-15', '15:20:56', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (100, 'Cleyton', 'Adicionou produto a uma OS. ID (OS): 6', '2020-05-15', '15:21:52', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (101, 'Cleyton', 'Alterou uma OS. ID: 6', '2020-05-15', '15:22:22', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (102, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '15:49:50', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (103, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '19:53:17', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (104, 'Cleyton', 'Adicionou uma OS', '2020-05-15', '20:52:50', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (105, 'Cleyton', 'Removeu uma OS. ID: 7', '2020-05-15', '21:18:22', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (106, 'Cleyton', 'Removeu uma OS. ID: 6', '2020-05-15', '21:18:24', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (107, 'Cleyton', 'Adicionou uma OS', '2020-05-15', '21:18:40', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (108, 'Cleyton', 'Alterou uma OS. ID: 8', '2020-05-15', '21:20:11', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (109, 'Cleyton', 'Removeu uma OS. ID: 8', '2020-05-15', '21:27:18', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (110, 'Cleyton', 'Removeu um produto. ID: 3', '2020-05-15', '21:28:00', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (111, 'Cleyton', 'Adicionou uma OS', '2020-05-15', '21:29:44', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (112, 'Cleyton', 'Removeu uma OS. ID: 9', '2020-05-15', '21:29:57', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (113, 'Cleyton', 'Adicionou uma OS', '2020-05-15', '21:30:21', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (114, 'Cleyton', 'Removeu uma OS. ID: 10', '2020-05-15', '21:47:31', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (115, 'Cleyton', 'Alterou um usuário. ID: 2', '2020-05-15', '21:59:27', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (116, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '22:03:40', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (117, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '22:05:29', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (118, 'Cleyton', 'Efetuou login no sistema', '2020-05-15', '22:26:25', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (119, 'Cleyton', 'Efetuou backup do banco de dados.', '2020-05-15', '22:26:29', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (120, 'Cleyton', 'Efetuou login no sistema', '2020-05-16', '12:04:18', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (121, 'Cleyton', 'Efetuou login no sistema', '2020-05-16', '14:50:31', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (122, 'Cleyton', 'Efetuou backup do banco de dados.', '2020-05-16', '14:59:14', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (123, 'Cleyton', 'Alterou um produto. ID: 95', '2020-05-16', '15:58:33', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (124, 'Cleyton', 'Efetuou login no sistema', '2020-05-16', '19:30:48', '::1');
INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES (125, 'Cleyton', 'Efetuou login no sistema', '2020-05-16', '21:38:44', '::1');


#
# TABLE STRUCTURE FOR: marcas
#

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `idMarcas` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idMarcas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: migrations
#

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `migrations` (`version`) VALUES ('20200428012421');


#
# TABLE STRUCTURE FOR: os
#

DROP TABLE IF EXISTS `os`;

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL AUTO_INCREMENT,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` text DEFAULT NULL,
  `defeito` text DEFAULT NULL,
  `mecanico` varchar(50) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `laudoTecnico` text DEFAULT NULL,
  `valorTotal` varchar(15) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  `garantias_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOs`),
  KEY `fk_os_clientes1` (`clientes_id`),
  KEY `fk_os_usuarios1` (`usuarios_id`),
  KEY `fk_os_lancamentos1` (`lancamento`),
  KEY `fk_os_garantias1` (`garantias_id`),
  CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: pagamento
#

DROP TABLE IF EXISTS `pagamento`;

CREATE TABLE `pagamento` (
  `idPag` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `client_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `client_secret` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `public_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `access_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `default_pag` int(1) NOT NULL,
  PRIMARY KEY (`idPag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: permissoes
#

DROP TABLE IF EXISTS `permissoes`;

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `permissoes` text DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idPermissao`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES (1, 'Administrador', 'a:45:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";s:1:\"1\";s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:8:\"cSistema\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";}', 1, '2014-09-03');


#
# TABLE STRUCTURE FOR: produtos
#

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL AUTO_INCREMENT,
  `codDeBarra` varchar(70) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  `saida` tinyint(1) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idProdutos`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (4, '39', 'Coifa p/ junta homcinética externa', '0', '90.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (5, '37', 'Coifa p/ junta homcinética interna', '10', '120.00', '0.00', 10, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (6, '36', 'Filtro de ar JFA0282', '1', '74.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (7, '37', 'Filtro de ar JFA292/2', '1', '56.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (8, '38', 'Filtro de cabine AKX 1965', '1', '40.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (9, '37', 'Filtro de óleo PSL 900', '4', '35.00', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (10, '35', 'Filtro de óleo JFC 207/02', '1', '34.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (11, '39', 'Filtro de óleo PLS 364', '1', NULL, '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (12, '34', 'Filtro de combustível FCD 204 SB', '0', '35.90', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (13, '38', 'Pastilha de freio PD/528 3.0 (Jogo)', '3', '199.49', '0.00', 3, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (14, '34', 'Pastilha de freio SMA1329 2.5 (Jogo)', '2', '115.94', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (15, '38', 'Pastilha de freio HQJ2287 (Jogo)', '4', '68.90', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (16, '36', 'Mancal cubo dianteiro NKE8081', '2', '84.99', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (17, '39', 'Pivô suspenção VKDS6014', '4', '90.60', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (18, '40', 'Pivô suspenção VKDS6015', '3', '51.09', '0.00', 3, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (19, '35', 'Filtro combustível PL394 - Jeepão', '4', NULL, '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (20, '39', 'Filtro combustível FC161 - Jeepão', '4', NULL, '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (21, '39', 'Filtro de ar AP7108 - F4000 / Jeepão', '4', NULL, '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (22, '38', 'Bieleta lado direito', '0', '45.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (23, '37', 'Bieleta lado esquerdo', '0', '45.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (24, '36', 'Terminal direção 335485', '0', '143.90', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (25, '33', 'Terminal direção 335484', '1', '104.90', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (26, '37', 'Cilindro de embreagem', '2', '174.30', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (27, '40', 'Rolamento 6301', '2', '76.60', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (28, '33', 'Rolamento 6003', '1', NULL, '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (29, '40', 'Correa do alternador 7PK1515', '2', '95.60', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (30, '39', 'Correa dentada', '1', '76.90', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (31, '38', 'Cilindro da roda', '5', NULL, '0.00', 5, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (32, '30', 'Kit rolamento roda (Gol / Saveiro)', '2', '189.00', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (33, '36', 'Rolamento roda traseira ASH4282', '1', '159.80', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (34, '30', 'Tensor correia dentada', '2', '310.50', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (35, '39', 'Luva do cardan', '1', '255.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (36, '38', 'Óleo de freio DOT 4 ', '3', '25.50', '0.00', 3, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (37, '38', 'Terminal direção 335198', '1', '104.80', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (38, '38', 'Interruptor luz de ré', '2', '59.90', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (39, '40', 'Lâmpada H4', '2', '18.00', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (40, '39', 'Lâmpada H1', '8', '22.90', '0.00', 8, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (41, '37', 'Cruzeta traseira', '4', '78.00', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (42, '33', 'Cruzeta dianteira', '1', '98.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (43, '34', 'Bucha amortecedor inferior traseira', '4', '20.99', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (44, '36', 'Bucha amortecedor inferior dianteira', '2', '22.00', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (45, '35', 'Bucha superior da bandeija', '4', '140.00', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (46, '32', 'Bucha feixe de mola', '4', '23.20', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (47, '40', 'Bucha do amortecedor', '4', '20.99', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (48, '35', 'Prato do amortecedor', '1', '35.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (49, '36', 'Polia do alternador', '3', '109.90', '0.00', 3, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (50, '32', 'Retentor roda traseira', '4', '33.00', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (51, '32', 'Retentro da tulipa 6966', '1', '30.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (52, '32', 'Retentro da tulipa 6965', '1', '30.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (53, '40', 'Retentor caixa transferência 7077', '1', NULL, '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (54, '39', 'Retentor do pião', '1', '24.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (55, '34', 'Retentor comando de vólvula', '1', '37.25', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (56, '40', 'Parafuso da bandeija', '4', '49.00', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (57, '37', 'Tensor correia do alternador', '1', '399.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (58, '36', 'Sensor nível do tanque', '2', '75.00', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (59, '33', 'Reservatório água para brisa', '1', '187.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (60, '40', 'Cabo freio de mão traseiro', '2', '162.00', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (61, '34', 'Fluido freiro dianteiro', '4', '89.00', '0.00', 4, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (62, '39', 'Jogo palheta parabrisa dianteiro', '6', '25.00', '0.00', 6, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (63, '33', 'Borracha da porta 3 mt', '1', '60.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (64, '36', 'Cone de sinalização', '49', '18.98', '0.00', 49, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (65, '35', 'Jogo palheta parabrisa dianteiro', '9', '59.00', '0.00', 9, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (66, '33', 'Macaco estilo garrafa 3 tonelada', '0', '175.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (67, '37', 'Chave de Roda tipo L c/ espatula 21 mm', '2', '45.00', '0.00', 2, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (68, '31', 'Oleo anti ferrugem desengripante', '0', '10.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (69, '32', 'Pivo SUP.D/E.PC/SW4(05 JB7538', '0', '128.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (70, '31', 'Semieixo ( homoxinetica)', '0', '598.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (71, '31', 'Rol. RD.TZ.PC/SW4(09(42KWD10', '0', '298.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (72, '34', 'Rep.pinca FR.DT.PC/SW4(09 e Gas', '0', '246.04', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (73, '34', 'Term.Axial D/E.RC.D.PC/SW REF 45503', '0', '112.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (74, '36', 'Term D/E.RC.D.PC/SW4 REF 45046', '0', '100.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (75, '31', 'Cola JTA Carter Preta 598 loctite', '0', '53.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (76, '38', 'Rol. DIF.Pinhao PQ Ref.90366 30067', '1', '234.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (77, '38', 'Rol.Dif.Latcoroa Ref 90366 53004', '0', '245.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (78, '30', 'Correia Ar/ALT/Vent Ref90916 T2033', '0', '112.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (79, '30', 'Rolamento  Centro', '0', '250.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (80, '31', 'Junta Homocinetica', '1', '169.90', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (81, '38', 'Filtro de Ar', '1', '86.70', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (82, '31', 'Terminal de Direcao', '0', '39.68', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (83, '31', 'Diferencial Dianteiro', '0', '1100.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (84, '40', 'Engate Reboque Bullgog', '0', '1300.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (85, '40', 'Mangeira de Direcao', '0', '154.43', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (86, '40', 'Retentor de reducao', '1', NULL, '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (87, '35', 'Amortecedor Dianteiro', '0', '448.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (88, '39', 'Sirene luz re', '0', '54.86', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (89, '38', 'Filtro Lubrificante', '0', '26.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (90, '30', 'Disco de Freio', '1', '209.00', '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (91, '36', 'Pastilha de freio', '0', '178.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (92, '31', 'Pivo Superior', '0', '70.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (93, '33', 'Pivo Inferior', '0', '84.15', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (94, '39', 'Mangueira de ar de Cabine', '1', NULL, '0.00', 1, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (95, '30', 'Correia do Motor', 'UN', '319.00', '0.00', 0, 1, 1, 1);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (96, '33', 'Braço Axial', NULL, '46.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (97, '39', 'Balata da Direçao', NULL, '1047.00', '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (98, '37', 'Pneu 235/70r16', NULL, NULL, '0.00', 0, 1, NULL, NULL);
INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES (99, '30', 'Alternador', NULL, NULL, '0.00', 0, 1, NULL, NULL);


#
# TABLE STRUCTURE FOR: produtos_os
#

DROP TABLE IF EXISTS `produtos_os`;

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) NOT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idProdutos_os`),
  KEY `fk_produtos_os_os1` (`os_id`),
  KEY `fk_produtos_os_produtos1` (`produtos_id`),
  CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: servicos
#

DROP TABLE IF EXISTS `servicos`;

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idServicos`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `servicos` (`idServicos`, `nome`, `descricao`, `preco`) VALUES (7, 'TROCA DE OLEO', 'TROCA DE OLEO', '0.00');


#
# TABLE STRUCTURE FOR: servicos_os
#

DROP TABLE IF EXISTS `servicos_os`;

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL AUTO_INCREMENT,
  `servico` varchar(80) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idServicos_os`),
  KEY `fk_servicos_os_os1` (`os_id`),
  KEY `fk_servicos_os_servicos1` (`servicos_id`),
  CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: usuarios
#

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  `dataExpiracao` date DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`),
  CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`, `dataExpiracao`) VALUES (1, 'Cleyton', 'MG-25.502.560', '600.021.520-87', '70005-115', 'Rua Acima', '12', 'Alvorada', 'Teste', 'MG', 'cleytonandrade@gmail.com', '$2y$10$6jTJ9W5ChH4gAdpGT6qfVOeCPz9z8b5wUk4vdjmJCRqa4eTSRUd22', '000000-0000', '', 1, '2020-05-12', 1, '3000-01-01');
INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`, `dataExpiracao`) VALUES (2, 'Ronaildo', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'transportes@wellfield.com.br', '$2y$10$qjzJarNweMtztIgK5aU4meCp0A/8qgasSb2AE0r3ACQaM4OUPH4wS', '', NULL, 1, '2020-05-15', 1, '2029-12-21');


#
# TABLE STRUCTURE FOR: vendas
#

DROP TABLE IF EXISTS `vendas`;

CREATE TABLE `vendas` (
  `idVendas` int(11) NOT NULL AUTO_INCREMENT,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` varchar(45) DEFAULT NULL,
  `desconto` varchar(45) DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVendas`),
  KEY `fk_vendas_clientes1` (`clientes_id`),
  KEY `fk_vendas_usuarios1` (`usuarios_id`),
  KEY `fk_vendas_lancamentos1` (`lancamentos_id`),
  CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET foreign_key_checks = 1;
