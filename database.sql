-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- G�n�r� le :  Jeu 28 Mars 2019 � 16:43
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de donn�es :  `musique`
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
(1, '2019 le monde des Enfoir�s', 'Cette ann�e encore, et pour la trenti�me �dition, les plus grands artistes fran�ais se mobilisent pour les Restos du C�ur !\r\nPlus que jamais, les Restos du C�ur ont besoin de vous !\r\n� CHAQUE CD OU DVD VENDU = 17 REPAS OFFERTS �', 'les_Enfoires.jpg', 1),
(2, 'THE PLATINUM COLLECTION', 'Greatest Hits I, II & III: The Platinum Collection Les plus grands titres d''un des meilleurs groupes de tous les temps.', 'queen.jpg', 2),
(3, 'BROL', '�g�e de 22 ans et d�j� 3 hits � son actif, Ang�le sort � pr�sent son premier album, dont le titre est une expression qui nous rappelle ses origines bruxelloises. Brol qui veut dire d�sordre, ou gadget en argot belge, sort sur son propre label nouvellement cr�e, ''Ang�le VL Records''. Ang�le s�est d�abord fait conna�tre via Instagram, et le bouche � oreille a suffi pour la mettre rapidement en haut de l�affiche. D�Instagram aux premi�res parties, et des premi�res parties � ses propres concerts, en seulement 1 an, l�artiste a tourn� dans toute la France, mais aussi en Suisse, Belgique, Pays-Bas et Qu�bec. Avec ''La Thune'', ''La Loi De Murphy'' et ''Je Veux Tes Yeux'', elle s�est directement projet�e au sommet des charts et �a ne fait que commencer...', 'angele.jpg', 3),
(4, 'Phoenix', 'Arm� d�une plume tr�s personnelle Soprano arrive � saisir son auditoire gr�ce � des textes et des messages tout aussi poignants que positifs et f�d�rateurs. Son dernier album � L�Everest � a �t� certifi� disque de Diamant avec 850 000 exemplaires �coul�s et 800 000 tickets de concert vendus. Un record pour Soprano, qui s�est produit devant un stade v�lodrome � guichet ferm�. Soprano a marqu� son retour avec � A la vie � l�amour �, le premier extrait de son prochain album � Phoenix �, qui sortira le 9 novembre prochain.', 'soprano.jpg', 4),
(5, 'Lettre Infinie - ', 'Apr�s le succ�s de l�album collectif � Lamomali �, -M- revient avec � Lettre infinie �, son 6�me album solo, attendu depuis 2012.\r\n\r\nCertains titres rappellent avec �clat ses plus grandes chansons (� Machistador � ou � Je Dis Aime �). Avec une production de haute vol�e (Philippe Zdar aux mixes). Le premier extrait de l�album, l�imparable �Superch�rie �, est quant � lui co-produit par Thomas Bangalter (moiti� de Daft Punk).', 'M_Chedid.jpg', 5),
(6, 'Ce soir on sort�', '" Ce soir on sort... " est le nouvel album de chansons originales � para�tre le 2 novembre prochain. Patrick Bruel se r�invente sans se trahir. Le premier extrait de l''album " Tout recommencer " est un titre compos� par Micka�l Furnon et co�crit avec Patrick, habill� d''une production r�solument actuelle de Vianney. Le titre augure d''un album puissant, aux multiples facettes. On y retrouve un Patrick Bruel reconnaissable entre tous avec un suppl�ment d''exigence et une envie de renouveau. Tout recommencer, sans balayer le pass�, mais en gardant l''essentiel pour commencer encore...', 'PatrickBruel.jpg', 6),
(7, 'THANK U, NEXT', 'Apr�s l''album Sweetener certifi� Disque d''or en France en seulement 4 mois, Ariana Grande revient avec un nouvel album. Port� par les imparables tubes " thank u, next " et " 7 Rings " dont les r�sultats d�passent ceux du hit plan�taire " No Tears Left To Cry " (single d''or) qui avait annonc� son album pr�c�dent, ce nouveau projet est incontestablement l''�v�nement de ce d�but d''ann�e. La star am�ricaine est au sommet de sa gloire, et la France la pl�biscite. Les 2 concerts de l''Accor Hotel Arena d''ao�t ont �t� complets en 2 semaines. 2019 sera d�finitivement l''ann�e de la cons�cration !', 'ariana_grande.jpg', 7),
(8, 'Paradise', 'De pr�curseur d�une sc�ne bruxelloise qui s�est depuis d�velopp�e de fa�on exponentielle, � valeur s�re du rap francophone, Hamza a parcouru �norm�ment de chemin en seulement trois ans. Rec. 118 ne s�est pas tromp� en misant sur lui, puisque moins de 6 mois apr�s la sortie de sa premi�re mixtape en maison de disques, le rappeur d�crochait d�j� un disque d�or. La fan-base d�j� tr�s fi d�lis�e d�Hamza r�ve d�sormais d�un premier v�ritable album, une attente qui sera combl�e le 1er mars. Nouveau projet ambitieux, appuy� par des featurings de renom, et travaill� pour toucher toutes les couches de son public, ce premier album commencera � se d�voiler � partir du 25 janvier, date de la sortie du premier extrait', 'Hamza.jpg', 9),
(9, 'FAUTHENTIQUE', 'T�t� pr�sente son septi�me album, � Fauthentique �, co-r�alis� par Johan Dalgaard (Alain Chamfort, Camille...). Une collection de chansons repr�sentant, chacune � sa mani�re, diff�rentes facettes de la vraisemblance volant de plus en plus la vedette au � vrai � dans beaucoup de champs de notre vie quotidienne : le traitement de l�actualit�, l��conomie, le politique... Conteur d�histoires, guitariste hors pair, T�t� revient avec un nouvel album o� la guitare acoustique s�appuie sur des programmations d�licates et organiques donnant une couleur r�solument moderne � un album m�lodique.', 'tete.jpg', 10),
(10, 'Quartier Latin Vol.1', 'Apr�s � Grandestino � et ses hymnes comme �Mafiosa � (qui a largement travers� les fronti�res fran�aises) ,� Catchu Catchu � & � Va� et viens �,  Lartiste revient avec un nouvel album � Quartier Latin Vol.1 �. Un habile �quilibre dans le panel du savoir faire du MC de Bondy, dans lequel il explore diff�rentes couleurs et diff�rentes collaborations, notamment avec Sofiane mais aussi aux c�t�s la nouvelle g�n�ration comme Koba LaD, Heuss L�enfoir�, Landy.Lartiste prend aussi le pari de chanter en Espagnol accompagn� de Karol G sur le titre � Peligrosa". ', 'lartiste.jpg', 8);

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
(1, 'Les enfoir�s', ''),
(2, 'Queen', ''),
(3, 'Ang�le', ''),
(4, 'Soprano', ''),
(5, 'Chedid', 'Mathieu'),
(6, 'Bruel', 'Patrick'),
(7, 'Ariana ', 'Grande'),
(8, 'L''artiste', ''),
(9, 'Hamza', ''),
(10, 'T�t�', '');

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
(5, 6, 5, 'G�nial !');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
