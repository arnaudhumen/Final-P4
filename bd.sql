-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 11 déc. 2019 à 16:42
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `train`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModif` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `titre`, `contenu`, `dateAjout`, `dateModif`) VALUES
(15, 'Premier pas en milieu sauvage ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. </p>', '2019-09-26 16:32:04', '2019-11-21 16:32:02'),
(24, 'dernier chapitre', '<p>zadazdazd</p>', '2019-12-11 17:20:52', '2019-12-11 17:20:52');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `signal_id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `contenu_commentaire` text NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModif` datetime NOT NULL,
  UNIQUE KEY `id_comment` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `post_id`, `signal_id`, `nom`, `contenu_commentaire`, `dateAjout`, `dateModif`) VALUES
(46, 14, 2, 'rien', 'trop nul', '2019-10-25 17:59:49', '2019-10-25 17:59:49'),
(45, 14, 1, 'julien', 'commentaire nul', '2019-10-25 17:59:41', '2019-10-25 17:59:41'),
(44, 14, 1, 'alex', 'super comm', '2019-10-25 17:59:31', '2019-10-25 17:59:31'),
(47, 14, 1, 'huri', 'Super ce chapitre ! il m\'as fait voyager !', '2019-10-31 17:34:21', '2019-10-31 17:34:21'),
(49, 15, 2, 'ricky', 'mauvais chapitre', '2019-11-14 14:08:32', '2019-11-14 14:08:32'),
(48, 15, 2, 'John', 'Super ce commentaire', '2019-11-14 14:08:19', '2019-11-14 14:08:19'),
(21, 15, 2, 'Arnaud', 'Arnaud', '2019-09-27 18:33:41', '2019-09-27 18:33:41'),
(22, 17, 0, 'Julien', 'super ce chapitre !', '2019-10-03 15:47:35', '2019-10-03 15:47:35'),
(23, 17, 0, 'Julien', 'super ce chapitre !', '2019-10-03 16:18:58', '2019-10-03 16:18:58'),
(27, 14, 2, 'azeaze', 'aze', '2019-10-19 13:49:31', '2019-10-19 13:49:31'),
(28, 14, 1, 'Arnaud', 'sd', '2019-10-19 13:49:36', '2019-10-19 13:49:36'),
(29, 14, 0, 'Arnaud', 'sd', '2019-10-19 13:50:23', '2019-10-19 13:50:23'),
(30, 14, 0, 'Arnaud', 'sd', '2019-10-19 13:51:40', '2019-10-19 13:51:40'),
(31, 14, 1, 'Arnaud', 'sd', '2019-10-19 13:52:50', '2019-10-19 13:52:50'),
(32, 14, 1, 'Arnaud', 'sd', '2019-10-19 13:52:55', '2019-10-19 13:52:55'),
(33, 14, 1, 'Arnaud', 'sd', '2019-10-19 13:54:01', '2019-10-19 13:54:01'),
(34, 14, 1, 'Arnaud', 'sd', '2019-10-19 13:54:39', '2019-10-19 13:54:39'),
(35, 14, 1, 'Arnaud', 'sd', '2019-10-19 13:55:20', '2019-10-19 13:55:20'),
(36, 14, 1, 'Arnaud', 'sd', '2019-10-19 14:00:31', '2019-10-19 14:00:31'),
(37, 14, 2, 'Arnaud', 'sd', '2019-10-19 14:01:17', '2019-10-19 14:01:17'),
(38, 14, 1, 'Arnaud', 'azeazeaze', '2019-10-19 14:01:37', '2019-10-19 14:01:37'),
(39, 14, 1, 'Arnaud', 'azeazeazeaze', '2019-10-19 14:02:25', '2019-10-19 14:02:25'),
(40, 21, 1, 'Julien', 'super ', '2019-10-19 14:06:34', '2019-10-19 14:06:34'),
(41, 14, 0, 'aze', 'azeazeazeaze', '2019-10-19 16:04:35', '2019-10-19 16:04:35'),
(42, 21, 2, 'azeazea', 'azeaezae', '2019-10-19 16:04:39', '2019-10-19 16:04:39'),
(43, 14, 1, 'Julien', 'salut', '2019-10-23 14:37:06', '2019-10-23 14:37:06'),
(50, 15, 2, 'Arnaud', 'azeaze', '2019-11-14 14:10:48', '2019-11-14 14:10:48'),
(51, 15, 2, 'aze', 'azeaze', '2019-11-14 14:10:54', '2019-11-14 14:10:54'),
(52, 15, 2, 'azeazea', 'azeazee', '2019-11-14 14:11:00', '2019-11-14 14:11:00'),
(53, 15, 2, 'Arnaud', 'merde', '2019-11-14 14:54:08', '2019-11-14 14:54:08'),
(54, 15, 1, 'alex', 'aze', '2019-11-14 14:54:14', '2019-11-14 14:54:14'),
(55, 15, 1, 'Arnaud', 'aze', '2019-11-15 17:31:50', '2019-11-15 17:31:50');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `mdp` text NOT NULL,
  `confirme_mdp` text NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `mdp`, `confirme_mdp`, `id_type`) VALUES
(64, 'aze', '$2y$10$SEBBVHgGPQIiIArtmFVREuVNY2Ab7wE7y5jZ5DMOowaUM0/byyR/q', '$2y$10$iFtUyZzb3MwvJs74x30B5.17sUYNkGdElTR5Dw.lIrK2ofp7JsK8m', 1),
(63, 'aze', '$2y$10$RDpx03m9x0O7epnELGqqC.9QoAFAVV6PJ0qqDsbWdcC.usZbBUsE.', '$2y$10$MYh8pmV7DDHdNyNbwWWVq.ldLaLedEOXe3iLIfnvvnNt0Ko7yoQte', 1),
(62, 'aze', '$2y$10$dJJc5DRG1nP9lTPhOAvOl.soILzO15l7Z65mUHzA53BD5cIlgAPJG', '$2y$10$051e4IYEw45lmCEOalx8Su2OlZvZLnVyqeLnzjyZRPw6XlTVFM2E6', 1),
(61, 'aze', '$2y$10$ZH98zMnaLuUzDK7ciCMZ0OLgo/LIetiKQNyNH8UtE5Rb5ud9r9zFi', '$2y$10$ru1fS9bJ2veAe2qSBd7iR.Nv1fL1S9N9GZ5KaV7cE3/xUc1oS6njO', 1),
(60, 'aze', '$2y$10$ywjPSpSHbqOl9nYtn4WjR.cX2phHtXkUUl6m0e5Fl9GRGpoCB0PL.', '$2y$10$15yXxXz3LPt6DqkbKmZoBebkGh5/tDwf1z.JnVEyf9Z.xfM/vhSRK', 1),
(59, 'aze', '$2y$10$PCc69XNXIjnb0JgzBGnYZunnFAoi2.5YkWqt4I3cPnbBk68Kz.P9e', '$2y$10$7aXLUkWh0TAeI4Yf/f7OO.B4pcr9bVlWbsguY94ROzV.QK/HHsOxG', 1),
(58, 'aze', '$2y$10$PcclHkwMff5n5dxAusrYV.3zC4AzxjaymKBBmljSqrycs.mRWgzu.', '$2y$10$qDEZ/DeVge7C3Ty30tRMI.MqMx7CaqGn2IY1Z/9BiwgEkf7pA.QJm', 1),
(57, 'aze', '$2y$10$ZF3oxtvNUkoA8uMYd3plUu6oe8vglJwOBtrKLNER1fhM0kdrFL4YG', '$2y$10$SCMvr95GTRyUDo.ATnb7L.2vYpG./iVCf9hLPr0OtTlFEdqXcmEUC', 1),
(56, '', '$2y$10$4pcS1/UVQPdmbtGIM40uO.lS7pls86xcTDHbxVxpkwOj6eZZ82wWa', '$2y$10$pYGBaA5GVkqMn4IJBWHut.xC0DVPP4V3Jb4bLrY.dSa2pGkcPIVXe', 1),
(55, '', '$2y$10$5b.e80eEKzMyWJLJ9jBlhuyz.49CqTqnNcWFsPYR8x7i2k8Hx6uyW', '$2y$10$FTzyYEtAztqOHnyuhc7hxuHESH0PmViYYAGh0Fu0saZ7pH60yQb4O', 1),
(54, 'aze', '$2y$10$uY8QZNvnFM1hDO.jYmsaKuiwUyGObD/BqyyKRTICBfIkJCaA41aFG', '$2y$10$TnVQcTkx1Hg2opZpaxiFuut7uCAN3BhQdrl3AfJwForH83mzVEfq.', 1),
(53, '', '$2y$10$aYp5HqqPix1b72.AMAEnAeGgJmjpTmc1sqVcf0hm48yV1eiWfw/by', '$2y$10$5UkPDlzPXiHGeDKT.IP/A.8EiqOED087LRGH.HgcMlgY09QixK7Si', 1),
(52, '', '$2y$10$mGZLOy5i.XJjzDXxtsp6nOyOx0FdMXPh6TAWv7.uyucjk.z5zIeuu', '$2y$10$J1cZG20AY3HPyY2CQBRak.qwrT1rOx6L/wfS7Sm22cf5Xqz9K9V3m', 1),
(51, 'johhny', '$2y$10$/.ppPGVw4440q/4lDEVQbuVhknobK3xgtpLeGo25fXCQDVn.SAu6e', '$2y$10$OcsLPL7Y18F6bFcOpzcZweDrIPWJM/7BO3eC9/hQBdP6Qhq7ep9C2', 1),
(50, 'alexandre', '$2y$10$x2gqbVikQtqfv0itHmLB7OVHX6O3CCAxQAHtu/ghrwEYRYQ20ldsO', '$2y$10$.fyNcjSo3Vq4HLoEoSBUHOnuXYBuFMZ.Nhz45Akc2beQ1t2F6g176', 1),
(48, 'JeanForteroche', '$2y$10$fzLfj4cNsitA2gJYhZIVcu1Ys9M9oZOv/N2U4TDDTEsOJT6hh37EW', '$2y$10$7ttBzMJIRhmO0Aq1/loVO./m.QJg44nidQCc8lV4Z9aH1ZQhG37De', 2),
(47, 'Arnaud', '$2y$10$et4VBV9LuiV3p3ygPA9W1uBpam08AduG1ELSgsE3EsoLPbtsURhmq', '$2y$10$mTLyMezTph5FRWAO5Hn0qe8pTYDztuj2hZyVjsCs7FqXMhpOxdhVm', 1),
(49, 'Alex', '$2y$10$eFhXOlUPqY9JvLdd2EWxfeWpG77cpCXWI2Y4.1l6rGggGmCelXGw2', '$2y$10$OjU1bCINhnnN/2yyFMWvZOt1.yevhbUaQ84ijVT.7cwMM0y67OH.y', 1),
(46, 'julien', '$2y$10$wVMa2F5uBp2/yyRmfXk8re29upJxeQt/m/jm144m/X64ngHZhXWuK', '$2y$10$CW63p5O5Xj9S2kK8lAHxQ.sKOPNbh3aTDWhUNr1IacCn19h3DdZpK', 1),
(65, 'aze', '$2y$10$Xg0gz3kuv.RGGelq6lbYqO8E6/KePMLCnCQaQLDr5Y19G4CVmTNqG', '$2y$10$wL.KW3Cp5JerJUicFkFCmeMIAwsYWik6j.xHz1ki72zkLwjScZFGm', 1),
(66, 'aze', '$2y$10$HHDAehgd31gXugwcX/Dl/uJwbz2I8ZE/IiAP4lnMrcd063OpSctj2', '$2y$10$6b57jYFaF1kEquWERu7hw.tC3brkhoSC5vZorX6B85hYjT5DOuEmO', 1),
(67, 'aze', '$2y$10$9/VNvU7tVFSCrsqL9Mqkiu2Y00oR1omlv84nvPmzG.sy6pdtCIega', '$2y$10$Hwse4YW9DQRoDJ1BW4pSOOlwGYnmaF0qVgHIjrF9tVNMAy4S5E7uu', 1),
(68, 'aze', '$2y$10$TQkAGkzvnYPEcgvUw5jwB.LXesQLbpMPQCAkYaab8N/5NDUrl7MaG', '$2y$10$dW6pqAlZ7x5j7wjkbfsP8.lJauH1LnMESDWaBduDV32LFTwgqzkvG', 1),
(69, 'aze', '$2y$10$N.6lP9GOhiOjla8nTRjKv.pDQhIQBhTVHsNYTPkBVyoEy1Y5M10ie', '$2y$10$yaXKEOER7t/lEwyvWlb5S.VgpTSM0odf9dji9jPIw5Q.IZAwX.RUe', 1),
(70, 'aze', '$2y$10$ZUtrbt/sXgnKR8HtNgEddOyZX7EBLzMaagc0Soee.H9fHh6TDw/cG', '$2y$10$RaYa5Etoy1G.SnozsuyImubdQ8u4w.wRr7tYJH5BMJviXR1IMS3Lu', 1),
(71, 'aze', '$2y$10$0ZDozSAOUpLy/NX5ikj51uGNFZONAiaC14OxZsSvC1PJzZYGixami', '$2y$10$IZlYoa5.IWiBxabBoE3y/.Pihn5jWQjJ.JmhPmhrfUpc/k4grvdPK', 1),
(72, 'aze', '$2y$10$Sv2UBWC3mBUMEv4bKxF3F.rpNahkfthRC8.sFyN5e3TNEYDLr1PXe', '$2y$10$ES8iUR5Hlle54UUELrQ5h.GJX5X/C7sjeiU4UzNOsVy3aWW/OVy6W', 1),
(73, 'aze', '$2y$10$8VgRYufipVPBEzb/Xtp8bOcX9K/yHZfHm8P0bS.nK0/jgoNSfUdQS', '$2y$10$V9pVJMSV.uGozljhW2qOgOF9rrjdU5LvamjIbHzroy3BCZYb.6L4O', 1),
(74, 'aze', '$2y$10$9Iw/pCdCg1jTUhuKPTHV3e8ILuNL0vwo1bIzgs4i4Hck2bP/juQPa', '$2y$10$/PbGEPbi4tQoE0F9WsX6fOedKfS5y7ntZhILXwtMwZWGwa33ENHXC', 1),
(75, 'Arnaud', '$2y$10$cAunc6glo8LEgwO/6I8.E.FXweiNZqFpKnkyzQEE5btu.Y4/mxOdS', '$2y$10$hHHVqRO2lOBKhIAmrFmuIO82D6Zq4pfxb4BYhC1IIf..5ncxqWu3e', 1),
(76, 'Jean edouardo', '$2y$10$gKqkF/1gjpwW0qv9QMItx.mdyLMiFaCSZHbxvSWv76CLaq8gI2yKq', '$2y$10$KvXewvZABm7.yV6L.ScUb.sJWznBo4rKowKjzKbRi7g8Y96HZ1Zp2', 1),
(77, 'Rick', '$2y$10$CMzna2b5oi7XRc7MMV2qiOWJrQ9mftH3AwAzao588rkRX3jNaK78G', '$2y$10$csqm.TnLKp/qGqaobN4n2uoomGhvNzkqWm6rO/5vwFnZKKemWk2BW', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
