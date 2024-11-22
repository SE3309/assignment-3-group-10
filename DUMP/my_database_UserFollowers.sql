-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: my_database
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `UserFollowers`
--

DROP TABLE IF EXISTS `UserFollowers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserFollowers` (
  `username` varchar(25) NOT NULL,
  `followerUsername` varchar(25) NOT NULL,
  PRIMARY KEY (`username`,`followerUsername`),
  KEY `followerUsername` (`followerUsername`),
  CONSTRAINT `userfollowers_ibfk_1` FOREIGN KEY (`username`) REFERENCES `User` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userfollowers_ibfk_2` FOREIGN KEY (`followerUsername`) REFERENCES `User` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserFollowers`
--

LOCK TABLES `UserFollowers` WRITE;
/*!40000 ALTER TABLE `UserFollowers` DISABLE KEYS */;
INSERT INTO `UserFollowers` VALUES ('gwheeltonmc','aanderbruggeaa'),('ccardiffhf','abonhommegb'),('dchellenhammj','abonick6b'),('amainz6c','abrimson2d'),('cvasilevich32','acanedo9c'),('gweymont9w','acardenoso1u'),('tguiettb6','acresaroz'),('amayte4l','adescoffierko'),('wpashencr','adunmuirgi'),('tokelleher4x','adyethy'),('mudy1o','agarmqn'),('vperett9o','agheeorghieev'),('gblesliht','ahamprechtfg'),('mdalyc4','ahartmannd0'),('mwheelband4g','aheinsiusif'),('mbackhurst11','aherionbe'),('pgreyesr4','aiannetti2h'),('mthreadgallen','ajirasekq3'),('ndiessll','ajoinceyop'),('ostearnj4','aklyneraf'),('jrowley9t','alemaitre1n'),('pbarczynski37','alevined3'),('cgunning7e','amattiessenb'),('gmokesb7','amckea5x'),('aellicef6','amerwe20'),('emallock8h','anussii7p'),('gthunderchief4i','apettint'),('challstonei1','aramshay8m'),('tpankslb','arueggr6'),('cblackledgeom','asantobw'),('rmilbank5y','ascase42'),('tjeffryes1c','asealand4m'),('gvarvara2','asherbournelc'),('tgerardotcu','asimeoni'),('pstarrs21','askewes84'),('cdreghornq0','astrivensmf'),('zhandrock3k','avanniao'),('rtungatehc','awasielewskidj'),('pjankovsky1u','aworthingtonkd'),('eloganog','bbastidek8'),('aglason7','bbeamishhd'),('cashpital2t','bbecksrb'),('slunone','bbewicke34'),('sbaudinot9z','bbreempr'),('esnuggq1','bcatterallbq'),('vnewardmy','bchallenorm8'),('jemmett2d','bcodnercy'),('bzannelioh','bdavis8j'),('gradbond5o','bfraschetti72'),('jedmondsonf3','bjeffcoate1k'),('cshinton86','bknyvettev'),('atovey7a','blucken86'),('cternouthci','bmorston8b'),('agotcliffen3','bragborne97'),('shedgemanln','brisingfv'),('dpadillo64','brutledgecz'),('kridout83','bscruby4w'),('kmawdittp7','bseagood4s'),('ggreenhall2f','bstandish9f'),('mguysav','bstolzed3'),('hcominottinv','bswallwellm7'),('jpatist','btomczakp2'),('dcreese3i','bvanni7p'),('dlittefairbn','bwarne99'),('sribbens62','bwiszniewski67'),('switton7s','bzannelioh'),('amarzeleo4','caskewf1'),('plidsterb8','cbrett6f'),('brizziellorb','cburghillne'),('mfursland5l','ccogger88'),('mkupiszrq','ccrosondv'),('kcaplanbm','cdalglishcl'),('oweipperths','cdedomenicoab'),('vabrashkinc7','cdisleyod'),('hkeatingcx','cgather6e'),('jstenninej4','cgreenardkz'),('cscurrp8','cgullefordie'),('awasielewskidj','cheddelp'),('llodevick9x','ckestlebu'),('jtilby48','ckirsoppg9'),('fenston59','ckohrtml'),('jranklinme','clandaljw'),('cplayleic','clengnq'),('eklaasnr','cmarcodq'),('iwickenia','cosantok'),('oblastockck','creolfo2a'),('fgosbyeh','crickasse99'),('tchaseik','cridley2'),('tyouthedl3','cshailer4w'),('wzielinskibp','cshetliff80'),('ftavenerpc','cshinton86'),('tstitson1z','cternouthci'),('dbunston65','ctreagustqg'),('lheinssenmw','cvondruskanp'),('umealing7x','cweatherillkm'),('eluetchford38','cwinsorkx'),('hmerklefi','cwrintmorerl'),('hallwood4t','dandreuttigz'),('mdattenb','dblaisdellgv'),('jvasishchevkw','dbolsteridgehj'),('sgormally5e','dclines2g'),('tstrangmanf2','ddavsongy'),('ccowdroy44','dharkencw'),('ppettby','dhumbertio'),('fdocheq5','djakuboviczlx'),('ppatzeltog','dlambrookfv'),('plindseygm','dleuchars3o'),('dtourneed','dmalser5'),('nmaystonih','dmazzeon9'),('bgammelmv','dmccrumha'),('acornbellel','dpalfreemanbx'),('ndevallew','dparkynse8'),('dboeter1t','dpedrol6b'),('tworgenic','dpetras35'),('dhawkyensao','drandlesi9'),('mplacstone2r','dsekullaa7'),('pbastistiniak','dsurgennw'),('dtoffalonikt','dthebeaudhg'),('ssheepyqs','dzamorrano5t'),('brentoll7i','dzmitrovichlu'),('theavensb6','edaenencb'),('wcouper72','edelphs'),('hmassei8q','edewersonhe'),('wsherrocks6i','edoumencei'),('ccominolijt','eeuler8d'),('pagottbe','eklaasnr'),('aanderbruggeaa','elangsburyo4'),('tsimcoe3e','elequeux46'),('ptranfk','elucien3o'),('tsaterthwaitik','emacmeartyfp'),('shouchenkp','emardallpn'),('rvanbrugku','emckall14'),('blandon9g','eraesidehp'),('ubroxis77','ereamebj'),('slepruvostlv','eridgewell26'),('bchallenorm8','erubenkb'),('kdavidgeo','esollars2a'),('wolensbyp7','esteartay'),('whonigiz','ewellumj6'),('djorgensen5v','fbalmadierag'),('mchallicum5l','fberthomierhy'),('cpattleo9','fbridatki'),('cmckeveneylt','fedmonsond0'),('fchasneypz','felwin8y'),('rnewdick0','ffuentesly'),('mplanque9i','fkastingeg'),('pmccroft3f','fklempkepp'),('mhillhouse3s','fleathembm'),('lcurryer5z','fmclesega'),('acanedo9c','fpaddockih'),('ghoofe4f','fseylerp'),('lduguid2n','ftavenerpc'),('aseeger20','fwormell7l'),('cugolottion','galbanynd'),('nschimek81','gasplandr7'),('nraspin9e','gbuesnelaj'),('smuirdenq2','gbutterisdt'),('vdemchen9j','gdamettinm'),('sdanismo','gdenmeadiz'),('dirvingcj','ggreguoll4'),('aboothjarvisls','gkiljanno'),('dfaragher3g','gmcteggart9q'),('ccolesmq','gnairyrb'),('mabadamhs','godwyeri1'),('thaberghamj','gomalleyj8'),('sbiggar6x','gpatemanm'),('vmulliganbx','groddamit'),('abasso8n','gspillerna'),('tkinsonra','gtomichks'),('mmottersheadgf','gvlasenkoiz'),('cbeasleighq0','gwardinglyes'),('ebaselio2s','gweymont9w'),('mtorns4c','hbiasio35'),('jchiechionl','hbowersf2'),('afiveyqk','hburnsalll3'),('gblaneyie','hclarajh'),('aibbettby','hcollcottr2'),('bashburne2l','hdelouchfh'),('flaffranconiht','hmurrellslw'),('aspeddinqi','hpoile3k'),('foliddyk3','htibbs93'),('dredingtonqp','hvanveldenct'),('dwildbore3','hwebborndh'),('woakwoodx','iahrenspu'),('ljobjz','ibeddingham7u'),('mectorj3','ideletefb'),('blucken86','idemattialc'),('scaneroe','ifinlanjc'),('ksiward4y','imargarsonjl'),('gmoroney5k','irispineil'),('dgorriear','jchaineyjq'),('uloughlini','jchisholmlq'),('cleggen2u','jcoppockc7'),('tjephsonpg','jdobbyndx'),('cmulqueen2z','jgiriardellike'),('jprophetif','jjerzakn2'),('tnazair3w','jkarlsen9m'),('mscrivner2q','jmahoneyd5'),('etiffany3b','jpeermanj'),('kramalheted6','jroxbeeiy'),('dshearaer','jrushbury87'),('wmacmanusaq','jruslinge93'),('tmeddemmenox','jscrooby6m'),('alovitt3l','jseargeantox'),('jpetrowskyff','jtrussi0'),('wwhitehurst6u','jwickmannix'),('teisak57','kbontinen6'),('jardlingbd','kcockettrr'),('ebendingdz','kcorbridgere'),('cknollesgreenaz','kfarbracee4'),('chovertp9','kgreenlydt'),('tmansion2w','kgyer2z'),('tlivesey4a','kmableyq4'),('shuardnl','kpotellnu'),('ibadseyj1','krainsburyob'),('efirbanks4v','krouff3m'),('rthorndalegl','ktessington90'),('asealandbz','ktippell71'),('cmandreyd5','ktother2m'),('oflewangy','kviversnf'),('acordalldm','lbrandrick6h'),('nglasmanet','lbrumbleof'),('dcheesleypx','ldraysonk1'),('kcaplisw','lgrogonapq'),('sreiglar41','lixermy'),('cclements82','lizzardfc'),('mwiskar2n','ljobjz'),('mmurriganbv','ljuzek37'),('rfortune1w','llanglais4p'),('cbussens1y','lmelbournij'),('fpollendinekv','lolsengo'),('aradoux6y','lpaydon6g'),('epriestmanq1','lrandsl4'),('dcarradicel5','lreal5o'),('cgasquoine9d','lreford7z'),('ascarlanpl','lsaull21'),('pmckayje','lskateaa'),('bhubax','lsorley76'),('sdimmackm4','lvella9j'),('cgyford9n','lvollere0'),('glamertonbp','lwhellamsd8'),('jfreed7t','lwhyatt79'),('mchaulk35','malexsandrovich92'),('pdikesf3','mbigrigg3h'),('tduferiehh','mbillany30'),('bgodbald5d','mbockin9u'),('jmidghalli8','mbreslauer4'),('whandforthjq','mbroadey7w'),('mphilippsqm','mbulgerf4'),('bgreenfielddk','mchallicum5l'),('gpie3','mclay6a'),('adynejs','mcopperpb'),('ajirasekq3','mduding82'),('mschermickfg','mfarryan6y'),('msealandbf','mgedling9q'),('eduffieldes','mgrigolli8p'),('ktrobey1j','mguysav'),('itrengovepm','mhendricksfq'),('rattenbroughlf','mkupiszrq'),('ayesenevj1','mlergan9a'),('kyukhnov28','mmanifouldg1'),('tjoincey4a','mmartinuzzi8e'),('gburnsydea0','mpelosk9'),('obonde7q','mpennigarpg'),('rcollington9q','mportwaine7f'),('ttiversid','mredfernelf'),('hdon69','mrobkeni5'),('eridgewell26','mruppertzrj'),('eendricihd','mschermickfg'),('csorro7g','mschwando7'),('twhitten7n','mscroggiep6'),('rcooch2r','mscroobyf5'),('fboamea1','mshepheardi6'),('ihalebm','msproston65'),('fleathembm','mtomasoni3j'),('ngoadyjr','mwinspurdd'),('cdellenbacho5','mzecchinihk'),('fspurlingfx','nbevissfg'),('ktolefreedc','nburlinghamb7'),('bwolveyh5','ncurle49'),('ahaw6n','ngauleki'),('ldelgadilloi5','nklazengah9'),('mduthyec','nnardonipj'),('mbonin7v','nnewisbu'),('yeste55','nninnis9w'),('tgrimsley5f','nsertinb3'),('gtrewhellag8','nshopcottqu'),('lbaleineok','ntillett40'),('jaldeneo','ntourrylt'),('mwagstaffefs','nwharmbycl'),('kchevinsaw','oclaragebr'),('chopewell84','oflewangy'),('nburlinghamb7','ogriffe2b'),('asummergillcm','oriddeoughk6'),('cchatin5f','oweipperths'),('kjillard95','pbarnsnc'),('rlocalak','pbraamsmp'),('tlintotj7','pcomford7a'),('egiannonib','pcurraneu'),('lreddyhoffi3','pdelahayro'),('ppatchettqo','pdunlop6d'),('pmckeeman7d','pinstockdr'),('bjeffcoate1k','pirnis1f'),('jbardeyha','pkinnierff'),('lvella9j','pmathesed'),('dzimmermanns7l','pmazin6b'),('eheggadonpi','pmckeeman7d'),('irossiterg8','ppurse16'),('mbroadey7w','prenison38'),('emarjot4','psammsba'),('gspillerna','ptorresemp'),('adodding72','pvinter5j'),('kwillmot7f','rbalselliedh'),('smattheishq','rbelfeltfp'),('akempton42','rcremen8i'),('hburnsalll3','rcullimore9g'),('kmilliergz','retchinghambg'),('ewelldrakeg','rjakeway6x'),('diczokvitzoz','rlaurencotex'),('sjosilowskik9','rmeenand9'),('emadgettoc','routridgeqd'),('ctudor7o','rpervoehx'),('kspacynn','rplanteb2'),('jpennacci10','rrichtlm'),('sdytham22','rsare9m'),('lgreerqd','rstapforthgi'),('ewellumj6','rtrottam'),('skellockpf','rtrymmegs'),('kbarthelmes1y','rwheaterfy'),('cstallibrassmm','saingellmb'),('rnarramoreat','sbanisterof'),('dpetras35','sbinchkp'),('dlamburne5','scaneroe'),('ishinfield1o','screswell5m'),('fgarmanbj','scuseickbo'),('wainslie3z','sdannn'),('gpatemanm','sdrayson7p'),('fpolkfd','sdrucemj'),('sdrucemj','shaithr0'),('agobolos61','shalgarthgv'),('bwegnera8','shuardnl'),('mkorneln7','slingerhs'),('creviehb','slunone'),('reddise4','socannon22'),('esilkston5i','spomphretthb'),('thappert46','sredmelldd'),('moharneypl','ssaffenk1'),('jwickmannix','ssonscheing'),('tspencelayhqp','sstirzakerdk'),('awestwickhv','strobridgeja'),('mmarvell59','swhitefootac'),('dzamorrano5t','swickeygs'),('prenison38','syurinovrn'),('espyvyeef','tbroxisc1'),('dtattershawo5','tbuchanan5b'),('ldenkinh','tconkling8a'),('tplasterhx','tdommetthn'),('ccasterouku','tdunleavynw'),('bchettle8w','tericcn'),('aanwylpc','tfrankowskin9'),('kfortunk8','tgodehardsfa9'),('ocolls8e','thaberghamj'),('lvere3h','thorchec4'),('mstealeycf','thuorticq6'),('edannelqt','tjacquet7z'),('pmchaffy6e','tjakolevitchl1'),('tduddan4d','tmeddemmenox'),('mcrostonc','tmicahil'),('lmarrowm7','tpadykk'),('cvanzon10','tplasterhx'),('emcduffygh','trowbothampt'),('ccoxallnv','tturleyo3'),('cgeeringap','tvictorym9'),('apolsinin','tyouthedl3'),('gjellicorseen','ufenelon8j'),('ecampa4h','umegarrypj'),('tbrozssetg5','vbriantjr'),('lkonzelmannm2','vdaggerig'),('cbullon1g','vgennns'),('vmencehi','vjacquemet6s'),('nsizev','vmcallastera2'),('apayleyd8','voloughnan60'),('ccogger88','vrutleyf3'),('dlambrookfv','vtaillardf8'),('ehudlestonby','vtomczynskijn'),('aciccottiopa','wehratds'),('olebrunps','wfurslanddk'),('edoppler8m','wgriggsjf'),('eburberyeo2','whollindalej9'),('ayellpk','willstonjh'),('bspavinsdy','wmattamrl'),('rkilrowhm','wnegalfe'),('leveralj2','wsherrocks6i'),('rplanteb2','wwhitehurst6u'),('zeptonrp','xmcsparranev'),('genrico7f','ycocksedgeh'),('edaenencb','yeyree5k'),('cportsmouth3h','ytibbles9k'),('skelshawq','zeptonrp'),('rmayerlm','zhandrock3k');
/*!40000 ALTER TABLE `UserFollowers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 17:23:38