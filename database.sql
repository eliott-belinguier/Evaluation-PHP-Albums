-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 28 Mars 2019 à 16:43
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `musique`
--

create database musique ;
use musique ;

--
-- Structure de la table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(30) COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  `Pochette` varchar(30) COLLATE utf8_bin NOT NULL,
  `idArtiste` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Contenu de la table `album`
--

INSERT INTO `album` (`id`, `Titre`, `Description`, `Pochette`, `idArtiste`) VALUES
(1, '2019 le monde des Enfoirés', 'Cette année encore, et pour la trentième édition, les plus grands artistes français se mobilisent pour les Restos du Cœur !\r\nPlus que jamais, les Restos du Cœur ont besoin de vous !\r\n« CHAQUE CD OU DVD VENDU = 17 REPAS OFFERTS »', 'les_Enfoires.jpg', 1),
(2, 'THE PLATINUM COLLECTION', 'Greatest Hits I, II & III: The Platinum Collection Les plus grands titres d''un des meilleurs groupes de tous les temps.', 'queen.jpg', 2),
(3, 'BROL', 'Âgée de 22 ans et déjà 3 hits à son actif, Angèle sort à présent son premier album, dont le titre est une expression qui nous rappelle ses origines bruxelloises. Brol qui veut dire désordre, ou gadget en argot belge, sort sur son propre label nouvellement crée, ''Angèle VL Records''. Angèle s’est d’abord fait connaître via Instagram, et le bouche à oreille a suffi pour la mettre rapidement en haut de l’affiche. D’Instagram aux premières parties, et des premières parties à ses propres concerts, en seulement 1 an, l’artiste a tourné dans toute la France, mais aussi en Suisse, Belgique, Pays-Bas et Québec. Avec ''La Thune'', ''La Loi De Murphy'' et ''Je Veux Tes Yeux'', elle s’est directement projetée au sommet des charts et ça ne fait que commencer...', 'angele.jpg', 3),
(4, 'Phoenix', 'Armé d’une plume très personnelle Soprano arrive à saisir son auditoire grâce à des textes et des messages tout aussi poignants que positifs et fédérateurs. Son dernier album « L’Everest » a été certifié disque de Diamant avec 850 000 exemplaires écoulés et 800 000 tickets de concert vendus. Un record pour Soprano, qui s’est produit devant un stade vélodrome à guichet fermé. Soprano a marqué son retour avec « A la vie à l’amour », le premier extrait de son prochain album « Phoenix », qui sortira le 9 novembre prochain.', 'soprano.jpg', 4),
(5, 'Lettre Infinie - ', 'Après le succès de l’album collectif « Lamomali », -M- revient avec « Lettre infinie », son 6ème album solo, attendu depuis 2012.\r\n\r\nCertains titres rappellent avec éclat ses plus grandes chansons (« Machistador » ou « Je Dis Aime »). Avec une production de haute volée (Philippe Zdar aux mixes). Le premier extrait de l’album, l’imparable «Superchérie », est quant à lui co-produit par Thomas Bangalter (moitié de Daft Punk).', 'M_Chedid.jpg', 5),
(6, 'Ce soir on sort…', '" Ce soir on sort... " est le nouvel album de chansons originales à paraître le 2 novembre prochain. Patrick Bruel se réinvente sans se trahir. Le premier extrait de l''album " Tout recommencer " est un titre composé par Mickaël Furnon et coécrit avec Patrick, habillé d''une production résolument actuelle de Vianney. Le titre augure d''un album puissant, aux multiples facettes. On y retrouve un Patrick Bruel reconnaissable entre tous avec un supplément d''exigence et une envie de renouveau. Tout recommencer, sans balayer le passé, mais en gardant l''essentiel pour commencer encore...', 'PatrickBruel.jpg', 6),
(7, 'THANK U, NEXT', 'Après l''album Sweetener certifié Disque d''or en France en seulement 4 mois, Ariana Grande revient avec un nouvel album. Porté par les imparables tubes " thank u, next " et " 7 Rings " dont les résultats dépassent ceux du hit planétaire " No Tears Left To Cry " (single d''or) qui avait annoncé son album précédent, ce nouveau projet est incontestablement l''événement de ce début d''année. La star américaine est au sommet de sa gloire, et la France la plébiscite. Les 2 concerts de l''Accor Hotel Arena d''août ont été complets en 2 semaines. 2019 sera définitivement l''année de la consécration !', 'ariana_grande.jpg', 7),
(8, 'Paradise', 'De précurseur d’une scène bruxelloise qui s’est depuis développée de façon exponentielle, à valeur sûre du rap francophone, Hamza a parcouru énormément de chemin en seulement trois ans. Rec. 118 ne s’est pas trompé en misant sur lui, puisque moins de 6 mois après la sortie de sa première mixtape en maison de disques, le rappeur décrochait déjà un disque d’or. La fan-base déjà très fi délisée d’Hamza rêve désormais d’un premier véritable album, une attente qui sera comblée le 1er mars. Nouveau projet ambitieux, appuyé par des featurings de renom, et travaillé pour toucher toutes les couches de son public, ce premier album commencera à se dévoiler à partir du 25 janvier, date de la sortie du premier extrait', 'Hamza.jpg', 9),
(9, 'FAUTHENTIQUE', 'Tété présente son septième album, « Fauthentique », co-réalisé par Johan Dalgaard (Alain Chamfort, Camille...). Une collection de chansons représentant, chacune à sa manière, différentes facettes de la vraisemblance volant de plus en plus la vedette au « vrai » dans beaucoup de champs de notre vie quotidienne : le traitement de l’actualité, l’économie, le politique... Conteur d’histoires, guitariste hors pair, Tété revient avec un nouvel album où la guitare acoustique s’appuie sur des programmations délicates et organiques donnant une couleur résolument moderne à un album mélodique.', 'tete.jpg', 10),
(10, 'Quartier Latin Vol.1', 'Après « Grandestino » et ses hymnes comme »Mafiosa » (qui a largement traversé les frontières françaises) ,« Catchu Catchu » & « Vaï et viens »,  Lartiste revient avec un nouvel album « Quartier Latin Vol.1 ». Un habile équilibre dans le panel du savoir faire du MC de Bondy, dans lequel il explore différentes couleurs et différentes collaborations, notamment avec Sofiane mais aussi aux côtés la nouvelle génération comme Koba LaD, Heuss L’enfoiré, Landy.Lartiste prend aussi le pari de chanter en Espagnol accompagné de Karol G sur le titre « Peligrosa". ', 'lartiste.jpg', 8);

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `Prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `Nom`, `Prenom`) VALUES
(1, 'Les enfoirés', ''),
(2, 'Queen', ''),
(3, 'Angèle', ''),
(4, 'Soprano', ''),
(5, 'Chedid', 'Mathieu'),
(6, 'Bruel', 'Patrick'),
(7, 'Ariana ', 'Grande'),
(8, 'L''artiste', ''),
(9, 'Hamza', ''),
(10, 'Tété', '');

-- --------------------------------------------------------

--
-- Structure de la table `noter`
--

CREATE TABLE IF NOT EXISTS `noter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOeuvre` int(11) NOT NULL DEFAULT '0',
  `note` int(11) NOT NULL DEFAULT '0',
  `commentaire` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `noter`
--

INSERT INTO `noter` (`id`, `idOeuvre`, `note`, `commentaire`) VALUES
(1, 1, 5, 'Chouette'),
(2, 1, 3, 'Super'),
(3, 2, 2, 'Bof !'),
(4, 3, 1, 'Berk !'),
(5, 6, 5, 'Génial !');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
