-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `vpassword` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `articles`
--
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`
(
  `id`             smallint unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date,                                      
  `title`           varchar(255) NOT NULL,                     
  `summary`         text,
  `link`            varchar(255) NOT NULL,                                                    
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--
DROP TABLE IF EXISTS `cours`;
CREATE TABLE `cours`
(
  `id`              smallint unsigned NOT NULL AUTO_INCREMENT,
  `annee`           date NOT NULL,                             
  `title`           varchar(255) NOT NULL,                      
  `semestre`        text NOT NULL,                              
  `niveau`           smallint unsigned,                        
  `link`            varchar(255) NOT NULL,                          
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255),
  `description` text,
  `email` varchar(255),
  `twiter` varchar(255),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
