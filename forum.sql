-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 août 2022 à 21:08
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `forum`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `pseudo_auteur` varchar(255) NOT NULL,
  `id_question` int(11) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `id_auteur`, `pseudo_auteur`, `id_question`, `contenu`) VALUES
(1, 5, 'a', 9, 'OPOKE54PO KERPOG KPZ¨ER¨GP KESRGPSDFG ZE SQ'),
(2, 2, 'test', 7, '010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101<br />\r\n<br />\r\n010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101'),
(3, 2, 'test', 9, '369369369369369369369369369<br />\r\n369369369369369369369369369<br />\r\n<br />\r\n369369369369369369369369369<br />\r\n369369369369369369369369369'),
(4, 2, 'test', 9, 'jyutnj,tru'),
(5, 2, 'test', 9, 'DDDDDDDD'),
(6, 5, 'a', 9, 'JJJJJ'),
(7, 2, 'test', 8, 'Je n\'ai pas très bien compris la question. Pourrais-tu être plus précis s\'il te plait ?');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `contenu` text NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `pseudo_auteur` varchar(255) NOT NULL,
  `date_publication` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `titre`, `description`, `contenu`, `id_auteur`, `pseudo_auteur`, `date_publication`) VALUES
(1, 'Hello World12', 'Hello<br />\r\n<br />\r\nWorld', 'Hello<br />\r\nWorld', 5, 'a', '07/08/2022'),
(2, 'hyhyhyh', 'hjhhy<br />\r\nh y<br />\r\nh y<br />\r\nh y<br />\r\nh y<br />\r\nh <br />\r\nyh <br />\r\nyh yh tykje hnertosh oeqpy', 'ger oiugjherog juhzeoit iuegerpy <br />\r\ngenjroi hjeqrçop ieqr hj<br />\r\n', 5, 'a', '07/08/2022'),
(7, 'mpmpmpmpmp', 'J^khh)^rh <br />\r\n<br />\r\nerjgoie jhoirejth opeyhgçp rihz<br />\r\n<br />\r\ngioerj ghiouerjhg uierdjug peqtqer', 'egkhj neriug h<br />\r\ngq $erq hge<br />\r\nhg ret<br />\r\nh rt<br />\r\nh <br />\r\nreth <br />\r\nrth<br />\r\n ftr<br />\r\nh rtz<br />\r\nhrzte hrtzjh rtzh rtzh zrs', 5, 'a', '07/08/2022'),
(8, '14', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\n<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<br />\r\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 5, 'a', '07/08/2022'),
(9, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi scelerisque eu ultrices vitae auctor eu augue ut. Aliquam id diam maecenas ultricies mi. Ut tristique et egestas quis ipsum suspendisse ultrices. Congue nisi vitae suscipit tellus mauris a diam. Vitae suscipit tellus mauris a diam maecenas sed. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Praesent tristique magna sit amet purus gravida quis. Non enim praesent elementum facilisis leo vel fringilla est ullamcorper. Risus pretium quam vulputate dignissim suspendisse in.<br />\r\n<br />\r\nLeo integer malesuada nunc vel risus. Euismod lacinia at quis risus. Vel eros donec ac odio tempor. Adipiscing tristique risus nec feugiat in fermentum posuere urna nec. Rhoncus dolor purus non enim praesent elementum facilisis leo. Et malesuada fames ac turpis egestas integer eget. Diam sit amet nisl suscipit. Aenean sed adipiscing diam donec adipiscing tristique risus. Adipiscing at in tellus integer feugiat scelerisque. Tellus in metus vulputate eu scelerisque. Non nisi est sit amet facilisis magna etiam tempor orci. Velit scelerisque in dictum non consectetur a erat. Gravida in fermentum et sollicitudin ac orci phasellus egestas tellus. Egestas sed tempus urna et. Vitae elementum curabitur vitae nunc sed. Pharetra diam sit amet nisl suscipit adipiscing. Eleifend quam adipiscing vitae proin sagittis. Eu facilisis sed odio morbi quis commodo. Dolor magna eget est lorem ipsum dolor sit amet. Habitant morbi tristique senectus et netus et malesuada fames.<br />\r\n<br />\r\nNibh tortor id aliquet lectus proin nibh. Ultrices sagittis orci a scelerisque purus semper eget duis. Massa massa ultricies mi quis hendrerit dolor magna eget est. Faucibus a pellentesque sit amet. Aliquam malesuada bibendum arcu vitae elementum curabitur. Arcu non sodales neque sodales ut etiam sit. Elementum nisi quis eleifend quam. Scelerisque felis imperdiet proin fermentum. Leo a diam sollicitudin tempor id. Et netus et malesuada fames ac turpis egestas. Velit scelerisque in dictum non. Odio morbi quis commodo odio aenean sed adipiscing diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At ultrices mi tempus imperdiet nulla. Tortor at auctor urna nunc id cursus metus aliquam eleifend. Nisi scelerisque eu ultrices vitae auctor. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus. Arcu non sodales neque sodales ut etiam sit amet nisl. Enim facilisis gravida neque convallis a cras semper auctor neque. Elit eget gravida cum sociis. Velit egestas dui id ornare arcu odio. Semper feugiat nibh sed pulvinar proin gravida. Mauris sit amet massa vitae tortor. Vitae turpis massa sed elementum tempus. Maecenas accumsan lacus vel facilisis volutpat. Sollicitudin tempor id eu nisl nunc. Vitae auctor eu augue ut. Sed cras ornare arcu dui vivamus arcu felis. Arcu odio ut sem nulla.<br />\r\n<br />\r\nMorbi tristique senectus et netus. Aliquet sagittis id consectetur purus ut. Nunc sed id semper risus in hendrerit gravida rutrum quisque. Risus commodo viverra maecenas accumsan lacus. Nec ultrices dui sapien eget mi proin sed libero enim. Fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Feugiat vivamus at augue eget arcu dictum varius duis at. Duis ut diam quam nulla porttitor massa id neque. Sed sed risus pretium quam vulputate dignissim suspendisse in. Arcu odio ut sem nulla pharetra diam sit. Ornare quam viverra orci sagittis eu volutpat odio. Lorem dolor sed viverra ipsum nunc. Sed id semper risus in hendrerit gravida. Non arcu risus quis varius. Ut lectus arcu bibendum at varius vel pharetra vel turpis. Elit sed vulputate mi sit amet mauris commodo quis imperdiet. Netus et malesuada fames ac turpis egestas. Ornare aenean euismod elementum nisi quis eleifend. Enim lobortis scelerisque fermentum dui faucibus. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien.<br />\r\n<br />\r\nPharetra vel turpis nunc eget lorem dolor sed viverra ipsum. Porta nibh venenatis cras sed felis. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Suscipit tellus mauris a diam maecenas sed enim ut. Est sit amet facilisis magna etiam tempor orci. Sed arcu non odio euismod. Faucibus scelerisque eleifend donec pretium. Ornare aenean euismod elementum nisi quis. Cras tincidunt lobortis feugiat vivamus at augue. Pellentesque massa placerat duis ultricies lacus. Orci nulla pellentesque dignissim enim sit. Non nisi est sit amet. Dictum sit amet justo donec enim diam. Velit laoreet id donec ultrices tincidunt. Massa id neque aliquam vestibulum morbi. Integer enim neque volutpat ac tincidunt vitae.<br />\r\n<br />\r\nSed blandit libero volutpat sed cras ornare arcu. At lectus urna duis convallis convallis tellus id interdum. Condimentum mattis pellentesque id nibh tortor id aliquet lectus. Quis eleifend quam adipiscing vitae proin sagittis. Pellentesque habitant morbi tristique senectus et netus et malesuada. Tortor id aliquet lectus proin nibh nisl. Et malesuada fames ac turpis egestas sed tempus. Viverra maecenas accumsan lacus vel facilisis volutpat est. Cursus euismod quis viverra nibh cras pulvinar mattis. Congue quisque egestas diam in arcu cursus euismod. In nulla posuere sollicitudin aliquam.<br />\r\n<br />\r\nUrna nunc id cursus metus aliquam eleifend. Adipiscing enim eu turpis egestas pretium aenean pharetra. Tincidunt id aliquet risus feugiat in ante. Ante metus dictum at tempor commodo ullamcorper a. Odio aenean sed adipiscing diam donec adipiscing. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Tincidunt ornare massa eget egestas purus viverra. Id leo in vitae turpis massa sed elementum. In eu mi bibendum neque egestas congue quisque egestas. Justo eget magna fermentum iaculis eu. Quis ipsum suspendisse ultrices gravida. Tempus quam pellentesque nec nam aliquam sem et tortor consequat. Accumsan lacus vel facilisis volutpat. Aliquam ut porttitor leo a diam sollicitudin tempor id. Dui nunc mattis enim ut tellus. Amet commodo nulla facilisi nullam vehicula ipsum a arcu. Arcu felis bibendum ut tristique et egestas quis.', 2, 'test', '08/08/2022');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mdp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `nom`, `prenom`, `mdp`) VALUES
(1, 'hy', 'hyhy', 'hyhy', '$2y$10$of/q.iH4pLZK58PNNpQy0unhzmsc5ZW/0zK1pJCwRkLcqvhkSMnla'),
(2, 'test', 'test', 'test', '$2y$10$MgAupavMA7keiWaq9Z2QZOgvZtZCsB6ybnikNahhA8vONQpwnRf1e'),
(4, 'hjhiotjho', 'giojtrogihjt', 'jgoirejgoer', '$2y$10$gWg5GftbXl20Iei87k8vEumm8vTelxw4xNfVjB/1ET9nB5vXFrs6m'),
(5, 'a', 'a', 'a', '$2y$10$TSktEwqs3TG1KC7KoCgayuMFDS/ZTauzaPq9yogZnPnuuxVrljJUC');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
