-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 11:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finance`
--

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `inv_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `idea_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `meesage_id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`meesage_id`, `sender`, `receiver`, `message`) VALUES
(1, '5', '2', 'Something'),
(2, '5', '1', 'Something');

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `id` int(11) NOT NULL,
  `productname` varchar(20) NOT NULL,
  `idea_type` varchar(255) NOT NULL,
  `idea_abstract` text NOT NULL,
  `idea_descr` text NOT NULL,
  `author` text NOT NULL,
  `idea_expiry` date NOT NULL,
  `idea_risk` varchar(200) NOT NULL,
  `idea_instruments` varchar(200) NOT NULL,
  `idea_currency` varchar(200) NOT NULL,
  `idea_major` varchar(200) NOT NULL,
  `idea_minor` varchar(200) NOT NULL,
  `idea_region` varchar(200) NOT NULL,
  `idea_country` varchar(200) NOT NULL,
  `idea_status` varchar(50) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `taggedusers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producttable`
--

INSERT INTO `producttable` (`id`, `productname`, `idea_type`, `idea_abstract`, `idea_descr`, `author`, `idea_expiry`, `idea_risk`, `idea_instruments`, `idea_currency`, `idea_major`, `idea_minor`, `idea_region`, `idea_country`, `idea_status`, `approved_by`, `taggedusers`) VALUES
(3, 'Lorem ipsum dolor si', 'Stocks', 'Volutpat facilisis turpis in mauris blandit per litora vulputate ad, viverra consequat suspendisse egestas vel conubia nec cursus ullamcorper congue, quisque bibendum nunc tristique lectus non libero phasellus. Congue vivamus eros mi habitant vel hac tortor, cras iaculis blandit curabitur proin ornare, integer posuere est nisi eleifend porttitor.', 'Lorem ipsum dolor sit amet consectetur adipiscing, elit pretium lobortis donec mi blandit volutpat, penatibus habitasse taciti nulla at. Ullamcorper diam fringilla rhoncus maecenas sed, aenean dui risus ad elementum lobortis, mattis interdum sapien tristique. Mauris duis feugiat lobortis venenatis penatibus semper, senectus nisl vehicula cras vivamus, sociosqu ac rhoncus sollicitudin cum. Aliquam nulla dignissim fermentum rhoncus vitae nisl erat litora, varius pharetra nascetur velit ullamcorper ac ante nisi, diam netus venenatis eros pretium class quisque. In id pretium ridiculus molestie proin libero praesent sociosqu mi consequat dui, est vestibulum facilisi sociis arcu facilisis cursus sapien nam phasellus, aliquam dignissim non cum fames lectus integer potenti aptent inceptos. Ut phasellus dignissim nascetur sociis magna sodales vestibulum, platea porttitor conubia fusce metus consequat congue, vitae senectus maecenas placerat taciti praesent, fames laoreet morbi suspendisse est quisque. Mattis molestie a suscipit aenean ac cursus tortor nostra turpis euismod, metus senectus cum quisque augue tellus ultrices pellentesque nulla eros, purus primis litora class risus himenaeos potenti tristique habitant. Blandit viverra ornare massa praesent fames torquent convallis, nec volutpat felis nascetur nisi etiam, consequat odio at auctor malesuada ultricies. Dapibus placerat vitae quis taciti mi ante fusce ut, sodales imperdiet pharetra morbi gravida augue cras inceptos, molestie scelerisque mattis at egestas porttitor senectus.\r\n\r\nSuscipit rhoncus etiam massa purus felis ac ullamcorper malesuada odio mus, congue viverra netus conubia ridiculus volutpat imperdiet nec ante penatibus pharetra, at cubilia venenatis orci nunc neque faucibus quam tortor. Ultrices mollis quam sagittis eu odio interdum facilisis congue, dictum at erat tempus orci lacus vulputate, condimentum aptent libero porttitor arcu nostra augue. Urna tellus posuere sociosqu tincidunt condimentum penatibus sapien curabitur volutpat ante taciti justo egestas dis, senectus elementum facilisis metus iaculis porttitor litora convallis cubilia turpis rhoncus dapibus arcu. Fringilla pellentesque nibh nullam penatibus nisi feugiat suscipit proin purus, sem nunc urna viverra lectus magna tortor ante taciti, interdum scelerisque montes molestie cras ultricies quis himenaeos. Egestas netus arcu urna suspendisse velit donec per, cras phasellus mollis leo nostra lacinia fringilla, faucibus porttitor eu erat sociosqu neque. Primis nisl fringilla convallis mauris ligula ornare aenean accumsan arcu nec velit, laoreet pulvinar felis mollis sodales fames nascetur porttitor facilisis torquent.\r\n\r\nCondimentum potenti nunc vivamus at tempor imperdiet pretium lacus, urna ultrices nulla torquent dis aliquet netus natoque nostra, iaculis dictumst nisl felis phasellus tellus mi. Cum mollis urna sem convallis ullamcorper, proin eu sapien commodo, tincidunt platea luctus accumsan. Litora nisi cum phasellus nam sociosqu commodo nibh viverra lacus, non placerat hac laoreet malesuada sociis ullamcorper ad euismod mattis, praesent quis fermentum cursus enim magna sodales dapibus. Pulvinar himenaeos duis pretium fringilla mus id, sed accumsan leo nec dictum integer commodo, metus bibendum tellus neque diam. Libero natoque nascetur habitant sociis sem eros quam inceptos mi rutrum augue viverra turpis vitae quisque, tellus cras lobortis porttitor vulputate facilisis arcu tristique pellentesque dictum ante tincidunt suspendisse. Nullam bibendum condimentum varius primis senectus habitant cubilia, urna ac magnis eleifend maecenas laoreet, a velit ultrices purus hendrerit ornare. Tempus dignissim dictumst blandit nibh nascetur class torquent litora ac penatibus, erat feugiat molestie non posuere faucibus vestibulum dui. Habitant inceptos pretium vel sagittis dis, montes lacinia nascetur.\r\n\r\nMaecenas aliquet porttitor neque nisl ac semper arcu curabitur vehicula, fusce etiam commodo blandit in netus rhoncus dis, eu imperdiet lacus class nisi quis enim posuere. Odio enim sagittis risus egestas diam lobortis ligula et tempor a, vivamus lacinia magna euismod molestie eu eget nullam. Sem dignissim inceptos mi sapien vehicula lectus bibendum euismod, interdum sociis maecenas penatibus natoque ante hendrerit.\r\n\r\nLigula quisque metus tellus iaculis eleifend ullamcorper fermentum curabitur natoque fringilla vehicula elementum, vel nibh penatibus mollis himenaeos leo mauris non diam habitant magna. Ridiculus mattis gravida quisque quis augue condimentum, diam posuere ut litora rhoncus dictumst est, feugiat habitasse cursus id in. Suscipit felis molestie vivamus hac ultricies porta dis, tincidunt rutrum himenaeos lectus accumsan fusce augue a, justo vulputate nisl sollicitudin nunc vehicula. Potenti cursus aptent dis consequat luctus augue convallis pellentesque torquent ornare dictumst faucibus, mauris lacus conubia dignissim ut mollis venenatis quisque fusce sociis donec nulla, eget diam dui netus pretium felis purus phasellus congue hendrerit ligula. Cubilia tincidunt commodo aptent rhoncus enim tortor porta imperdiet aliquam, libero semper condimentum blandit ad penatibus feugiat laoreet, massa inceptos mollis nisl urna est faucibus pulvinar. Sodales feugiat fusce nunc penatibus gravida aliquam proin orci, tempor quam posuere morbi sociosqu integer tellus litora dapibus, viverra natoque risus conubia vel fames non. Diam tristique aliquam in ornare tempus vestibulum semper, aptent mus nam velit fringilla cum, congue tincidunt urna platea mollis risus. Risus himenaeos rutrum vivamus suscipit litora egestas nullam euismod vestibulum, ad nascetur ac sagittis torquent velit congue imperdiet purus in, etiam nibh taciti eu aliquet curae venenatis semper.\r\n\r\nViverra est platea tempor aenean class arcu egestas gravida pretium pellentesque, congue magnis auctor placerat varius aliquet lacus proin morbi vivamus, hendrerit tristique pharetra cursus libero tempus sociis cum lobortis. Maecenas tortor platea aliquet tellus imperdiet nulla, netus penatibus rutrum ad vivamus eleifend pharetra, libero rhoncus id sodales eu. Tortor sapien imperdiet eleifend primis platea varius viverra fames hendrerit suspendisse habitant, ultrices massa pellentesque non purus himenaeos semper dis curabitur convallis vel, vivamus dictum pretium laoreet natoque habitasse mollis consequat nascetur curae. Parturient sem maecenas eu consequat in cubilia, platea feugiat nec interdum risus, sapien justo integer ante volutpat. Congue ultrices suspendisse diam torquent lobortis leo sodales, posuere aptent risus est quisque erat fringilla, vitae magna nec libero consequat integer. Orci metus parturient curae dignissim accumsan est mus arcu, interdum odio potenti sodales cras consequat ridiculus auctor, eros condimentum ligula mi porttitor neque scelerisque. Lacinia cubilia pretium facilisi scelerisque aliquam porta ullamcorper gravida fames enim suspendisse aptent, pellentesque pharetra dis purus rutrum at fermentum velit ligula penatibus. Semper sem metus vivamus nisl dapibus nostra id vitae, rhoncus libero platea a imperdiet cubilia maecenas, urna velit suspendisse habitasse proin auctor lobortis. Placerat bibendum rutrum lobortis eget ac integer netus odio vel, lectus tempus eleifend suspendisse metus ultricies lacinia volutpat cras, sed mollis aliquam vivamus parturient urna potenti morbi. Erat nam habitant gravida arcu in odio rutrum, dignissim et potenti conubia aliquam torquent molestie litora, ad senectus dis sagittis euismod hendrerit.\r\n\r\nPotenti torquent sociosqu blandit lacus nibh eleifend et duis quam ultrices pellentesque est tellus, primis sed risus urna mus curabitur consequat justo suspendisse habitant lobortis tempor. Dis euismod tempor eros at consequat suscipit turpis rutrum dictumst diam torquent aenean id, aliquet luctus fusce ac velit arcu varius ornare litora scelerisque fringilla. Per in fames himenaeos ut quisque nascetur aptent blandit gravida lectus, porta nisl risus faucibus dapibus pulvinar mi sem tellus iaculis ad, felis conubia vel sagittis non urna augue a nam. Parturient enim curabitur netus blandit interdum euismod condimentum cras, fringilla semper facilisis montes lacus porta fusce, proin vel commodo sociosqu mollis vestibulum morbi. Ultrices proin pretium taciti aliquet inceptos auctor, magnis ornare sociis cras condimentum, nunc maecenas sagittis id nulla. Vivamus curabitur ultrices imperdiet senectus natoque nisi aptent nostra, et neque ac ridiculus euismod proin nullam tristique porta, scelerisque quam maecenas inceptos dignissim mi in. Magnis penatibus nascetur aliquam auctor per mus aenean vitae id, est cum a lobortis nisi et aptent tristique cras sagittis, venenatis risus imperdiet molestie facilisi platea bibendum himenaeos. Condimentum in pellentesque ante dictumst libero blandit aptent a proin augue sollicitudin nulla aliquet, eleifend ut bibendum dictum convallis torquent montes integer netus rhoncus sodales egestas.\r\n\r\nMolestie suscipit nisi bibendum non sagittis tempor velit lectus tempus quam, metus suspendisse cursus lobortis in ridiculus eget pretium nunc, arcu nisl interdum nibh fusce curabitur duis odio varius. Dictum curabitur venenatis himenaeos velit lectus orci facilisis tristique magna leo ac ut, dapibus euismod imperdiet sagittis torquent etiam parturient dui gravida primis diam suscipit, varius in lacus curae nunc ligula nulla auctor vulputate at erat. Suscipit torquent feugiat curabitur sociosqu tempus habitant malesuada cras dui lacus, rhoncus convallis metus viverra fermentum penatibus netus pulvinar nibh. Quam porta nostra aptent taciti mus inceptos aenean rutrum primis fermentum risus commodo, ut tempor donec urna turpis tristique sollicitudin fringilla accumsan litora felis quisque, ullamcorper nascetur consequat volutpat auctor magnis fames augue nisl porttitor iaculis. Bibendum volutpat dignissim interdum etiam at convallis torquent facilisis malesuada, viverra pellentesque pulvinar magnis lobortis aliquam vulputate mi, vestibulum nibh suscipit primis himenaeos ullamcorper congue iaculis.\r\n\r\nProin condimentum fermentum blandit et nunc maecenas eleifend dis lobortis gravida nulla inceptos tortor scelerisque imperdiet est nullam tellus, nibh faucibus habitasse cubilia eget duis potenti velit hac hendrerit non nisl interdum curae dictumst porta. Ante donec suscipit ullamcorper mauris nascetur praesent orci, blandit ultrices gravida tristique curabitur dictumst ac, posuere primis dignissim platea augue netus. Ad euismod facilisi cras volutpat nibh dui proin vestibulum malesuada rhoncus, nam quis nostra gravida aliquam dictumst ultrices scelerisque fermentum, lacinia vulputate eget litora faucibus turpis curabitur odio aliquet. Lobortis rutrum duis sed aptent nibh consequat aliquet mus vulputate massa habitant, congue inceptos netus ornare sollicitudin pretium venenatis egestas vestibulum scelerisque, mollis natoque nunc phasellus condimentum parturient justo porttitor blandit porta. Euismod ut viverra pellentesque fringilla rutrum sodales ligula sem auctor, eu parturient donec sapien netus sagittis diam senectus malesuada, magnis fames quis per natoque tristique facilisi taciti.\r\n\r\nNullam id nibh cubilia dictumst rhoncus nam semper morbi aenean, etiam convallis sociosqu ut neque conubia nunc porttitor purus, ridiculus himenaeos dignissim eu tempor dictum vehicula faucibus. Eget rutrum dis et urna erat convallis aenean maecenas quis sollicitudin, facilisi potenti inceptos in tristique dictumst luctus suscipit vestibulum egestas morbi, eleifend aliquet tincidunt pellentesque class sociis laoreet semper velit. Venenatis nullam tortor purus arcu et inceptos velit orci dis semper, tempus natoque elementum eleifend sagittis platea mollis metus taciti posuere, nibh dictum condimentum litora in enim penatibus per non. Parturient mattis ad eget mauris ridiculus penatibus viverra etiam bibendum, duis nam ultricies malesuada velit porttitor potenti conubia. Luctus risus vivamus nisi proin hac et purus nibh, taciti facilisi ad sociis magnis class a quisque, turpis augue primis interdum dis elementum accumsan. Sagittis orci rhoncus platea urna dui class ut gravida cras natoque, molestie hac auctor parturient dapibus volutpat taciti nascetur nisl nibh, senectus at enim per fames elementum dictum condimentum fusce porttitor, mauris quam sollicitudin metus blandit lectus aliquam interdum augue. Lectus hendrerit aptent urna auctor posuere sociis quisque platea libero, semper in fermentum lacinia pharetra proin dapibus pretium, euismod taciti netus orci laoreet a ligula et. Dignissim pretium pulvinar lacus sociis ultrices ligula natoque hac fermentum, malesuada rutrum habitant nam ad ut phasellus maecenas volutpat, hendrerit luctus facilisi justo class tincidunt mi nascetur. Curabitur venenatis diam tempus congue velit morbi molestie, per lacus enim mollis tellus ac, massa vulputate a rutrum habitasse conubia. Augue ornare condimentum habitant nam vestibulum litora congue semper lacus, aliquam nascetur cum posuere cursus elementum integer sodales, hac suscipit auctor luctus accumsan neque ultrices velit.\r\n\r\nNascetur felis praesent mollis porttitor pharetra est at auctor phasellus enim bibendum congue vitae lectus, volutpat cum aliquam non integer odio ridiculus velit nullam habitasse nisl etiam. Ornare tellus donec sociosqu urna integer consequat faucibus condimentum fermentum ligula mi, vulputate mattis vitae suscipit lobortis tempor vel blandit sem natoque, montes velit pellentesque varius imperdiet tincidunt sollicitudin leo risus aliquet. Tempus neque tempor purus leo parturient condimentum feugiat, pellentesque libero taciti convallis tellus aptent, quam ridiculus augue sapien mi inceptos. Justo suscipit posuere himenaeos lobortis netus rutrum sociis tempus eu inceptos vulputate, sed aliquam imperdiet proin malesuada iaculis erat massa quis mollis lacinia senectus, auctor conubia rhoncus in convallis luctus tempor tincidunt magna cras. Mollis nam dui eleifend sollicitudin magnis mus, orci cras vestibulum penatibus sem eu iaculis, ut fames suscipit dapibus potenti. Ac metus litora ornare pulvinar natoque enim montes auctor quis, ante luctus porta augue tristique consequat proin rhoncus arcu, eu dapibus phasellus vestibulum posuere orci erat cras.\r\n\r\nGravida varius magnis egestas potenti litora placerat, dictumst mollis elementum hendrerit ut curabitur tempor, sed lacus sem massa mus. Nunc ligula tincidunt cras at egestas conubia cum lacinia curae fringilla inceptos, nascetur duis auctor commodo suspendisse orci lectus eros sed. Fames nisi rutrum habitant hendrerit rhoncus, faucibus in nulla augue, convallis euismod tellus senectus. Tortor duis lectus eu cursus vestibulum urna quisque purus conubia imperdiet nulla suscipit per tristique, malesuada ac lacus vulputate ad nibh mattis magna facilisis turpis eros fusce. Ornare viverra egestas nullam condimentum quisque placerat felis sagittis, a aliquet massa himenaeos dapibus fusce facilisi class, taciti inceptos aenean porta senectus enim suscipit. In ullamcorper eget consequat cursus nisi convallis luctus etiam urna ornare dictumst commodo placerat felis, vestibulum dui laoreet dapibus per nostra sem duis nam suspendisse lobortis pellentesque ridiculus. Vestibulum lacinia nisl praesent ultricies ornare etiam posuere nullam blandit, per rutrum consequat facilisi curae curabitur orci. Accumsan inceptos lacinia dui quis justo scelerisque curabitur, porttitor facilisi dis platea per nisl, nulla nunc duis tempus facilisis egestas. Conubia habitasse cursus penatibus augue feugiat magna, velit fames sem aliquet cubilia ligula sodales, parturient consequat hac montes mauris. Scelerisque penatibus nibh id dignissim libero odio dictumst nisl sociosqu quam, aptent senectus fames vestibulum magnis massa enim sodales tristique.\r\n\r\nDapibus justo bibendum nec tellus duis torquent himenaeos felis blandit nullam, vivamus sollicitudin purus proin magna nascetur eleifend vehicula auctor porta cras, nisl elementum ornare interdum egestas lobortis fringilla tempor et. Urna aliquet dictum odio posuere cras fames mattis feugiat et, eget nascetur morbi nullam ultricies nibh felis. Et vulputate habitant eros dui dis nibh felis placerat himenaeos, tempus pellentesque volutpat morbi nec nam suspendisse torquent, donec eget congue nisi sodales nulla montes ultrices.\r\n\r\nAc cras potenti congue ridiculus placerat hac donec duis hendrerit posuere, blandit etiam taciti lacus justo fringilla non platea maecenas tempus aliquam, venenatis ligula dictum dapibus bibendum eros natoque habitant a. Fusce tellus sem pulvinar per rutrum habitasse sapien taciti pretium, class etiam blandit litora at suspendisse ut integer iaculis, congue dignissim purus ridiculus tortor aliquet varius dictumst. Massa porta potenti nullam cursus ad vivamus rutrum felis ut dapibus ullamcorper, vehicula turpis primis platea dictum curabitur ultricies etiam fames at justo mattis, ultrices in netus aptent risus sociis erat class sociosqu rhoncus. Aliquet sociosqu feugiat fermentum dui curae mollis lacinia nascetur enim vel, cras ornare ultrices pharetra vulputate egestas blandit eget venenatis dignissim, euismod et interdum imperdiet parturient suscipit ac pellentesque mus. Volutpat facilisis turpis in mauris blandit per litora vulputate ad, viverra consequat suspendisse egestas vel conubia nec cursus ullamcorper congue, quisque bibendum nunc tristique lectus non libero phasellus. Congue vivamus eros mi habitant vel hac tortor, cras iaculis blandit curabitur proin ornare, integer posuere est nisi eleifend porttitor.', '5', '2023-04-28', '3', 'Dollar', 'USD', 'ICT', 'Cybersecurity', 'Europe', 'UK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtable`
--

CREATE TABLE `rmtable` (
  `rmid` int(11) NOT NULL,
  `rmname` varchar(20) NOT NULL,
  `rmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `userpassword` varchar(200) NOT NULL,
  `userphone` varchar(50) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `username`, `userpassword`, `userphone`, `useremail`, `gender`, `address`, `role`) VALUES
(1, 'Daniel Ng\'ang\'a', 'danitonjoroge@gmail.com', '$2y$10$Kyp6j6WaL6EtD6QbpQLk5uiLad65DrqhsIU5uDWmmzxdqZC81iAHi', '0720819566', 'daniellenjoroge@gmail.com', 'Male', 'Githurai, Nairobi.', 'Investor'),
(2, 'Jane Fiyai', 'fiyaijane@gmail.com', '$2y$10$pIA4g3PInScD.rGwVgiVJOR6uFle1zz4EipTHnTjRCOl0AIxAJhAu', '0720819566', 'daniellenjoroge@gmail.com', 'Male', '14694 Nakuru', 'Investor'),
(4, 'Daniel Ng\'ang\'a', 'fiyaijane@gmail.com', '$2y$10$0xIwAPyZ/zjwQBMxTVEr7.bYvlUwmShzG7l9kwniDjSz4D1u7MX3q', '0720819566', 'fiyaijane@gmail.com', 'Male', 'Githurai, Nairobi.', 'Relationship Manager'),
(5, 'James Njoroge', 'Jamjo', '$2y$10$4gs0yR3FFsPx8zZpqmrXau4EkziR9Vmzlnwq2BnHmsmQHwztdJ/ou', '0720819566', 'news24media@protonmail.com', 'Male', 'Githurai, Nairobi.', 'Admin'),
(6, 'John', 'news24media@protonmail.com', '$2y$10$EAat9cksPhHeNm/r.Cn5Ne5pXVGVkP4zkNQnTrRpCTVL1HrRXFvhy', '071212121212', 'johndoe@mail.com', 'Male', 'Nairobi', 'Creator'),
(7, 'Daniel Ng\'ang\'a', 'News 24', '$2y$10$eH4b064QoP9L7YaVtAKNnOaNG.t.49eNsO4rG/2OXfkmbiNQ6Z5yO', '0720819566', 'news24media1@protonmail.com', 'Male', 'Githurai, Nairobi.', 'Creator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`inv_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ideaid` (`idea_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`meesage_id`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`approved_by`);

--
-- Indexes for table `rmtable`
--
ALTER TABLE `rmtable`
  ADD PRIMARY KEY (`rmid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `meesage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `producttable`
--
ALTER TABLE `producttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtable`
--
ALTER TABLE `rmtable`
  MODIFY `rmid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `producttable`
--
ALTER TABLE `producttable`
  ADD CONSTRAINT `producttable_ibfk_1` FOREIGN KEY (`approved_by`) REFERENCES `usertable` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
