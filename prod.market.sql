-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: market
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `accounts_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `blocks_id` int(10) unsigned NOT NULL,
  `vlan_id` int(10) unsigned NOT NULL,
  `block` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`blocks_id`),
  KEY `fk_blocks_vlans1_idx` (`vlan_id`),
  CONSTRAINT `fk_blocks_vlans1` FOREIGN KEY (`vlan_id`) REFERENCES `vlans` (`vlan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_countries`
--

DROP TABLE IF EXISTS `core_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_countries` (
  `country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1990 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_countries`
--

LOCK TABLES `core_countries` WRITE;
/*!40000 ALTER TABLE `core_countries` DISABLE KEYS */;
INSERT INTO `core_countries` VALUES (1741,'Andorra','AD'),(1742,'United Arab Emirates','AE'),(1743,'Afghanistan','AF'),(1744,'Antigua and Barbuda','AG'),(1745,'Anguilla','AI'),(1746,'Albania','AL'),(1747,'Armenia','AM'),(1748,'Angola','AO'),(1749,'Antarctica','AQ'),(1750,'Argentina','AR'),(1751,'American Samoa','AS'),(1752,'Austria','AT'),(1753,'Australia','AU'),(1754,'Aruba','AW'),(1755,'Aland Islands','AX'),(1756,'Azerbaijan','AZ'),(1757,'Bosnia and Herzegovina','BA'),(1758,'Barbados','BB'),(1759,'Bangladesh','BD'),(1760,'Belgium','BE'),(1761,'Burkina Faso','BF'),(1762,'Bulgaria','BG'),(1763,'Bahrain','BH'),(1764,'Burundi','BI'),(1765,'Benin','BJ'),(1766,'Saint Barth&eacute;lemy','BL'),(1767,'Bermuda','BM'),(1768,'Brunei Darussalam','BN'),(1769,'Bolivia','BO'),(1770,'Bonaire - Sint Eustatius - Saba','BQ'),(1771,'Brazil','BR'),(1772,'Bahamas','BS'),(1773,'Bhutan','BT'),(1774,'Bouvet Island','BV'),(1775,'Botswana','BW'),(1776,'Belarus','BY'),(1777,'Belize','BZ'),(1778,'Canada','CA'),(1779,'Cocos Islands','CC'),(1780,'Congo','CD'),(1781,'Central African Republic','CF'),(1782,'Congo','CG'),(1783,'Switzerland','CH'),(1784,'Cote d&#039;Ivoire','CI'),(1785,'Cook Islands','CK'),(1786,'Chile','CL'),(1787,'Cameroon','CM'),(1788,'China','CN'),(1789,'Colombia','CO'),(1790,'Costa Rica','CR'),(1791,'Cuba','CU'),(1792,'Cabo Verde','CV'),(1793,'Cura&ccedil;ao','CW'),(1794,'Christmas Island','CX'),(1795,'Cyprus','CY'),(1796,'Czech Republic','CZ'),(1797,'Germany','DE'),(1798,'Djibouti','DJ'),(1799,'Denmark','DK'),(1800,'Dominica','DM'),(1801,'Dominican Republic','DO'),(1802,'Algeria','DZ'),(1803,'Ecuador','EC'),(1804,'Estonia','EE'),(1805,'Egypt','EG'),(1806,'Western Sahara','EH'),(1807,'Eritrea','ER'),(1808,'Spain','ES'),(1809,'Ethiopia','ET'),(1810,'Finland','FI'),(1811,'Fiji','FJ'),(1812,'Falkland Islands','FK'),(1813,'Micronesia','FM'),(1814,'Faroe Islands','FO'),(1815,'France','FR'),(1816,'Gabon','GA'),(1817,'United Kingdom','GB'),(1818,'Grenada','GD'),(1819,'Georgia','GE'),(1820,'French Guiana','GF'),(1821,'Guernsey','GG'),(1822,'Ghana','GH'),(1823,'Gibraltar','GI'),(1824,'Greenland','GL'),(1825,'Gambia','GM'),(1826,'Guinea','GN'),(1827,'Guadeloupe','GP'),(1828,'Equatorial Guinea','GQ'),(1829,'Greece','GR'),(1830,'South Georgia and the South Sandwich Islands','GS'),(1831,'Guatemala','GT'),(1832,'Guam','GU'),(1833,'Guinea-Bissau','GW'),(1834,'Guyana','GY'),(1835,'Hong Kong','HK'),(1836,'Heard Island and McDonald Islands','HM'),(1837,'Honduras','HN'),(1838,'Croatia','HR'),(1839,'Haiti','HT'),(1840,'Hungary','HU'),(1841,'Indonesia','ID'),(1842,'Ireland','IE'),(1843,'Israel','IL'),(1844,'Isle of Man','IM'),(1845,'India','IN'),(1846,'British Indian Ocean Territory','IO'),(1847,'Iraq','IQ'),(1848,'Iran','IR'),(1849,'Iceland','IS'),(1850,'Italy','IT'),(1851,'Jersey','JE'),(1852,'Jamaica','JM'),(1853,'Jordan','JO'),(1854,'Japan','JP'),(1855,'Kenya','KE'),(1856,'Kyrgyzstan','KG'),(1857,'Cambodia','KH'),(1858,'Kiribati','KI'),(1859,'Comoros','KM'),(1860,'Saint Kitts and Nevis','KN'),(1861,'North Korea','KP'),(1862,'South Korea','KR'),(1863,'Kuwait','KW'),(1864,'Cayman Islands','KY'),(1865,'Kazakhstan','KZ'),(1866,'Lao People&#039;s Democratic Republic','LA'),(1867,'Lebanon','LB'),(1868,'Saint Lucia','LC'),(1869,'Liechtenstein','LI'),(1870,'Sri Lanka','LK'),(1871,'Liberia','LR'),(1872,'Lesotho','LS'),(1873,'Lithuania','LT'),(1874,'Luxembourg','LU'),(1875,'Latvia','LV'),(1876,'Libya','LY'),(1877,'Morocco','MA'),(1878,'Monaco','MC'),(1879,'Moldova','MD'),(1880,'Montenegro','ME'),(1881,'Saint Martin','MF'),(1882,'Madagascar','MG'),(1883,'Marshall Islands','MH'),(1884,'Macedonia','MK'),(1885,'Mali','ML'),(1886,'Myanmar','MM'),(1887,'Mongolia','MN'),(1888,'Macao','MO'),(1889,'Northern Mariana Islands','MP'),(1890,'Martinique','MQ'),(1891,'Mauritania','MR'),(1892,'Montserrat','MS'),(1893,'Malta','MT'),(1894,'Mauritius','MU'),(1895,'Maldives','MV'),(1896,'Malawi','MW'),(1897,'Mexico','MX'),(1898,'Malaysia','MY'),(1899,'Mozambique','MZ'),(1900,'Namibia','NA'),(1901,'New Caledonia','NC'),(1902,'Niger','NE'),(1903,'Norfolk Island','NF'),(1904,'Nigeria','NG'),(1905,'Nicaragua','NI'),(1906,'Netherlands','NL'),(1907,'Norway','NO'),(1908,'Nepal','NP'),(1909,'Nauru','NR'),(1910,'Niue','NU'),(1911,'New Zealand','NZ'),(1912,'Oman','OM'),(1913,'Panama','PA'),(1914,'Peru','PE'),(1915,'French Polynesia','PF'),(1916,'Papua New Guinea','PG'),(1917,'Philippines','PH'),(1918,'Pakistan','PK'),(1919,'Poland','PL'),(1920,'Saint Pierre and Miquelon','PM'),(1921,'Pitcairn','PN'),(1922,'Puerto Rico','PR'),(1923,'Palestine','PS'),(1924,'Portugal','PT'),(1925,'Palau','PW'),(1926,'Paraguay','PY'),(1927,'Qatar','QA'),(1928,'Reunion','RE'),(1929,'Romania','RO'),(1930,'Serbia','RS'),(1931,'Russian Federation','RU'),(1932,'Rwanda','RW'),(1933,'Saudi Arabia','SA'),(1934,'Solomon Islands','SB'),(1935,'Seychelles','SC'),(1936,'Sudan','SD'),(1937,'Sweden','SE'),(1938,'Singapore','SG'),(1939,'Saint Helena','SH'),(1940,'Slovenia','SI'),(1941,'Svalbard and Jan Mayen','SJ'),(1942,'Slovakia','SK'),(1943,'Sierra Leone','SL'),(1944,'San Marino','SM'),(1945,'Senegal','SN'),(1946,'Somalia','SO'),(1947,'Suriname','SR'),(1948,'South Sudan','SS'),(1949,'Sao Tome and Principe','ST'),(1950,'El Salvador','SV'),(1951,'Sint Maarten','SX'),(1952,'Syrian Arab Republic','SY'),(1953,'Swaziland','SZ'),(1954,'Turks and Caicos Islands','TC'),(1955,'Chad','TD'),(1956,'French Southern Territories','TF'),(1957,'Togo','TG'),(1958,'Thailand','TH'),(1959,'Tajikistan','TJ'),(1960,'Tokelau','TK'),(1961,'Timor-Leste','TL'),(1962,'Turkmenistan','TM'),(1963,'Tunisia','TN'),(1964,'Tonga','TO'),(1965,'Turkey','TR'),(1966,'Trinidad and Tobago','TT'),(1967,'Tuvalu','TV'),(1968,'Taiwan','TW'),(1969,'Tanzania','TZ'),(1970,'Ukraine','UA'),(1971,'Uganda','UG'),(1972,'United States Minor Outlying Islands','UM'),(1973,'United States','US'),(1974,'Uruguay','UY'),(1975,'Uzbekistan','UZ'),(1976,'Vatican City','VA'),(1977,'Saint Vincent and the Grenadines','VC'),(1978,'Venezuela','VE'),(1979,'Virgin Islands','VG'),(1980,'Virgin Islands','VI'),(1981,'Viet Nam','VN'),(1982,'Vanuatu','VU'),(1983,'Wallis and Futuna','WF'),(1984,'Samoa','WS'),(1985,'Yemen','YE'),(1986,'Mayotte','YT'),(1987,'South Africa','ZA'),(1988,'Zambia','ZM'),(1989,'Zimbabwe','ZW');
/*!40000 ALTER TABLE `core_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_regions`
--

DROP TABLE IF EXISTS `core_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_regions` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `region` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`region_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `fk_regions_countries1` FOREIGN KEY (`country_id`) REFERENCES `core_countries` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10450 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_regions`
--

LOCK TABLES `core_regions` WRITE;
/*!40000 ALTER TABLE `core_regions` DISABLE KEYS */;
INSERT INTO `core_regions` VALUES (6967,1741,'Andorra la Vella','07'),(6968,1741,'Canillo','02'),(6969,1741,'Encamp','03'),(6970,1741,'Escaldes-Engordany','08'),(6971,1741,'La Massana','04'),(6972,1741,'Ordino','05'),(6973,1741,'Sant Juli&agrave; de L&ograve;ria','06'),(6974,1742,'Abu Dhabi','AZ'),(6975,1742,'Ajman','AJ'),(6976,1742,'Fujairah','FU'),(6977,1742,'Sharjah','SH'),(6978,1742,'Dubai','DU'),(6979,1742,'Ras al-Khaimah','RK'),(6980,1742,'Umm al-Quwain','UQ'),(6981,1743,'Badakhshan','BDS'),(6982,1743,'Badghis','BDG'),(6983,1743,'Baghlan','BGL'),(6984,1743,'Balkh','BAL'),(6985,1743,'Bamyan','BAM'),(6986,1743,'Daykundi','DAY'),(6987,1743,'Farah','FRA'),(6988,1743,'Faryab','FYB'),(6989,1743,'Ghazni','GHA'),(6990,1743,'Ghōr','GHO'),(6991,1743,'Helmand','HEL'),(6992,1743,'Herat','HER'),(6993,1743,'Jowzjan','JOW'),(6994,1743,'Kabul','KAB'),(6995,1743,'Kandahar','KAN'),(6996,1743,'Kapisa','KAP'),(6997,1743,'Khost','KHO'),(6998,1743,'Kunar','KNR'),(6999,1743,'Kunduz','KDZ'),(7000,1743,'Laghman','LAG'),(7001,1743,'Logar','LOG'),(7002,1743,'Nangarhar','NAN'),(7003,1743,'Nimruz','NIM'),(7004,1743,'Nuristan','NUR'),(7005,1743,'Paktika','PKA'),(7006,1743,'Paktia','PIA'),(7007,1743,'Panjshir','PAN'),(7008,1743,'Parwan','PAR'),(7009,1743,'Samangan','SAM'),(7010,1743,'Sar-e Pol','SAR'),(7011,1743,'Takhar','TAK'),(7012,1743,'Urozgan','URU'),(7013,1743,'Maidan Wardak','WAR'),(7014,1743,'Zabul','ZAB'),(7015,1744,'Saint George','03'),(7016,1744,'Saint John','04'),(7017,1744,'Saint Mary','05'),(7018,1744,'Saint Paul','06'),(7019,1744,'Saint Peter','07'),(7020,1744,'Saint Philip','08'),(7021,1744,'Barbuda','10'),(7022,1744,'Redonda','11'),(7023,1746,'Berat','01'),(7024,1746,'Dib&euml;r','09'),(7025,1746,'Durr&euml;s','02'),(7026,1746,'Elbasan','03'),(7027,1746,'Fier','04'),(7028,1746,'Gjirokast&euml;r','05'),(7029,1746,'Kor&ccedil;&euml;','06'),(7030,1746,'Kuk&euml;s','07'),(7031,1746,'Lezh&euml;','08'),(7032,1746,'Shkod&euml;r','10'),(7033,1746,'Tiran&euml;','11'),(7034,1746,'Vlor&euml;','12'),(7035,1747,'Yerevan','ER'),(7036,1747,'Aragatsotn','AG'),(7037,1747,'Ararat','AR'),(7038,1747,'Armavir','AV'),(7039,1747,'Gegharkunik','GR'),(7040,1747,'Kotayk','KT'),(7041,1747,'Lori','LO'),(7042,1747,'Shirak','SH'),(7043,1747,'Syunik','SU'),(7044,1747,'Tavush','TV'),(7045,1747,'Vayots Dzor','VD'),(7046,1748,'Bengo','BGO'),(7047,1748,'Benguela','BGU'),(7048,1748,'Bi&eacute;','BIE'),(7049,1748,'Cabinda','CAB'),(7050,1748,'Cunene','CNN'),(7051,1748,'Huambo','HUA'),(7052,1748,'Hu&iacute;la','HUI'),(7053,1748,'Kuando Kubango','CCU'),(7054,1748,'Kwanza Norte','CNO'),(7055,1748,'Kwanza Sul','CUS'),(7056,1748,'Luanda','LUA'),(7057,1748,'Lunda Norte','LNO'),(7058,1748,'Lunda Sul','LSU'),(7059,1748,'Malange','MAL'),(7060,1748,'Moxico','MOX'),(7061,1748,'Namibe','NAM'),(7062,1748,'U&iacute;ge','UIG'),(7063,1748,'Zaire','ZAI'),(7064,1750,'Ciudad Aut&oacute;noma de Buenos Aires','C'),(7065,1750,'Buenos Aires','B'),(7066,1750,'Catamarca','K'),(7067,1750,'Chaco','H'),(7068,1750,'Chubut','U'),(7069,1750,'C&oacute;rdoba','X'),(7070,1750,'Corrientes','W'),(7071,1750,'Entre R&iacute;os','E'),(7072,1750,'Formosa','P'),(7073,1750,'Jujuy','Y'),(7074,1750,'La Pampa','L'),(7075,1750,'La Rioja','F'),(7076,1750,'Mendoza','M'),(7077,1750,'Misiones','N'),(7078,1750,'Neuqu&eacute;n','Q'),(7079,1750,'R&iacute;o Negro','R'),(7080,1750,'Salta','A'),(7081,1750,'San Juan','J'),(7082,1750,'San Luis','D'),(7083,1750,'Santa Cruz','Z'),(7084,1750,'Santa Fe','S'),(7085,1750,'Santiago del Estero','G'),(7086,1750,'Tierra del Fuego','V'),(7087,1750,'Tucum&aacute;n','T'),(7088,1752,'Burgenland','1'),(7089,1752,'Carinthia','2'),(7090,1752,'Lower Austria','3'),(7091,1752,'Upper Austria','4'),(7092,1752,'Salzburg','5'),(7093,1752,'Styria','6'),(7094,1752,'Tyrol','7'),(7095,1752,'Vorarlberg','8'),(7096,1752,'Vienna','9'),(7097,1753,'New South Wales','NSW'),(7098,1753,'Queensland','QLD'),(7099,1753,'South Australia','SA'),(7100,1753,'Tasmania','TAS'),(7101,1753,'Victoria','VIC'),(7102,1753,'Western Australia','WA'),(7103,1753,'Australian Capital Territory','ACT'),(7104,1753,'Northern Territory','NT'),(7105,1756,'Nakhchivan','NX'),(7106,1757,'Federation of Bosnia and Herzegovina','BIH'),(7107,1757,'Republika Srpska','SRP'),(7108,1757,'Brčko District','BRC'),(7109,1758,'Christ Church','01'),(7110,1758,'Saint Andrew','02'),(7111,1758,'Saint George','03'),(7112,1758,'Saint James','04'),(7113,1758,'Saint John','05'),(7114,1758,'Saint Joseph','06'),(7115,1758,'Saint Lucy','07'),(7116,1758,'Saint Michael','08'),(7117,1758,'Saint Peter','09'),(7118,1758,'Saint Philip','10'),(7119,1758,'Saint Thomas','11'),(7120,1759,'Barisal','A'),(7121,1759,'Chittagong','B'),(7122,1759,'Dhaka','C'),(7123,1759,'Khulna','D'),(7124,1759,'Mymensingh','H'),(7125,1759,'Rajshahi','E'),(7126,1759,'Rangpur','F'),(7127,1759,'Sylhet','G'),(7128,1760,'Brussels-Capital Region','BRU'),(7129,1760,'Flemish Region','VLG'),(7130,1760,'Walloon Region','WAL'),(7131,1761,'Boucle du Mouhoun','01'),(7132,1761,'Cascades','02'),(7133,1761,'Centre','03'),(7134,1761,'Centre-Est','04'),(7135,1761,'Centre-Nord','05'),(7136,1761,'Centre-Ouest','06'),(7137,1761,'Centre-Sud','07'),(7138,1761,'Est','08'),(7139,1761,'Hauts-Bassins','09'),(7140,1761,'Nord','10'),(7141,1761,'Plateau-Central','11'),(7142,1761,'Sahel','12'),(7143,1761,'Sud-Ouest','13'),(7144,1762,'Blagoevgrad','01'),(7145,1762,'Burgas','02'),(7146,1762,'Dobrich','08'),(7147,1762,'Gabrovo','07'),(7148,1762,'Haskovo','26'),(7149,1762,'Kardzhali','09'),(7150,1762,'Kyustendil','10'),(7151,1762,'Lovech','11'),(7152,1762,'Montana','12'),(7153,1762,'Pazardzhik','13'),(7154,1762,'Pernik','14'),(7155,1762,'Pleven','15'),(7156,1762,'Plovdiv','16'),(7157,1762,'Razgrad','17'),(7158,1762,'Ruse','18'),(7159,1762,'Shumen','27'),(7160,1762,'Silistra','19'),(7161,1762,'Sliven','20'),(7162,1762,'Smolyan','21'),(7163,1762,'Sofia','23'),(7164,1762,'Sofia (stolitsa)','22'),(7165,1762,'Stara Zagora','24'),(7166,1762,'Targovishte','25'),(7167,1762,'Varna','03'),(7168,1762,'Veliko Tarnovo','04'),(7169,1762,'Vidin','05'),(7170,1762,'Vratsa','06'),(7171,1762,'Yambol','28'),(7172,1763,'Capital Governorate','13'),(7173,1763,'Southern Governorate','14'),(7174,1763,'Muharraq Governorate','15'),(7175,1763,'Northern Governorate','17'),(7176,1764,'Bubanza','BB'),(7177,1764,'Bujumbura Mairie','BM'),(7178,1764,'Bujumbura Rural','BL'),(7179,1764,'Bururi','BR'),(7180,1764,'Cankuzo','CA'),(7181,1764,'Cibitoke','CI'),(7182,1764,'Gitega','GI'),(7183,1764,'Karuzi','KR'),(7184,1764,'Kayanza','KY'),(7185,1764,'Kirundo','KI'),(7186,1764,'Makamba','MA'),(7187,1764,'Muramvya','MU'),(7188,1764,'Muyinga','MY'),(7189,1764,'Mwaro','MW'),(7190,1764,'Ngozi','NG'),(7191,1764,'Rumonge','RM'),(7192,1764,'Rutana','RT'),(7193,1764,'Ruyigi','RY'),(7194,1765,'Alibori','AL'),(7195,1765,'Atacora','AK'),(7196,1765,'Atlantique','AQ'),(7197,1765,'Borgou','BO'),(7198,1765,'Collines','CO'),(7199,1765,'Couffo','KO'),(7200,1765,'Donga','DO'),(7201,1765,'Littoral','LI'),(7202,1765,'Mono','MO'),(7203,1765,'Ou&eacute;m&eacute;','OU'),(7204,1765,'Plateau','PL'),(7205,1765,'Zou','ZO'),(7206,1768,'Belait','BE'),(7207,1768,'Brunei-Muara','BM'),(7208,1768,'Temburong','TE'),(7209,1768,'Tutong','TU'),(7210,1769,'Cochabamba','C'),(7211,1769,'Chuquisaca','H'),(7212,1769,'El Beni','B'),(7213,1769,'La Paz','L'),(7214,1769,'Oruro','O'),(7215,1769,'Pando','N'),(7216,1769,'Potos&iacute;','P'),(7217,1769,'Santa Cruz','S'),(7218,1769,'Tarija','T'),(7219,1770,'Bonaire','BO'),(7220,1770,'Saba','SA'),(7221,1770,'Sint Eustatius','SE'),(7222,1771,'Distrito Federal','DF'),(7223,1771,'Acre','AC'),(7224,1771,'Alagoas','AL'),(7225,1771,'Amap&aacute;','AP'),(7226,1771,'Amazonas','AM'),(7227,1771,'Bahia','BA'),(7228,1771,'Cear&aacute;','CE'),(7229,1771,'Esp&iacute;rito Santo','ES'),(7230,1771,'Goi&aacute;s','GO'),(7231,1771,'Maranh&atilde;o','MA'),(7232,1771,'Mato Grosso','MT'),(7233,1771,'Mato Grosso do Sul','MS'),(7234,1771,'Minas Gerais','MG'),(7235,1771,'Par&aacute;','PA'),(7236,1771,'Para&iacute;ba','PB'),(7237,1771,'Paran&aacute;','PR'),(7238,1771,'Pernambuco','PE'),(7239,1771,'Piau&iacute;','PI'),(7240,1771,'Rio de Janeiro','RJ'),(7241,1771,'Rio Grande do Norte','RN'),(7242,1771,'Rio Grande do Sul','RS'),(7243,1771,'Rond&ocirc;nia','RO'),(7244,1771,'Roraima','RR'),(7245,1771,'Santa Catarina','SC'),(7246,1771,'S&atilde;o Paulo','SP'),(7247,1771,'Sergipe','SE'),(7248,1771,'Tocantins','TO'),(7249,1772,'Acklins','AK'),(7250,1772,'Berry Islands','BY'),(7251,1772,'Bimini','BI'),(7252,1772,'Black Point','BP'),(7253,1772,'Cat Island','CI'),(7254,1772,'Central Abaco','CO'),(7255,1772,'Central Andros','CS'),(7256,1772,'Central Eleuthera','CE'),(7257,1772,'City of Freeport','FP'),(7258,1772,'Crooked Island and Long Cay','CK'),(7259,1772,'East Grand Bahama','EG'),(7260,1772,'Exuma','EX'),(7261,1772,'Grand Cay','GC'),(7262,1772,'Harbour Island','HI'),(7263,1772,'Hope Town','HT'),(7264,1772,'Inagua','IN'),(7265,1772,'Long Island','LI'),(7266,1772,'Mangrove Cay','MC'),(7267,1772,'Mayaguana','MG'),(7268,1772,'Moores Island','MI'),(7269,1772,'North Abaco','NO'),(7270,1772,'North Andros','NS'),(7271,1772,'North Eleuthera','NE'),(7272,1772,'Ragged Island','RI'),(7273,1772,'Rum Cay','RC'),(7274,1772,'San Salvador','SS'),(7275,1772,'South Abaco','SO'),(7276,1772,'South Andros','SA'),(7277,1772,'South Eleuthera','SE'),(7278,1772,'Spanish Wells','SW'),(7279,1772,'West Grand Bahama','WG'),(7280,1773,'Bumthang','33'),(7281,1773,'Chhukha','12'),(7282,1773,'Dagana','22'),(7283,1773,'Gasa','GA'),(7284,1773,'Ha','13'),(7285,1773,'Lhuentse','44'),(7286,1773,'Monggar','42'),(7287,1773,'Paro','11'),(7288,1773,'Pemagatshel','43'),(7289,1773,'Punakha','23'),(7290,1773,'Samdrup Jongkha','45'),(7291,1773,'Samtse','14'),(7292,1773,'Sarpang','31'),(7293,1773,'Thimphu','15'),(7294,1773,'Trashigang','41'),(7295,1773,'Trashi Yangtse','TY'),(7296,1773,'Trongsa','32'),(7297,1773,'Tsirang','21'),(7298,1773,'Wangdue Phodrang','24'),(7299,1773,'Zhemgang','34'),(7300,1775,'Central','CE'),(7301,1775,'Chobe','CH'),(7302,1775,'Francistown','FR'),(7303,1775,'Gaborone','GA'),(7304,1775,'Ghanzi','GH'),(7305,1775,'Jwaneng','JW'),(7306,1775,'Kgalagadi','KG'),(7307,1775,'Kgatleng','KL'),(7308,1775,'Kweneng','KW'),(7309,1775,'Lobatse','LO'),(7310,1775,'North East','NE'),(7311,1775,'North West','NW'),(7312,1775,'Selibe Phikwe','SP'),(7313,1775,'South East','SE'),(7314,1775,'Southern','SO'),(7315,1775,'Sowa Town','ST'),(7316,1776,'Brest Region','BR'),(7317,1776,'Gomel Region','HO'),(7318,1776,'Grodno Region','HR'),(7319,1776,'Mogilev Region','MA'),(7320,1776,'Minsk Region','MI'),(7321,1776,'Vitebsk Region','VI'),(7322,1776,'City of Minsk','HM'),(7323,1777,'Belize','BZ'),(7324,1777,'Cayo','CY'),(7325,1777,'Corozal','CZL'),(7326,1777,'Orange Walk','OW'),(7327,1777,'Stann Creek','SC'),(7328,1777,'Toledo','TOL'),(7329,1778,'Alberta','AB'),(7330,1778,'British Columbia','BC'),(7331,1778,'Manitoba','MB'),(7332,1778,'New Brunswick','NB'),(7333,1778,'Newfoundland and Labrador','NL'),(7334,1778,'Nova Scotia','NS'),(7335,1778,'Ontario','ON'),(7336,1778,'Prince Edward Island','PE'),(7337,1778,'Quebec','QC'),(7338,1778,'Saskatchewan','SK'),(7339,1778,'Northwest Territories','NT'),(7340,1778,'Nunavut','NU'),(7341,1778,'Yukon','YT'),(7342,1780,'Kinshasa','KN'),(7343,1780,'Kongo Central','BC'),(7344,1780,'Equator','EQ'),(7345,1780,'Kasai-Oriental','KE'),(7346,1780,'Maniema','MA'),(7347,1780,'North Kivu','NK'),(7348,1780,'South Kivu','SK'),(7349,1780,'Bas-Uele','BU'),(7350,1780,'Haut-Katanga','HK'),(7351,1780,'Haut-Lomami','HL'),(7352,1780,'Haut-Uele','HU'),(7353,1780,'Ituri','IT'),(7354,1780,'Kasai Central','KC'),(7355,1780,'Kwango','KG'),(7356,1780,'Kwilu','KL'),(7357,1780,'Kasai','KS'),(7358,1780,'Lomami','LO'),(7359,1780,'Lualaba','LU'),(7360,1780,'Mai-Ndombe','MN'),(7361,1780,'Mongala','MO'),(7362,1780,'North Ubangi','NU'),(7363,1780,'Sankuru','SA'),(7364,1780,'South Ubangi','SU'),(7365,1780,'Tanganyika','TA'),(7366,1780,'Tshopo','TO'),(7367,1780,'Tshuapa','TU'),(7368,1781,'Bangui','BGF'),(7369,1781,'Bamingui-Bangoran','BB'),(7370,1781,'Basse-Kotto','BK'),(7371,1781,'Haute-Kotto','HK'),(7372,1781,'Haut-Mbomou','HM'),(7373,1781,'Haute-Sangha/Mamb&eacute;r&eacute;-Kad&eacute;&iuml;','HS'),(7374,1781,'K&eacute;mo-Gribingui','KG'),(7375,1781,'Lobaye','LB'),(7376,1781,'Mbomou','MB'),(7377,1781,'Nana-Mamb&eacute;r&eacute;','NM'),(7378,1781,'Ombella-Mpoko','MP'),(7379,1781,'Ouaka','UK'),(7380,1781,'Ouham','AC'),(7381,1781,'Ouham-Pend&eacute;','OP'),(7382,1781,'Vakaga','VK'),(7383,1781,'Gribingui','KB'),(7384,1781,'Sangha','SE'),(7385,1782,'Brazzaville','BZV'),(7386,1782,'Bouenza','11'),(7387,1782,'Cuvette','08'),(7388,1782,'Cuvette-Ouest','15'),(7389,1782,'Kouilou','05'),(7390,1782,'L&eacute;koumou','02'),(7391,1782,'Likouala','07'),(7392,1782,'Niari','09'),(7393,1782,'Plateaux','14'),(7394,1782,'Pointe-Noire','16'),(7395,1782,'Pool','12'),(7396,1782,'Sangha','13'),(7397,1783,'Aargau','AG'),(7398,1783,'Appenzell Ausserrhoden','AR'),(7399,1783,'Appenzell Innerrhoden','AI'),(7400,1783,'Basel-Landschaft','BL'),(7401,1783,'Basel-Stadt','BS'),(7402,1783,'Bern','BE'),(7403,1783,'Fribourg','FR'),(7404,1783,'Gen&egrave;ve','GE'),(7405,1783,'Glarus','GL'),(7406,1783,'Graub&uuml;nden','GR'),(7407,1783,'Jura','JU'),(7408,1783,'Luzern','LU'),(7409,1783,'Neuch&acirc;tel','NE'),(7410,1783,'Nidwalden','NW'),(7411,1783,'Obwalden','OW'),(7412,1783,'Sankt Gallen','SG'),(7413,1783,'Schaffhausen','SH'),(7414,1783,'Schwyz','SZ'),(7415,1783,'Solothurn','SO'),(7416,1783,'Thurgau','TG'),(7417,1783,'Ticino','TI'),(7418,1783,'Uri','UR'),(7419,1783,'Valais','VS'),(7420,1783,'Vaud','VD'),(7421,1783,'Zug','ZG'),(7422,1783,'Z&uuml;rich','ZH'),(7423,1784,'Abidjan','AB'),(7424,1784,'Bas-Sassandra','BS'),(7425,1784,'Como&eacute;','CM'),(7426,1784,'Dengu&eacute;l&eacute;','DN'),(7427,1784,'G&ocirc;h-Djiboua','GD'),(7428,1784,'Lacs','LC'),(7429,1784,'Lagunes','LG'),(7430,1784,'Montagnes','MG'),(7431,1784,'Sassandra-Marahou&eacute;','SM'),(7432,1784,'Savanes','SV'),(7433,1784,'Vall&eacute;e du Bandama','VB'),(7434,1784,'Woroba','WR'),(7435,1784,'Yamoussoukro','YM'),(7436,1784,'Zanzan','ZZ'),(7437,1786,'Ays&eacute;n','AI'),(7438,1786,'Antofagasta','AN'),(7439,1786,'Araucan&iacute;a','AR'),(7440,1786,'Arica y Parinacota','AP'),(7441,1786,'Atacama','AT'),(7442,1786,'Biob&iacute;o','BI'),(7443,1786,'Coquimbo','CO'),(7444,1786,'Libertador General Bernardo O&#039;Higgins','LI'),(7445,1786,'Los Lagos','LL'),(7446,1786,'Los R&iacute;os','LR'),(7447,1786,'Magallanes','MA'),(7448,1786,'Maule','ML'),(7449,1786,'Regi&oacute;n Metropolitana de Santiago','RM'),(7450,1786,'Tarapac&aacute;','TA'),(7451,1786,'Valpara&iacute;so','VS'),(7452,1787,'Adamaoua','AD'),(7453,1787,'Centre','CE'),(7454,1787,'East','ES'),(7455,1787,'Far North','EN'),(7456,1787,'Littoral','LT'),(7457,1787,'North','NO'),(7458,1787,'North-West','NW'),(7459,1787,'South','SU'),(7460,1787,'South-West','SW'),(7461,1787,'West','OU'),(7462,1788,'Beijing','11'),(7463,1788,'Tianjin','12'),(7464,1788,'Hebei','13'),(7465,1788,'Shanxi','14'),(7466,1788,'Nei Mongol','15'),(7467,1788,'Liaoning','21'),(7468,1788,'Jilin','22'),(7469,1788,'Heilongjiang','23'),(7470,1788,'Shanghai','31'),(7471,1788,'Jiangsu','32'),(7472,1788,'Zhejiang','33'),(7473,1788,'Anhui','34'),(7474,1788,'Fujian','35'),(7475,1788,'Jiangxi','36'),(7476,1788,'Shandong','37'),(7477,1788,'Henan','41'),(7478,1788,'Hubei','42'),(7479,1788,'Hunan','43'),(7480,1788,'Guangdong','44'),(7481,1788,'Guangxi','45'),(7482,1788,'Hainan','46'),(7483,1788,'Chongqing','50'),(7484,1788,'Sichuan','51'),(7485,1788,'Guizhou','52'),(7486,1788,'Yunnan','53'),(7487,1788,'Xizang','54'),(7488,1788,'Shaanxi','61'),(7489,1788,'Gansu','62'),(7490,1788,'Qinghai','63'),(7491,1788,'Ningxia','64'),(7492,1788,'Xinjiang','65'),(7493,1788,'Taiwan','71'),(7494,1788,'Hong Kong','91'),(7495,1788,'Macao','92'),(7496,1789,'Distrito Capital de Bogot&aacute;','DC'),(7497,1789,'Amazonas','AMA'),(7498,1789,'Antioquia','ANT'),(7499,1789,'Arauca','ARA'),(7500,1789,'Atl&aacute;ntico','ATL'),(7501,1789,'Bol&iacute;var','BOL'),(7502,1789,'Boyac&aacute;','BOY'),(7503,1789,'Caldas','CAL'),(7504,1789,'Caquet&aacute;','CAQ'),(7505,1789,'Casanare','CAS'),(7506,1789,'Cauca','CAU'),(7507,1789,'Cesar','CES'),(7508,1789,'C&oacute;rdoba','COR'),(7509,1789,'Cundinamarca','CUN'),(7510,1789,'Choc&oacute;','CHO'),(7511,1789,'Guain&iacute;a','GUA'),(7512,1789,'Guaviare','GUV'),(7513,1789,'Huila','HUI'),(7514,1789,'La Guajira','LAG'),(7515,1789,'Magdalena','MAG'),(7516,1789,'Meta','MET'),(7517,1789,'Nari&ntilde;o','NAR'),(7518,1789,'Norte de Santander','NSA'),(7519,1789,'Putumayo','PUT'),(7520,1789,'Quind&iacute;o','QUI'),(7521,1789,'Risaralda','RIS'),(7522,1789,'San Andr&eacute;s','SAP'),(7523,1789,'Santander','SAN'),(7524,1789,'Sucre','SUC'),(7525,1789,'Tolima','TOL'),(7526,1789,'Valle del Cauca','VAC'),(7527,1789,'Vaup&eacute;s','VAU'),(7528,1789,'Vichada','VID'),(7529,1790,'Alajuela','A'),(7530,1790,'Cartago','C'),(7531,1790,'Guanacaste','G'),(7532,1790,'Heredia','H'),(7533,1790,'Lim&oacute;n','L'),(7534,1790,'Puntarenas','P'),(7535,1790,'San Jos&eacute;','SJ'),(7536,1791,'Artemisa','15'),(7537,1791,'Camag&uuml;ey','09'),(7538,1791,'Ciego de &Aacute;vila','08'),(7539,1791,'Cienfuegos','06'),(7540,1791,'Granma','12'),(7541,1791,'Guant&aacute;namo','14'),(7542,1791,'Holgu&iacute;n','11'),(7543,1791,'La Habana','03'),(7544,1791,'Las Tunas','10'),(7545,1791,'Matanzas','04'),(7546,1791,'Mayabeque','16'),(7547,1791,'Pinar del R&iacute;o','01'),(7548,1791,'Sancti Sp&iacute;ritus','07'),(7549,1791,'Santiago de Cuba','13'),(7550,1791,'Villa Clara','05'),(7551,1791,'Isla de la Juventud','99'),(7552,1792,'Ilhas de Barlavento','B'),(7553,1792,'Ilhas de Sotavento','S'),(7554,1796,'South Bohemia','31'),(7555,1796,'South Moravia','64'),(7556,1796,'Karlovy Vary','41'),(7557,1796,'Hradec Kr&aacute;lov&eacute;','52'),(7558,1796,'Liberec','51'),(7559,1796,'Moravia-Silesia','80'),(7560,1796,'Olomouc','71'),(7561,1796,'Pardubice','53'),(7562,1796,'Plzeň','32'),(7563,1796,'hlavn&iacute; město','10'),(7564,1796,'Central Bohemia','20'),(7565,1796,'&Uacute;st&iacute; nad Labem','42'),(7566,1796,'Vysočina','63'),(7567,1796,'Zl&iacute;n','72'),(7568,1797,'Baden-W&uuml;rttemberg','BW'),(7569,1797,'Bavaria','BY'),(7570,1797,'Berlin','BE'),(7571,1797,'Brandenburg','BB'),(7572,1797,'Bremen','HB'),(7573,1797,'Hamburg','HH'),(7574,1797,'Hesse','HE'),(7575,1797,'Mecklenburg-Western Pomerania','MV'),(7576,1797,'Lower Saxony','NI'),(7577,1797,'North Rhine-Westphalia','NW'),(7578,1797,'Rhineland-Palatinate','RP'),(7579,1797,'Saarland','SL'),(7580,1797,'Saxony','SN'),(7581,1797,'Saxony-Anhalt','ST'),(7582,1797,'Schleswig-Holstein','SH'),(7583,1797,'Thuringia','TH'),(7584,1798,'Ali Sabieh','AS'),(7585,1798,'Arta','AR'),(7586,1798,'Dikhil','DI'),(7587,1798,'Obock','OB'),(7588,1798,'Tadjourah','TA'),(7589,1798,'Djibouti','DJ'),(7590,1799,'Capital Region of Denmark','84'),(7591,1799,'Central Denmark Region','82'),(7592,1799,'North Denmark Region','81'),(7593,1799,'Region Zealand','85'),(7594,1799,'Region of Southern Denmark','83'),(7595,1800,'Saint Andrew','02'),(7596,1800,'Saint David','03'),(7597,1800,'Saint George','04'),(7598,1800,'Saint John','05'),(7599,1800,'Saint Joseph','06'),(7600,1800,'Saint Luke','07'),(7601,1800,'Saint Mark','08'),(7602,1800,'Saint Patrick','09'),(7603,1800,'Saint Paul','10'),(7604,1800,'Saint Peter','11'),(7605,1801,'Cibao Nordeste','33'),(7606,1801,'Cibao Noroeste','34'),(7607,1801,'Cibao Norte','35'),(7608,1801,'Cibao Sur','36'),(7609,1801,'El Valle','37'),(7610,1801,'Enriquillo','38'),(7611,1801,'Higuamo','39'),(7612,1801,'Ozama','40'),(7613,1801,'Valdesia','41'),(7614,1801,'Yuma','42'),(7615,1802,'Adrar','01'),(7616,1802,'A&iuml;n Defla','44'),(7617,1802,'A&iuml;n T&eacute;mouchent','46'),(7618,1802,'Alger','16'),(7619,1802,'Annaba','23'),(7620,1802,'Batna','05'),(7621,1802,'B&eacute;char','08'),(7622,1802,'B&eacute;ja&iuml;a','06'),(7623,1802,'Biskra','07'),(7624,1802,'Blida','09'),(7625,1802,'Bordj Bou Arr&eacute;ridj','34'),(7626,1802,'Bouira','10'),(7627,1802,'Boumerd&egrave;s','35'),(7628,1802,'Chlef','02'),(7629,1802,'Constantine','25'),(7630,1802,'Djelfa','17'),(7631,1802,'El Bayadh','32'),(7632,1802,'El Oued','39'),(7633,1802,'El Tarf','36'),(7634,1802,'Gharda&iuml;a','47'),(7635,1802,'Guelma','24'),(7636,1802,'Illizi','33'),(7637,1802,'Jijel','18'),(7638,1802,'Khenchela','40'),(7639,1802,'Laghouat','03'),(7640,1802,'M&#039;sila','28'),(7641,1802,'Mascara','29'),(7642,1802,'M&eacute;d&eacute;a','26'),(7643,1802,'Mila','43'),(7644,1802,'Mostaganem','27'),(7645,1802,'Naama','45'),(7646,1802,'Oran','31'),(7647,1802,'Ouargla','30'),(7648,1802,'Oum el Bouaghi','04'),(7649,1802,'Relizane','48'),(7650,1802,'Sa&iuml;da','20'),(7651,1802,'S&eacute;tif','19'),(7652,1802,'Sidi Bel Abb&egrave;s','22'),(7653,1802,'Skikda','21'),(7654,1802,'Souk Ahras','41'),(7655,1802,'Tamanrasset','11'),(7656,1802,'T&eacute;bessa','12'),(7657,1802,'Tiaret','14'),(7658,1802,'Tindouf','37'),(7659,1802,'Tipaza','42'),(7660,1802,'Tissemsilt','38'),(7661,1802,'Tizi Ouzou','15'),(7662,1802,'Tlemcen','13'),(7663,1803,'Azuay','A'),(7664,1803,'Bol&iacute;var','B'),(7665,1803,'Ca&ntilde;ar','F'),(7666,1803,'Carchi','C'),(7667,1803,'Chimborazo','H'),(7668,1803,'Cotopaxi','X'),(7669,1803,'El Oro','O'),(7670,1803,'Esmeraldas','E'),(7671,1803,'Gal&aacute;pagos','W'),(7672,1803,'Guayas','G'),(7673,1803,'Imbabura','I'),(7674,1803,'Loja','L'),(7675,1803,'Los R&iacute;os','R'),(7676,1803,'Manab&iacute;','M'),(7677,1803,'Morona-Santiago','S'),(7678,1803,'Napo','N'),(7679,1803,'Orellana','D'),(7680,1803,'Pastaza','Y'),(7681,1803,'Pichincha','P'),(7682,1803,'Santa Elena','SE'),(7683,1803,'Santo Domingo de los Ts&aacute;chilas','SD'),(7684,1803,'Sucumb&iacute;os','U'),(7685,1803,'Tungurahua','T'),(7686,1803,'Zamora-Chinchipe','Z'),(7687,1804,'Harju','37'),(7688,1804,'Hiiu','39'),(7689,1804,'Ida-Viru','44'),(7690,1804,'J&otilde;geva','49'),(7691,1804,'J&auml;rva','51'),(7692,1804,'L&auml;&auml;ne','57'),(7693,1804,'L&auml;&auml;ne-Viru','59'),(7694,1804,'P&otilde;lva','65'),(7695,1804,'P&auml;rnu','67'),(7696,1804,'Rapla','70'),(7697,1804,'Saare','74'),(7698,1804,'Tartu','78'),(7699,1804,'Valga','82'),(7700,1804,'Viljandi','84'),(7701,1804,'V&otilde;ru','86'),(7702,1805,'Dakahlia','DK'),(7703,1805,'Red Sea','BA'),(7704,1805,'Beheira','BH'),(7705,1805,'Faiyum','FYM'),(7706,1805,'Gharbia','GH'),(7707,1805,'Alexandria','ALX'),(7708,1805,'Ismailia','IS'),(7709,1805,'Giza','GZ'),(7710,1805,'Monufia','MNF'),(7711,1805,'Minya','MN'),(7712,1805,'Cairo','C'),(7713,1805,'Qalyubia','KB'),(7714,1805,'Luxor','LX'),(7715,1805,'New Valley','WAD'),(7716,1805,'Al Sharqia','SHR'),(7717,1805,'Suez','SUZ'),(7718,1805,'Aswan','ASN'),(7719,1805,'Asyut','AST'),(7720,1805,'Beni Suef','BNS'),(7721,1805,'Port Said','PTS'),(7722,1805,'Damietta','DT'),(7723,1805,'South Sinai','JS'),(7724,1805,'Kafr el-Sheikh','KFS'),(7725,1805,'Matrouh','MT'),(7726,1805,'Qena','KN'),(7727,1805,'North Sinai','SIN'),(7728,1805,'Sohag','SHG'),(7729,1807,'Maekel','MA'),(7730,1807,'Debub','DU'),(7731,1807,'Anseba','AN'),(7732,1807,'Southern Red Sea','DK'),(7733,1807,'Gash-Barka','GB'),(7734,1807,'Northern Red Sea','SK'),(7735,1808,'Andaluc&iacute;a','AN'),(7736,1808,'Arag&oacute;n','AR'),(7737,1808,'Principado de Asturias','AS'),(7738,1808,'Canarias','CN'),(7739,1808,'Cantabria','CB'),(7740,1808,'Castilla La Mancha','CM'),(7741,1808,'Castilla y Le&oacute;n','CL'),(7742,1808,'Catalunya','CT'),(7743,1808,'Extremadura','EX'),(7744,1808,'Galicia','GA'),(7745,1808,'Islas Baleares','IB'),(7746,1808,'La Rioja','RI'),(7747,1808,'Comunidad de Madrid','MD'),(7748,1808,'Regi&oacute;n de Murcia','MC'),(7749,1808,'Comunidad Foral de Navarra','NC'),(7750,1808,'Pa&iacute;s Vasco','PV'),(7751,1808,'Comunidad Valenciana','VC'),(7752,1808,'Ceuta','CE'),(7753,1809,'Addis Ababa','AA'),(7754,1809,'Dire Dawa','DD'),(7755,1809,'Afar','AF'),(7756,1809,'Amara','AM'),(7757,1809,'Benshangul-Gumaz','BE'),(7758,1809,'Gambela Peoples','GA'),(7759,1809,'Harari People','HA'),(7760,1809,'Oromia','OR'),(7761,1809,'Somali','SO'),(7762,1809,'Tigrai','TI'),(7763,1809,'Southern Nations','SN'),(7764,1810,'&Aring;land','01'),(7765,1810,'South Karelia','02'),(7766,1810,'Southern Ostrobothnia','03'),(7767,1810,'Southern Savonia','04'),(7768,1810,'Kainuu','05'),(7769,1810,'Tavastia Proper','06'),(7770,1810,'Central Ostrobothnia','07'),(7771,1810,'Central Finland','08'),(7772,1810,'Kymenlaakso','09'),(7773,1810,'Lapland','10'),(7774,1810,'Pirkanmaa','11'),(7775,1810,'Ostrobothnia','12'),(7776,1810,'North Karelia','13'),(7777,1810,'Northern Ostrobothnia','14'),(7778,1810,'Northern Savonia','15'),(7779,1810,'P&auml;ij&auml;nne Tavastia','16'),(7780,1810,'Satakunta','17'),(7781,1810,'Uusimaa','18'),(7782,1810,'Southwest Finland','19'),(7783,1811,'Central','C'),(7784,1811,'Eastern','E'),(7785,1811,'Northern','N'),(7786,1811,'Western','W'),(7787,1811,'Rotuma','R'),(7788,1813,'Chuuk','TRK'),(7789,1813,'Kosrae','KSA'),(7790,1813,'Pohnpei','PNI'),(7791,1813,'Yap','YAP'),(7792,1815,'Auvergne-Rh&ocirc;ne-Alpes','ARA'),(7793,1815,'Bourgogne-Franche-Comt&eacute;','BFC'),(7794,1815,'Bretagne','BRE'),(7795,1815,'Centre-Val de Loire','CVL'),(7796,1815,'Corse','COR'),(7797,1815,'Grand Est','GES'),(7798,1815,'Hauts-de-France','HDF'),(7799,1815,'&Icirc;le-de-France','IDF'),(7800,1815,'Normandie','NOR'),(7801,1815,'Nouvelle-Aquitaine','NAQ'),(7802,1815,'Occitanie','OCC'),(7803,1815,'Pays de la Loire','PDL'),(7804,1815,'Provence-Alpes-C&ocirc;te d&#039;Azur','PAC'),(7805,1816,'Estuaire','1'),(7806,1816,'Haut-Ogoou&eacute;','2'),(7807,1816,'Moyen-Ogoou&eacute;','3'),(7808,1816,'Ngouni&eacute;','4'),(7809,1816,'Nyanga','5'),(7810,1816,'Ogoou&eacute;-Ivindo','6'),(7811,1816,'Ogoou&eacute;-Lolo','7'),(7812,1816,'Ogoou&eacute;-Maritime','8'),(7813,1816,'Woleu-Ntem','9'),(7814,1817,'England','ENG'),(7815,1817,'Northern Ireland','NIR'),(7816,1817,'Scotland','SCT'),(7817,1817,'Wales','WLS'),(7818,1818,'Saint Andrew','01'),(7819,1818,'Saint David','02'),(7820,1818,'Saint George','03'),(7821,1818,'Saint John','04'),(7822,1818,'Saint Mark','05'),(7823,1818,'Saint Patrick','06'),(7824,1818,'Southern Grenadine Islands','10'),(7825,1819,'Abkhazia','AB'),(7826,1819,'Ajaria','AJ'),(7827,1819,'Tbilisi','TB'),(7828,1819,'Guria','GU'),(7829,1819,'Imereti','IM'),(7830,1819,'K&#039;akheti','KA'),(7831,1819,'Kvemo Kartli','KK'),(7832,1819,'Mtskheta-Mtianeti','MM'),(7833,1819,'Rach&#039;a-Lechkhumi-Kvemo Svaneti','RL'),(7834,1819,'Samegrelo-Zemo Svaneti','SZ'),(7835,1819,'Samtskhe-Javakheti','SJ'),(7836,1819,'Shida Kartli','SK'),(7837,1822,'Ashanti','AH'),(7838,1822,'Brong-Ahafo','BA'),(7839,1822,'Central','CP'),(7840,1822,'Eastern','EP'),(7841,1822,'Greater Accra','AA'),(7842,1822,'Northern','NP'),(7843,1822,'Upper East','UE'),(7844,1822,'Upper West','UW'),(7845,1822,'Volta','TV'),(7846,1822,'Western','WP'),(7847,1824,'Kommune Kujalleq','KU'),(7848,1824,'Kommuneqarfik Sermersooq','SM'),(7849,1824,'Qaasuitsup Kommunia','QA'),(7850,1824,'Qeqqata Kommunia','QE'),(7851,1825,'Banjul','B'),(7852,1825,'Central River','M'),(7853,1825,'Lower River','L'),(7854,1825,'North Bank','N'),(7855,1825,'Upper River','U'),(7856,1825,'Western','W'),(7857,1826,'Bok&eacute;','B'),(7858,1826,'Faranah','F'),(7859,1826,'Kankan','K'),(7860,1826,'Kindia','D'),(7861,1826,'Lab&eacute;','L'),(7862,1826,'Mamou','M'),(7863,1826,'Nz&eacute;r&eacute;kor&eacute;','N'),(7864,1826,'Conakry','C'),(7865,1828,'Regi&oacute;n Continental','C'),(7866,1828,'Regi&oacute;n Insular','I'),(7867,1829,'Eastern Macedonia and Thrace','A'),(7868,1829,'Attica','I'),(7869,1829,'Western Greece','G'),(7870,1829,'Western Macedonia','C'),(7871,1829,'Ionian Islands','F'),(7872,1829,'Epirus','D'),(7873,1829,'Central Macedonia','B'),(7874,1829,'Crete','M'),(7875,1829,'Southern Aegean','L'),(7876,1829,'Peloponnese','J'),(7877,1829,'Central Greece','H'),(7878,1829,'Thessaly','E'),(7879,1829,'Northern Aegean','K'),(7880,1831,'Alta Verapaz','AV'),(7881,1831,'Baja Verapaz','BV'),(7882,1831,'Chimaltenango','CM'),(7883,1831,'Chiquimula','CQ'),(7884,1831,'El Progreso','PR'),(7885,1831,'Escuintla','ES'),(7886,1831,'Guatemala','GU'),(7887,1831,'Huehuetenango','HU'),(7888,1831,'Izabal','IZ'),(7889,1831,'Jalapa','JA'),(7890,1831,'Jutiapa','JU'),(7891,1831,'Pet&eacute;n','PE'),(7892,1831,'Quetzaltenango','QZ'),(7893,1831,'Quich&eacute;','QC'),(7894,1831,'Retalhuleu','RE'),(7895,1831,'Sacatep&eacute;quez','SA'),(7896,1831,'San Marcos','SM'),(7897,1831,'Santa Rosa','SR'),(7898,1831,'Solol&aacute;','SO'),(7899,1831,'Suchitep&eacute;quez','SU'),(7900,1831,'Totonicap&aacute;n','TO'),(7901,1831,'Zacapa','ZA'),(7902,1833,'Leste','L'),(7903,1833,'Norte','N'),(7904,1833,'Sul','S'),(7905,1834,'Barima-Waini','BA'),(7906,1834,'Cuyuni-Mazaruni','CU'),(7907,1834,'Demerara-Mahaica','DE'),(7908,1834,'East Berbice-Corentyne','EB'),(7909,1834,'Essequibo Islands-West Demerara','ES'),(7910,1834,'Mahaica-Berbice','MA'),(7911,1834,'Pomeroon-Supenaam','PM'),(7912,1834,'Potaro-Siparuni','PT'),(7913,1834,'Upper Demerara-Berbice','UD'),(7914,1834,'Upper Takutu-Upper Essequibo','UT'),(7915,1837,'Atl&aacute;ntida','AT'),(7916,1837,'Choluteca','CH'),(7917,1837,'Col&oacute;n','CL'),(7918,1837,'Comayagua','CM'),(7919,1837,'Cop&aacute;n','CP'),(7920,1837,'Cort&eacute;s','CR'),(7921,1837,'El Para&iacute;so','EP'),(7922,1837,'Francisco Moraz&aacute;n','FM'),(7923,1837,'Gracias a Dios','GD'),(7924,1837,'Intibuc&aacute;','IN'),(7925,1837,'Islas de la Bah&iacute;a','IB'),(7926,1837,'La Paz','LP'),(7927,1837,'Lempira','LE'),(7928,1837,'Ocotepeque','OC'),(7929,1837,'Olancho','OL'),(7930,1837,'Santa B&aacute;rbara','SB'),(7931,1837,'Valle','VA'),(7932,1837,'Yoro','YO'),(7933,1838,'Zagreb City','21'),(7934,1838,'Bjelovar-Bilogora','07'),(7935,1838,'Brod-Posavina','12'),(7936,1838,'Dubrovnik-Neretva','19'),(7937,1838,'Istria','18'),(7938,1838,'Karlovac','04'),(7939,1838,'Koprivnica-Križevci','06'),(7940,1838,'Krapina-Zagorje','02'),(7941,1838,'Lika-Senj','09'),(7942,1838,'Međimurje','20'),(7943,1838,'Osijek-Baranja','14'),(7944,1838,'Požega-Slavonia','11'),(7945,1838,'Primorje-Gorski Kotar','08'),(7946,1838,'Sisak-Moslavina','03'),(7947,1838,'Split-Dalmatia','17'),(7948,1838,'&Scaron;ibenik-Knin','15'),(7949,1838,'Varaždin','05'),(7950,1838,'Virovitica-Podravina','10'),(7951,1838,'Vukovar-Srijem','16'),(7952,1838,'Zadar','13'),(7953,1838,'Zagreb County','01'),(7954,1839,'Artibonite','AR'),(7955,1839,'Centre','CE'),(7956,1839,'Grand&rsquo;Anse','GA'),(7957,1839,'Nippes','NI'),(7958,1839,'Nord','ND'),(7959,1839,'Nord-Est','NE'),(7960,1839,'Nord-Ouest','NO'),(7961,1839,'Ouest','OU'),(7962,1839,'Sud','SD'),(7963,1839,'Sud-Est','SE'),(7964,1840,'Budapest','BU'),(7965,1840,'B&aacute;cs-Kiskun','BK'),(7966,1840,'Baranya','BA'),(7967,1840,'B&eacute;k&eacute;s','BE'),(7968,1840,'Borsod-Aba&uacute;j-Zempl&eacute;n','BZ'),(7969,1840,'Csongr&aacute;d','CS'),(7970,1840,'Fej&eacute;r','FE'),(7971,1840,'Győr-Moson-Sopron','GS'),(7972,1840,'Hajd&uacute;-Bihar','HB'),(7973,1840,'Heves','HE'),(7974,1840,'J&aacute;sz-Nagykun-Szolnok','JN'),(7975,1840,'Kom&aacute;rom-Esztergom','KE'),(7976,1840,'N&oacute;gr&aacute;d','NO'),(7977,1840,'Pest','PE'),(7978,1840,'Somogy','SO'),(7979,1840,'Szabolcs-Szatm&aacute;r-Bereg','SZ'),(7980,1840,'Tolna','TO'),(7981,1840,'Vas','VA'),(7982,1840,'Veszpr&eacute;m','VE'),(7983,1840,'Zala','ZA'),(7984,1840,'B&eacute;k&eacute;scsaba','BC'),(7985,1840,'Debrecen','DE'),(7986,1840,'Duna&uacute;jv&aacute;ros','DU'),(7987,1840,'Eger','EG'),(7988,1840,'&Eacute;rd','ER'),(7989,1840,'Győr','GY'),(7990,1840,'H&oacute;dmezőv&aacute;s&aacute;rhely','HV'),(7991,1840,'Kaposv&aacute;r','KV'),(7992,1840,'Kecskem&eacute;t','KM'),(7993,1840,'Miskolc','MI'),(7994,1840,'Nagykanizsa','NK'),(7995,1840,'Ny&iacute;regyh&aacute;za','NY'),(7996,1840,'P&eacute;cs','PS'),(7997,1840,'Salg&oacute;tarj&aacute;n','ST'),(7998,1840,'Sopron','SN'),(7999,1840,'Szeged','SD'),(8000,1840,'Sz&eacute;kesfeh&eacute;rv&aacute;r','SF'),(8001,1840,'Szeksz&aacute;rd','SS'),(8002,1840,'Szolnok','SK'),(8003,1840,'Szombathely','SH'),(8004,1840,'Tatab&aacute;nya','TB'),(8005,1840,'Veszpr&eacute;m','VM'),(8006,1840,'Zalaegerszeg','ZE'),(8007,1841,'Jawa','JW'),(8008,1841,'Kalimantan','KA'),(8009,1841,'Maluku','ML'),(8010,1841,'Nusa Tenggara','NU'),(8011,1841,'Papua','PP'),(8012,1841,'Sulawesi','SL'),(8013,1841,'Sumatera','SM'),(8014,1842,'Connacht','C'),(8015,1842,'Leinster','L'),(8016,1842,'Munster','M'),(8017,1842,'Ulster','U'),(8018,1843,'Southern District','D'),(8019,1843,'Central District','M'),(8020,1843,'Northern District','Z'),(8021,1843,'Haifa','HA'),(8022,1843,'Tel Aviv','TA'),(8023,1843,'Jerusalem','JM'),(8024,1845,'Andhra Pradesh','AP'),(8025,1845,'Arunachal Pradesh','AR'),(8026,1845,'Assam','AS'),(8027,1845,'Bihar','BR'),(8028,1845,'Chhattisgarh','CT'),(8029,1845,'Goa','GA'),(8030,1845,'Gujarat','GJ'),(8031,1845,'Haryana','HR'),(8032,1845,'Himachal Pradesh','HP'),(8033,1845,'Jammu and Kashmir','JK'),(8034,1845,'Jharkhand','JH'),(8035,1845,'Karnataka','KA'),(8036,1845,'Kerala','KL'),(8037,1845,'Madhya Pradesh','MP'),(8038,1845,'Maharashtra','MH'),(8039,1845,'Manipur','MN'),(8040,1845,'Meghalaya','ML'),(8041,1845,'Mizoram','MZ'),(8042,1845,'Nagaland','NL'),(8043,1845,'Odisha','OR'),(8044,1845,'Punjab','PB'),(8045,1845,'Rajasthan','RJ'),(8046,1845,'Sikkim','SK'),(8047,1845,'Tamil Nadu','TN'),(8048,1845,'Telangana','TG'),(8049,1845,'Tripura','TR'),(8050,1845,'Uttarakhand','UT'),(8051,1845,'Uttar Pradesh','UP'),(8052,1845,'West Bengal','WB'),(8053,1845,'Andaman and Nicobar Islands','AN'),(8054,1845,'Chandigarh','CH'),(8055,1845,'Dadra and Nagar Haveli','DN'),(8056,1845,'Daman and Diu','DD'),(8057,1845,'Delhi','DL'),(8058,1845,'Lakshadweep','LD'),(8059,1845,'Puducherry','PY'),(8060,1847,'Al Anbār','AN'),(8061,1847,'Al Başrah','BA'),(8062,1847,'Al Muthann&aacute;','MU'),(8063,1847,'Al Qādisīyah','QA'),(8064,1847,'An Najaf','NA'),(8065,1847,'Arbīl','AR'),(8066,1847,'As Sulaymānīyah','SU'),(8067,1847,'Bābil','BB'),(8068,1847,'Baghdād','BG'),(8069,1847,'Dahūk','DA'),(8070,1847,'Dhī Qār','DQ'),(8071,1847,'Diyāl&aacute;','DI'),(8072,1847,'Karbalā&rsquo;','KA'),(8073,1847,'Kirkūk','KI'),(8074,1847,'Maysān','MA'),(8075,1847,'Nīnaw&aacute;','NI'),(8076,1847,'Şalāḩ ad Dīn','SD'),(8077,1847,'Wāsiţ','WA'),(8078,1848,'Alborz','32'),(8079,1848,'Ardabīl','03'),(8080,1848,'Āz̄arbāyjān-e Gharbī','02'),(8081,1848,'Āz̄arbāyjān-e Sharqī','01'),(8082,1848,'Būshehr','06'),(8083,1848,'Chahār Maḩāl va Bakhtīārī','08'),(8084,1848,'Eşfahān','04'),(8085,1848,'Fārs','14'),(8086,1848,'Gīlān','19'),(8087,1848,'Golestān','27'),(8088,1848,'Hamadān','24'),(8089,1848,'Hormozgān','23'),(8090,1848,'Īlām','05'),(8091,1848,'Kermān','15'),(8092,1848,'Kermānshāh','17'),(8093,1848,'Khorāsān-e Jonūbī','29'),(8094,1848,'Khorāsān-e Raẕavī','30'),(8095,1848,'Khorāsān-e Shomālī','31'),(8096,1848,'Khūzestān','10'),(8097,1848,'Kohgīlūyeh va Bowyer Aḩmad','18'),(8098,1848,'Kordestān','16'),(8099,1848,'Lorestān','20'),(8100,1848,'Markazī','22'),(8101,1848,'Māzandarān','21'),(8102,1848,'Qazvīn','28'),(8103,1848,'Qom','26'),(8104,1848,'Semnān','12'),(8105,1848,'Sīstān va Balūchestān','13'),(8106,1848,'Tehrān','07'),(8107,1848,'Yazd','25'),(8108,1848,'Zanjān','11'),(8109,1849,'H&ouml;fu&eth;borgarsv&aelig;&eth;i utan Reykjav&iacute;kur','1'),(8110,1849,'Su&eth;urnes','2'),(8111,1849,'Vesturland','3'),(8112,1849,'Vestfir&eth;ir','4'),(8113,1849,'Nor&eth;urland vestra','5'),(8114,1849,'Nor&eth;urland eystra','6'),(8115,1849,'Austurland','7'),(8116,1849,'Su&eth;urland','8'),(8117,1850,'Abruzzo','65'),(8118,1850,'Basilicata','77'),(8119,1850,'Calabria','78'),(8120,1850,'Campania','72'),(8121,1850,'Emilia-Romagna','45'),(8122,1850,'Friuli-Venezia Giulia','36'),(8123,1850,'Lazio','62'),(8124,1850,'Liguria','42'),(8125,1850,'Lombardy','25'),(8126,1850,'Marche','57'),(8127,1850,'Molise','67'),(8128,1850,'Piedmont','21'),(8129,1850,'Apulia','75'),(8130,1850,'Sardinia','88'),(8131,1850,'Sicily','82'),(8132,1850,'Tuscany','52'),(8133,1850,'Trentino-S&uuml;dtirol','32'),(8134,1850,'Umbria','55'),(8135,1850,'Vall&eacute;e d&#039;Aoste','23'),(8136,1850,'Veneto','34'),(8137,1852,'Clarendon','13'),(8138,1852,'Hanover','09'),(8139,1852,'Kingston','01'),(8140,1852,'Manchester','12'),(8141,1852,'Portland','04'),(8142,1852,'Saint Andrew','02'),(8143,1852,'Saint Ann','06'),(8144,1852,'Saint Catherine','14'),(8145,1852,'Saint Elizabeth','11'),(8146,1852,'Saint James','08'),(8147,1852,'Saint Mary','05'),(8148,1852,'Saint Thomas','03'),(8149,1852,'Trelawny','07'),(8150,1852,'Westmoreland','10'),(8151,1853,'&lsquo;Ajlūn','AJ'),(8152,1853,'Al &lsquo;Aqabah','AQ'),(8153,1853,'Al Balqā&rsquo;','BA'),(8154,1853,'Al Karak','KA'),(8155,1853,'Al Mafraq','MA'),(8156,1853,'Al &lsquo;A̅şimah','AM'),(8157,1853,'Aţ Ţafīlah','AT'),(8158,1853,'Az Zarqā&rsquo;','AZ'),(8159,1853,'Irbid','IR'),(8160,1853,'Jarash','JA'),(8161,1853,'Ma&lsquo;ān','MN'),(8162,1853,'Mādabā','MD'),(8163,1854,'Aichi','23'),(8164,1854,'Akita','05'),(8165,1854,'Aomori','02'),(8166,1854,'Ehime','38'),(8167,1854,'Gifu','21'),(8168,1854,'Gunma','10'),(8169,1854,'Hiroshima','34'),(8170,1854,'Hokkaido','01'),(8171,1854,'Fukui','18'),(8172,1854,'Fukuoka','40'),(8173,1854,'Fukushima','07'),(8174,1854,'Hyogo','28'),(8175,1854,'Ibaraki','08'),(8176,1854,'Ishikawa','17'),(8177,1854,'Iwate','03'),(8178,1854,'Kagawa','37'),(8179,1854,'Kagoshima','46'),(8180,1854,'Kanagawa','14'),(8181,1854,'Kochi','39'),(8182,1854,'Kumamoto','43'),(8183,1854,'Kyoto','26'),(8184,1854,'Mie','24'),(8185,1854,'Miyagi','04'),(8186,1854,'Miyazaki','45'),(8187,1854,'Nagano','20'),(8188,1854,'Nagasaki','42'),(8189,1854,'Nara','29'),(8190,1854,'Niigata','15'),(8191,1854,'Oita','44'),(8192,1854,'Okayama','33'),(8193,1854,'Okinawa','47'),(8194,1854,'Osaka','27'),(8195,1854,'Saga','41'),(8196,1854,'Saitama','11'),(8197,1854,'Shiga','25'),(8198,1854,'Shimane','32'),(8199,1854,'Shizuoka','22'),(8200,1854,'Chiba','12'),(8201,1854,'Tochigi','09'),(8202,1854,'Tokushima','36'),(8203,1854,'Tokyo','13'),(8204,1854,'Tottori','31'),(8205,1854,'Toyama','16'),(8206,1854,'Wakayama','30'),(8207,1854,'Yamagata','06'),(8208,1854,'Yamaguchi','35'),(8209,1854,'Yamanashi','19'),(8210,1855,'Baringo','01'),(8211,1855,'Bomet','02'),(8212,1855,'Bungoma','03'),(8213,1855,'Busia','04'),(8214,1855,'Elgeyo/Marakwet','05'),(8215,1855,'Embu','06'),(8216,1855,'Garissa','07'),(8217,1855,'Homa Bay','08'),(8218,1855,'Isiolo','09'),(8219,1855,'Kajiado','10'),(8220,1855,'Kakamega','11'),(8221,1855,'Kericho','12'),(8222,1855,'Kiambu','13'),(8223,1855,'Kilifi','14'),(8224,1855,'Kirinyaga','15'),(8225,1855,'Kisii','16'),(8226,1855,'Kisumu','17'),(8227,1855,'Kitui','18'),(8228,1855,'Kwale','19'),(8229,1855,'Laikipia','20'),(8230,1855,'Lamu','21'),(8231,1855,'Machakos','22'),(8232,1855,'Makueni','23'),(8233,1855,'Mandera','24'),(8234,1855,'Marsabit','25'),(8235,1855,'Meru','26'),(8236,1855,'Migori','27'),(8237,1855,'Mombasa','28'),(8238,1855,'Murang&#039;a','29'),(8239,1855,'Nairobi City','30'),(8240,1855,'Nakuru','31'),(8241,1855,'Nandi','32'),(8242,1855,'Narok','33'),(8243,1855,'Nyamira','34'),(8244,1855,'Nyandarua','35'),(8245,1855,'Nyeri','36'),(8246,1855,'Samburu','37'),(8247,1855,'Siaya','38'),(8248,1855,'Taita/Taveta','39'),(8249,1855,'Tana River','40'),(8250,1855,'Tharaka-Nithi','41'),(8251,1855,'Trans Nzoia','42'),(8252,1855,'Turkana','43'),(8253,1855,'Uasin Gishu','44'),(8254,1855,'Vihiga','45'),(8255,1855,'Wajir','46'),(8256,1855,'West Pokot','47'),(8257,1856,'Bishkek','GB'),(8258,1856,'Osh','GO'),(8259,1856,'Batken','B'),(8260,1856,'Ch&uuml;','C'),(8261,1856,'Jalal-Abad','J'),(8262,1856,'Naryn','N'),(8263,1856,'Osh','O'),(8264,1856,'Talas','T'),(8265,1856,'Ysyk-K&ouml;l','Y'),(8266,1857,'Phnom Penh','12'),(8267,1857,'Baat Dambang','02'),(8268,1857,'Banteay Mean Chey','01'),(8269,1857,'Kampong Chaam','03'),(8270,1857,'Kampong Chhnang','04'),(8271,1857,'Kampong Spueu','05'),(8272,1857,'Kampong Thum','06'),(8273,1857,'Kampot','07'),(8274,1857,'Kandaal','08'),(8275,1857,'Kaoh Kong','09'),(8276,1857,'Kracheh','10'),(8277,1857,'Krong Kaeb','23'),(8278,1857,'Krong Pailin','24'),(8279,1857,'Krong Preah Sihanouk','18'),(8280,1857,'Mondol Kiri','11'),(8281,1857,'Otdar Mean Chey','22'),(8282,1857,'Pousaat','15'),(8283,1857,'Preah Vihear','13'),(8284,1857,'Prey Veaeng','14'),(8285,1857,'Rotanak Kiri','16'),(8286,1857,'Siem Reab','17'),(8287,1857,'Stueng Traeng','19'),(8288,1857,'Svaay Rieng','20'),(8289,1857,'Taakaev','21'),(8290,1857,'Tbong Khmum','25'),(8291,1858,'Gilbert Islands','G'),(8292,1858,'Line Islands','L'),(8293,1858,'Phoenix Islands','P'),(8294,1859,'Grande Comore','G'),(8295,1859,'Anjouan','A'),(8296,1859,'Moh&eacute;li','M'),(8297,1860,'Saint Kitts','K'),(8298,1860,'Nevis','N'),(8299,1861,'Pyongyang','01'),(8300,1861,'Rason','13'),(8301,1861,'South Pyongan','02'),(8302,1861,'North Pyongan','03'),(8303,1861,'Chagang','04'),(8304,1861,'South Hwanghae','05'),(8305,1861,'North Hwanghae','06'),(8306,1861,'Kangwon','07'),(8307,1861,'South Hamgyong','08'),(8308,1861,'North Hamgyong','09'),(8309,1861,'Ryanggang','10'),(8310,1862,'Seoul','11'),(8311,1862,'Busan','26'),(8312,1862,'Daegu','27'),(8313,1862,'Daejeon','30'),(8314,1862,'Gwangju','29'),(8315,1862,'Incheon','28'),(8316,1862,'Ulsan','31'),(8317,1862,'Sejong','50'),(8318,1862,'North Chungcheong','43'),(8319,1862,'South Chungcheong','44'),(8320,1862,'Gangwon','42'),(8321,1862,'Gyeonggi','41'),(8322,1862,'North Gyeongsang','47'),(8323,1862,'South Gyeongsang','48'),(8324,1862,'North Jeolla','45'),(8325,1862,'South Jeolla','46'),(8326,1862,'Jeju','49'),(8327,1863,'Al Aḩmadi','AH'),(8328,1863,'Al Farwānīyah','FA'),(8329,1863,'Al Jahrā&rsquo;','JA'),(8330,1863,'Al &lsquo;Āşimah','KU'),(8331,1863,'Ḩawallī','HA'),(8332,1863,'Mubārak al Kabīr','MU'),(8333,1865,'Almaty','ALA'),(8334,1865,'Astana','AST'),(8335,1865,'Almaty oblysy','ALM'),(8336,1865,'Aqmola oblysy','AKM'),(8337,1865,'Aqt&ouml;be oblysy','AKT'),(8338,1865,'Atyraū oblysy','ATY'),(8339,1865,'Bayqongyr','BAY'),(8340,1865,'Batys Qazaqstan oblysy','ZAP'),(8341,1865,'Mangghystaū oblysy','MAN'),(8342,1865,'Ongt&uuml;stik Qazaqstan oblysy','YUZ'),(8343,1865,'Pavlodar oblysy','PAV'),(8344,1865,'Qaraghandy oblysy','KAR'),(8345,1865,'Qostanay oblysy','KUS'),(8346,1865,'Qyzylorda oblysy','KZY'),(8347,1865,'Shyghys Qazaqstan oblysy','VOS'),(8348,1865,'Solt&uuml;stik Qazaqstan oblysy','SEV'),(8349,1865,'Zhambyl oblysy','ZHA'),(8350,1866,'Vientiane','VT'),(8351,1866,'Attapu','AT'),(8352,1866,'Bok&egrave;o','BK'),(8353,1866,'Bolikhamsai','BL'),(8354,1866,'Champasak','CH'),(8355,1866,'Houaphan','HO'),(8356,1866,'Khammouan','KH'),(8357,1866,'Louang Namtha','LM'),(8358,1866,'Louangphabang','LP'),(8359,1866,'Oud&ocirc;mxai','OU'),(8360,1866,'Ph&ocirc;ngsali','PH'),(8361,1866,'Salavan','SL'),(8362,1866,'Savannakh&eacute;t','SV'),(8363,1866,'Vientiane','VI'),(8364,1866,'Xaignabouli','XA'),(8365,1866,'X&eacute;kong','XE'),(8366,1866,'Xiangkhouang','XI'),(8367,1866,'Xais&ocirc;mboun','XS'),(8368,1867,'Aakk&acirc;r','AK'),(8369,1867,'Baalbek-Hermel','BH'),(8370,1867,'B&eacute;qaa','BI'),(8371,1867,'Beyrouth','BA'),(8372,1867,'Liban-Nord','AS'),(8373,1867,'Liban-Sud','JA'),(8374,1867,'Mont-Liban','JL'),(8375,1867,'Nabat&icirc;y&eacute;','NA'),(8376,1868,'Anse la Raye','01'),(8377,1868,'Canaries','12'),(8378,1868,'Castries','02'),(8379,1868,'Choiseul','03'),(8380,1868,'Dennery','05'),(8381,1868,'Gros Islet','06'),(8382,1868,'Laborie','07'),(8383,1868,'Micoud','08'),(8384,1868,'Soufri&egrave;re','10'),(8385,1868,'Vieux Fort','11'),(8386,1869,'Balzers','01'),(8387,1869,'Eschen','02'),(8388,1869,'Gamprin','03'),(8389,1869,'Mauren','04'),(8390,1869,'Planken','05'),(8391,1869,'Ruggell','06'),(8392,1869,'Schaan','07'),(8393,1869,'Schellenberg','08'),(8394,1869,'Triesen','09'),(8395,1869,'Triesenberg','10'),(8396,1869,'Vaduz','11'),(8397,1870,'Western Province','1'),(8398,1870,'Central Province','2'),(8399,1870,'Southern Province','3'),(8400,1870,'Northern Province','4'),(8401,1870,'Eastern Province','5'),(8402,1870,'North Western Province','6'),(8403,1870,'North Central Province','7'),(8404,1870,'Uva Province','8'),(8405,1870,'Sabaragamuwa Province','9'),(8406,1871,'Bomi','BM'),(8407,1871,'Bong','BG'),(8408,1871,'Gbarpolu','GP'),(8409,1871,'Grand Bassa','GB'),(8410,1871,'Grand Cape Mount','CM'),(8411,1871,'Grand Gedeh','GG'),(8412,1871,'Grand Kru','GK'),(8413,1871,'Lofa','LO'),(8414,1871,'Margibi','MG'),(8415,1871,'Maryland','MY'),(8416,1871,'Montserrado','MO'),(8417,1871,'Nimba','NI'),(8418,1871,'River Cess','RI'),(8419,1871,'River Gee','RG'),(8420,1871,'Sinoe','SI'),(8421,1872,'Berea','D'),(8422,1872,'Butha-Buthe','B'),(8423,1872,'Leribe','C'),(8424,1872,'Mafeteng','E'),(8425,1872,'Maseru','A'),(8426,1872,'Mohale&#039;s Hoek','F'),(8427,1872,'Mokhotlong','J'),(8428,1872,'Qacha&#039;s Nek','H'),(8429,1872,'Quthing','G'),(8430,1872,'Thaba-Tseka','K'),(8431,1873,'Alytaus Apskritis','AL'),(8432,1873,'Kauno Apskritis','KU'),(8433,1873,'Klaipėdos Apskritis','KL'),(8434,1873,'Marijampolės Apskritis','MR'),(8435,1873,'Panevėžio Apskritis','PN'),(8436,1873,'&Scaron;iaulių Apskritis','SA'),(8437,1873,'Tauragės Apskritis','TA'),(8438,1873,'Tel&scaron;ių Apskritis','TE'),(8439,1873,'Utenos Apskritis','UT'),(8440,1873,'Vilniaus Apskritis','VL'),(8441,1874,'Capellen','CA'),(8442,1874,'Clervaux','CL'),(8443,1874,'Diekirch','DI'),(8444,1874,'Echternach','EC'),(8445,1874,'Esch-sur-Alzette','ES'),(8446,1874,'Grevenmacher','GR'),(8447,1874,'Luxembourg','LU'),(8448,1874,'Mersch','ME'),(8449,1874,'Redange','RD'),(8450,1874,'Remich','RM'),(8451,1874,'Vianden','VD'),(8452,1874,'Wiltz','WI'),(8453,1875,'Aglonas novads (Aglona)','001'),(8454,1875,'Aizkraukles novads (Aizkraukle)','002'),(8455,1875,'Aizputes novads (Aizpute)','003'),(8456,1875,'Aknīstes novads (Aknīste)','004'),(8457,1875,'Alojas novads (Aloja)','005'),(8458,1875,'Alsungas novads (Alsunga)','006'),(8459,1875,'Alūksnes novads (Alūksne)','007'),(8460,1875,'Amatas novads (Amata)','008'),(8461,1875,'Apes novads (Ape)','009'),(8462,1875,'Auces novads (Auce)','010'),(8463,1875,'Ādažu novads (Ādaži)','011'),(8464,1875,'Babītes novads (Babīte)','012'),(8465,1875,'Baldones novads (Baldone)','013'),(8466,1875,'Baltinavas novads (Baltinava)','014'),(8467,1875,'Balvu novads (Balvi)','015'),(8468,1875,'Bauskas novads (Bauska)','016'),(8469,1875,'Beverīnas novads (Beverīna)','017'),(8470,1875,'Brocēnu novads (Brocēni)','018'),(8471,1875,'Burtnieku novads (Burtnieki)','019'),(8472,1875,'Carnikavas novads (Carnikava)','020'),(8473,1875,'Cesvaines novads (Cesvaine)','021'),(8474,1875,'Cēsu novads (Cēsis)','022'),(8475,1875,'Ciblas novads (Cibla)','023'),(8476,1875,'Dagdas novads (Dagda)','024'),(8477,1875,'Daugavpils novads (Daugavpils)','025'),(8478,1875,'Dobeles novads (Dobele)','026'),(8479,1875,'Dundagas novads (Dundaga)','027'),(8480,1875,'Durbes novads (Durbe)','028'),(8481,1875,'Engures novads (Engure)','029'),(8482,1875,'Ērgļu novads (Ērgļi)','030'),(8483,1875,'Garkalnes novads (Garkalne)','031'),(8484,1875,'Grobiņas novads (Grobiņa)','032'),(8485,1875,'Gulbenes novads (Gulbene)','033'),(8486,1875,'Iecavas novads (Iecava)','034'),(8487,1875,'Ik&scaron;ķiles novads (Ik&scaron;ķile)','035'),(8488,1875,'Ilūkstes novads (Ilūkste)','036'),(8489,1875,'Inčukalna novads (Inčukalns)','037'),(8490,1875,'Jaunjelgavas novads (Jaunjelgava)','038'),(8491,1875,'Jaunpiebalgas novads (Jaunpiebalga)','039'),(8492,1875,'Jaunpils novads (Jaunpils)','040'),(8493,1875,'Jelgavas novads (Jelgava)','041'),(8494,1875,'Jēkabpils novads (Jēkabpils)','042'),(8495,1875,'Kandavas novads (Kandava)','043'),(8496,1875,'Kārsavas novads (Kārsava)','044'),(8497,1875,'Kocēnu novads (Kocēni)','045'),(8498,1875,'Kokneses novads (Koknese)','046'),(8499,1875,'Krāslavas novads (Krāslava)','047'),(8500,1875,'Krimuldas novads (Krimulda)','048'),(8501,1875,'Krustpils novads (Krustpils)','049'),(8502,1875,'Kuldīgas novads (Kuldīga)','050'),(8503,1875,'Ķeguma novads (Ķegums)','051'),(8504,1875,'Ķekavas novads (Ķekava)','052'),(8505,1875,'Lielvārdes novads (Lielvārde)','053'),(8506,1875,'Limbažu novads (Limbaži)','054'),(8507,1875,'Līgatnes novads (Līgatne)','055'),(8508,1875,'Līvānu novads (Līvāni)','056'),(8509,1875,'Lubānas novads (Lubāna)','057'),(8510,1875,'Ludzas novads (Ludza)','058'),(8511,1875,'Madonas novads (Madona)','059'),(8512,1875,'Mazsalacas novads (Mazsalaca)','060'),(8513,1875,'Mālpils novads (Mālpils)','061'),(8514,1875,'Mārupes novads (Mārupe)','062'),(8515,1875,'Mērsraga novads (Mērsrags)','063'),(8516,1875,'Nauk&scaron;ēnu novads (Nauk&scaron;ēni)','064'),(8517,1875,'Neretas novads (Nereta)','065'),(8518,1875,'Nīcas novads (Nīca)','066'),(8519,1875,'Ogres novads (Ogre)','067'),(8520,1875,'Olaines novads (Olaine)','068'),(8521,1875,'Ozolnieku novads (Ozolnieki)','069'),(8522,1875,'Pārgaujas novads (Pārgauja)','070'),(8523,1875,'Pāvilostas novads (Pāvilosta)','071'),(8524,1875,'Pļaviņu novads (Pļaviņas)','072'),(8525,1875,'Preiļu novads (Preiļi)','073'),(8526,1875,'Priekules novads (Priekule)','074'),(8527,1875,'Priekuļu novads (Priekuļi)','075'),(8528,1875,'Raunas novads (Rauna)','076'),(8529,1875,'Rēzeknes novads (Rēzekne)','077'),(8530,1875,'Riebiņu novads (Riebiņi)','078'),(8531,1875,'Rojas novads (Roja)','079'),(8532,1875,'Ropažu novads (Ropaži)','080'),(8533,1875,'Rucavas novads (Rucava)','081'),(8534,1875,'Rugāju novads (Rugāji)','082'),(8535,1875,'Rundāles novads (Rundāle)','083'),(8536,1875,'Rūjienas novads (Rūjiena)','084'),(8537,1875,'Salas novads (Sala)','085'),(8538,1875,'Salacgrīvas novads (Salacgrīva)','086'),(8539,1875,'Salaspils novads (Salaspils)','087'),(8540,1875,'Saldus novads (Saldus)','088'),(8541,1875,'Saulkrastu novads (Saulkrasti)','089'),(8542,1875,'Sējas novads (Sēja)','090'),(8543,1875,'Siguldas novads (Sigulda)','091'),(8544,1875,'Skrīveru novads (Skrīveri)','092'),(8545,1875,'Skrundas novads (Skrunda)','093'),(8546,1875,'Smiltenes novads (Smiltene)','094'),(8547,1875,'Stopiņu novads (Stopiņi)','095'),(8548,1875,'Strenču novads (Strenči)','096'),(8549,1875,'Talsu novads (Talsi)','097'),(8550,1875,'Tērvetes novads (Tērvete)','098'),(8551,1875,'Tukuma novads (Tukums)','099'),(8552,1875,'Vaiņodes novads (Vaiņode)','100'),(8553,1875,'Valkas novads (Valka)','101'),(8554,1875,'Varakļānu novads (Varakļāni)','102'),(8555,1875,'Vārkavas novads (Vārkava)','103'),(8556,1875,'Vecpiebalgas novads (Vecpiebalga)','104'),(8557,1875,'Vecumnieku novads (Vecumnieki)','105'),(8558,1875,'Ventspils novads (Ventspils)','106'),(8559,1875,'Viesītes novads (Viesīte)','107'),(8560,1875,'Viļakas novads (Viļaka)','108'),(8561,1875,'Viļānu novads (Viļāni)','109'),(8562,1875,'Zilupes novads (Zilupe)','110'),(8563,1875,'Daugavpils','DGV'),(8564,1875,'Jelgava','JEL'),(8565,1875,'Jēkabpils','JKB'),(8566,1875,'Jūrmala','JUR'),(8567,1875,'Liepāja','LPX'),(8568,1875,'Rēzekne','REZ'),(8569,1875,'Rīga','RIX'),(8570,1875,'Valmiera','VMR'),(8571,1875,'Ventspils','VEN'),(8572,1876,'Al Buţnān','BU'),(8573,1876,'Al Jabal al Akhḑar','JA'),(8574,1876,'Al Jabal al Gharbī','JG'),(8575,1876,'Al Jafārah','JI'),(8576,1876,'Al Jufrah','JU'),(8577,1876,'Al Kufrah','KF'),(8578,1876,'Al Marj','MJ'),(8579,1876,'Al Marqab','MB'),(8580,1876,'Al Wāḩāt','WA'),(8581,1876,'An Nuqaţ al Khams','NQ'),(8582,1876,'Az Zāwiyah','ZA'),(8583,1876,'Banghāzī','BA'),(8584,1876,'Darnah','DR'),(8585,1876,'Ghāt','GT'),(8586,1876,'Mişrātah','MI'),(8587,1876,'Murzuq','MQ'),(8588,1876,'Nālūt','NL'),(8589,1876,'Sabhā','SB'),(8590,1876,'Surt','SR'),(8591,1876,'Ţarābulus','TB'),(8592,1876,'Wādī al Ḩayāt','WD'),(8593,1876,'Wādī ash Shāţiʾ','WS'),(8594,1877,'Chaouia-Ouardigha','09'),(8595,1877,'Doukhala-Abda','10'),(8596,1877,'F&egrave;s-Boulemane','05'),(8597,1877,'Gharb-Chrarda-Beni Hssen','02'),(8598,1877,'Grand Casablanca','08'),(8599,1877,'Guelmim-Es Semara','14'),(8600,1877,'La&acirc;youne-Boujdour-Sakia el Hamra','15'),(8601,1877,'L&#039;Oriental','04'),(8602,1877,'Marrakech-Tensift-Al Haouz','11'),(8603,1877,'Mekn&egrave;s-Tafilalet','06'),(8604,1877,'Oued ed Dahab-Lagouira','16'),(8605,1877,'Rabat-Sal&eacute;-Zemmour-Zaer','07'),(8606,1877,'Souss-Massa-Dr&acirc;a','13'),(8607,1877,'Tadla-Azilal','12'),(8608,1877,'Tanger-T&eacute;touan','01'),(8609,1877,'Taza-Al Hoceima-Taounate','03'),(8610,1878,'Fontvieille','FO'),(8611,1878,'Jardin Exotique','JE'),(8612,1878,'La Colle','CL'),(8613,1878,'La Condamine','CO'),(8614,1878,'La Gare','GA'),(8615,1878,'La Source','SO'),(8616,1878,'Larvotto','LA'),(8617,1878,'Malbousquet','MA'),(8618,1878,'Monaco-Ville','MO'),(8619,1878,'Moneghetti','MG'),(8620,1878,'Monte-Carlo','MC'),(8621,1878,'Moulins','MU'),(8622,1878,'Port-Hercule','PH'),(8623,1878,'Saint-Roman','SR'),(8624,1878,'Sainte-D&eacute;vote','SD'),(8625,1878,'Sp&eacute;lugues','SP'),(8626,1878,'Vallon de la Rousse','VR'),(8627,1879,'Găgăuzia','GA'),(8628,1879,'Bălți','BA'),(8629,1879,'Bender','BD'),(8630,1879,'Chișinău','CU'),(8631,1879,'Anenii Noi','AN'),(8632,1879,'Basarabeasca','BS'),(8633,1879,'Briceni','BR'),(8634,1879,'Cahul','CA'),(8635,1879,'Cantemir','CT'),(8636,1879,'Călărași','CL'),(8637,1879,'Căușeni','CS'),(8638,1879,'Cimișlia','CM'),(8639,1879,'Criuleni','CR'),(8640,1879,'Dondușeni','DO'),(8641,1879,'Drochia','DR'),(8642,1879,'Dubăsari','DU'),(8643,1879,'Edineț','ED'),(8644,1879,'Fălești','FA'),(8645,1879,'Florești','FL'),(8646,1879,'Glodeni','GL'),(8647,1879,'H&icirc;ncești','HI'),(8648,1879,'Ialoveni','IA'),(8649,1879,'Leova','LE'),(8650,1879,'Nisporeni','NI'),(8651,1879,'Ocnița','OC'),(8652,1879,'Orhei','OR'),(8653,1879,'Rezina','RE'),(8654,1879,'R&icirc;șcani','RI'),(8655,1879,'S&icirc;ngerei','SI'),(8656,1879,'Soroca','SO'),(8657,1879,'Strășeni','ST'),(8658,1879,'Șoldănești','SD'),(8659,1879,'Ștefan Vodă','SV'),(8660,1879,'Taraclia','TA'),(8661,1879,'Telenești','TE'),(8662,1879,'Ungheni','UN'),(8663,1879,'St&icirc;nga Nistrului','SN'),(8664,1880,'Andrijevica','01'),(8665,1880,'Bar','02'),(8666,1880,'Berane','03'),(8667,1880,'Bijelo Polje','04'),(8668,1880,'Budva','05'),(8669,1880,'Cetinje','06'),(8670,1880,'Danilovgrad','07'),(8671,1880,'Herceg-Novi','08'),(8672,1880,'Kola&scaron;in','09'),(8673,1880,'Kotor','10'),(8674,1880,'Mojkovac','11'),(8675,1880,'Nik&scaron;ić','12'),(8676,1880,'Plav','13'),(8677,1880,'Pljevlja','14'),(8678,1880,'Plužine','15'),(8679,1880,'Podgorica','16'),(8680,1880,'Rožaje','17'),(8681,1880,'&Scaron;avnik','18'),(8682,1880,'Tivat','19'),(8683,1880,'Ulcinj','20'),(8684,1880,'Žabljak','21'),(8685,1880,'Gusinje','22'),(8686,1880,'Petnjica','23'),(8687,1882,'Antananarivo','T'),(8688,1882,'Antsiranana','D'),(8689,1882,'Fianarantsoa','F'),(8690,1882,'Mahajanga','M'),(8691,1882,'Toamasina','A'),(8692,1882,'Toliara','U'),(8693,1883,'Ralik chain','L'),(8694,1883,'Ratak chain','T'),(8695,1884,'Aračinovo','02'),(8696,1884,'Berovo','03'),(8697,1884,'Bitola','04'),(8698,1884,'Bogdanci','05'),(8699,1884,'Bogovinje','06'),(8700,1884,'Bosilovo','07'),(8701,1884,'Brvenica','08'),(8702,1884,'Centar Župa','78'),(8703,1884,'Ča&scaron;ka','80'),(8704,1884,'Če&scaron;inovo-Oble&scaron;evo','81'),(8705,1884,'Čučer Sandevo','82'),(8706,1884,'Debar','21'),(8707,1884,'Debarca','22'),(8708,1884,'Delčevo','23'),(8709,1884,'Demir Hisar','25'),(8710,1884,'Demir Kapija','24'),(8711,1884,'Dojran','26'),(8712,1884,'Dolneni','27'),(8713,1884,'Gevgelija','18'),(8714,1884,'Gostivar','19'),(8715,1884,'Gradsko','20'),(8716,1884,'Ilinden','34'),(8717,1884,'Jegunovce','35'),(8718,1884,'Karbinci','37'),(8719,1884,'Kavadarci','36'),(8720,1884,'Kičevo','40'),(8721,1884,'Kočani','42'),(8722,1884,'Konče','41'),(8723,1884,'Kratovo','43'),(8724,1884,'Kriva Palanka','44'),(8725,1884,'Krivoga&scaron;tani','45'),(8726,1884,'Kru&scaron;evo','46'),(8727,1884,'Kumanovo','47'),(8728,1884,'Lipkovo','48'),(8729,1884,'Lozovo','49'),(8730,1884,'Makedonska Kamenica','51'),(8731,1884,'Makedonski Brod','52'),(8732,1884,'Mavrovo i Rostu&scaron;a','50'),(8733,1884,'Mogila','53'),(8734,1884,'Negotino','54'),(8735,1884,'Novaci','55'),(8736,1884,'Novo Selo','56'),(8737,1884,'Ohrid','58'),(8738,1884,'Pehčevo','60'),(8739,1884,'Petrovec','59'),(8740,1884,'Plasnica','61'),(8741,1884,'Prilep','62'),(8742,1884,'Probi&scaron;tip','63'),(8743,1884,'Radovi&scaron;','64'),(8744,1884,'Rankovce','65'),(8745,1884,'Resen','66'),(8746,1884,'Rosoman','67'),(8747,1884,'Skopje','85'),(8748,1884,'Sopi&scaron;te','70'),(8749,1884,'Staro Nagoričane','71'),(8750,1884,'Struga','72'),(8751,1884,'Strumica','73'),(8752,1884,'Studeničani','74'),(8753,1884,'Sveti Nikole','69'),(8754,1884,'&Scaron;tip','83'),(8755,1884,'Tearce','75'),(8756,1884,'Tetovo','76'),(8757,1884,'Valandovo','10'),(8758,1884,'Vasilevo','11'),(8759,1884,'Veles','13'),(8760,1884,'Vevčani','12'),(8761,1884,'Vinica','14'),(8762,1884,'Vrapči&scaron;te','16'),(8763,1884,'Zelenikovo','32'),(8764,1884,'Zrnovci','33'),(8765,1884,'Želino','30'),(8766,1885,'Bamako','BKO'),(8767,1885,'Gao','7'),(8768,1885,'Kayes','1'),(8769,1885,'Kidal','8'),(8770,1885,'Koulikoro','2'),(8771,1885,'Mopti','5'),(8772,1885,'S&eacute;gou','4'),(8773,1885,'Sikasso','3'),(8774,1885,'Tombouctou','6'),(8775,1886,'Ayeyawady','07'),(8776,1886,'Bago','02'),(8777,1886,'Magway','03'),(8778,1886,'Mandalay','04'),(8779,1886,'Sagaing','01'),(8780,1886,'Taninthayi','05'),(8781,1886,'Yangon','06'),(8782,1886,'Chin','14'),(8783,1886,'Kachin','11'),(8784,1886,'Kayah','12'),(8785,1886,'Kayin','13'),(8786,1886,'Mon','15'),(8787,1886,'Rakhine','16'),(8788,1886,'Shan','17'),(8789,1886,'Nay Pyi Taw','18'),(8790,1887,'Ulaanbaatar','001'),(8791,1887,'Arhangay','073'),(8792,1887,'Bayanhongor','069'),(8793,1887,'Bayan-&Ouml;lgiy','071'),(8794,1887,'Bulgan','067'),(8795,1887,'Darhan uul','037'),(8796,1887,'Dornod','061'),(8797,1887,'Dornogovĭ','063'),(8798,1887,'Dundgovĭ','059'),(8799,1887,'Dzavhan','057'),(8800,1887,'Govĭ-Altay','065'),(8801,1887,'Govĭ-S&uuml;mber','064'),(8802,1887,'Hentiy','039'),(8803,1887,'Hovd','043'),(8804,1887,'H&ouml;vsg&ouml;l','041'),(8805,1887,'&Ouml;mn&ouml;govĭ','053'),(8806,1887,'Orhon','035'),(8807,1887,'&Ouml;v&ouml;rhangay','055'),(8808,1887,'Selenge','049'),(8809,1887,'S&uuml;hbaatar','051'),(8810,1887,'T&ouml;v','047'),(8811,1887,'Uvs','046'),(8812,1891,'Adrar','07'),(8813,1891,'Assaba','03'),(8814,1891,'Brakna','05'),(8815,1891,'Dakhlet Nou&acirc;dhibou','08'),(8816,1891,'Gorgol','04'),(8817,1891,'Guidimaka','10'),(8818,1891,'Hodh ech Chargui','01'),(8819,1891,'Hodh el Gharbi','02'),(8820,1891,'Inchiri','12'),(8821,1891,'Nouakchott Nord','14'),(8822,1891,'Nouakchott Ouest','13'),(8823,1891,'Nouakchott Sud','15'),(8824,1891,'Tagant','09'),(8825,1891,'Tiris Zemmour','11'),(8826,1891,'Trarza','06'),(8827,1893,'Attard','01'),(8828,1893,'Balzan','02'),(8829,1893,'Birgu','03'),(8830,1893,'Birkirkara','04'),(8831,1893,'Birżebbuġa','05'),(8832,1893,'Bormla','06'),(8833,1893,'Dingli','07'),(8834,1893,'Fgura','08'),(8835,1893,'Floriana','09'),(8836,1893,'Fontana','10'),(8837,1893,'Gudja','11'),(8838,1893,'Gżira','12'),(8839,1893,'Għajnsielem','13'),(8840,1893,'Għarb','14'),(8841,1893,'Għargħur','15'),(8842,1893,'Għasri','16'),(8843,1893,'Għaxaq','17'),(8844,1893,'Ħamrun','18'),(8845,1893,'Iklin','19'),(8846,1893,'Isla','20'),(8847,1893,'Kalkara','21'),(8848,1893,'Kerċem','22'),(8849,1893,'Kirkop','23'),(8850,1893,'Lija','24'),(8851,1893,'Luqa','25'),(8852,1893,'Marsa','26'),(8853,1893,'Marsaskala','27'),(8854,1893,'Marsaxlokk','28'),(8855,1893,'Mdina','29'),(8856,1893,'Mellieħa','30'),(8857,1893,'Mġarr','31'),(8858,1893,'Mosta','32'),(8859,1893,'Mqabba','33'),(8860,1893,'Msida','34'),(8861,1893,'Mtarfa','35'),(8862,1893,'Munxar','36'),(8863,1893,'Nadur','37'),(8864,1893,'Naxxar','38'),(8865,1893,'Paola','39'),(8866,1893,'Pembroke','40'),(8867,1893,'Piet&agrave;','41'),(8868,1893,'Qala','42'),(8869,1893,'Qormi','43'),(8870,1893,'Qrendi','44'),(8871,1893,'Rabat Għawdex','45'),(8872,1893,'Rabat Malta','46'),(8873,1893,'Safi','47'),(8874,1893,'San Ġiljan','48'),(8875,1893,'San Ġwann','49'),(8876,1893,'San Lawrenz','50'),(8877,1893,'San Pawl il-Baħar','51'),(8878,1893,'Sannat','52'),(8879,1893,'Santa Luċija','53'),(8880,1893,'Santa Venera','54'),(8881,1893,'Siġġiewi','55'),(8882,1893,'Sliema','56'),(8883,1893,'Swieqi','57'),(8884,1893,'Ta&#039; Xbiex','58'),(8885,1893,'Tarxien','59'),(8886,1893,'Valletta','60'),(8887,1893,'Xagħra','61'),(8888,1893,'Xewkija','62'),(8889,1893,'Xgħajra','63'),(8890,1893,'Żabbar','64'),(8891,1893,'Żebbuġ Għawdex','65'),(8892,1893,'Żebbuġ Malta','66'),(8893,1893,'Żejtun','67'),(8894,1893,'Żurrieq','68'),(8895,1894,'Beau Bassin-Rose Hill','BR'),(8896,1894,'Curepipe','CU'),(8897,1894,'Port Louis','PU'),(8898,1894,'Quatre Bornes','QB'),(8899,1894,'Vacoas-Phoenix','VP'),(8900,1894,'Agalega Islands','AG'),(8901,1894,'Cargados Carajos Shoals (Saint Brandon Islands)','CC'),(8902,1894,'Rodrigues Island','RO'),(8903,1894,'Black River','BL'),(8904,1894,'Flacq','FL'),(8905,1894,'Grand Port','GP'),(8906,1894,'Moka','MO'),(8907,1894,'Pamplemousses','PA'),(8908,1894,'Plaines Wilhems','PW'),(8909,1894,'Port Louis','PL'),(8910,1894,'Rivi&egrave;re du Rempart','RR'),(8911,1894,'Savanne','SA'),(8912,1895,'Male','MLE'),(8913,1895,'Central','CE'),(8914,1895,'North','NO'),(8915,1895,'North Central','NC'),(8916,1895,'South','SU'),(8917,1895,'South Central','SC'),(8918,1895,'Upper North','UN'),(8919,1895,'Upper South','US'),(8920,1896,'Central Region','C'),(8921,1896,'Northern Region','N'),(8922,1896,'Southern Region','S'),(8923,1897,'Mexican Federal District','CMX'),(8924,1897,'Aguascalientes','AGU'),(8925,1897,'Baja California','BCN'),(8926,1897,'Baja California Sur','BCS'),(8927,1897,'Campeche','CAM'),(8928,1897,'Coahuila','COA'),(8929,1897,'Colima','COL'),(8930,1897,'Chiapas','CHP'),(8931,1897,'Chihuahua','CHH'),(8932,1897,'Durango','DUR'),(8933,1897,'Guanajuato','GUA'),(8934,1897,'Guerrero','GRO'),(8935,1897,'Hidalgo','HID'),(8936,1897,'Jalisco','JAL'),(8937,1897,'M&eacute;xico','MEX'),(8938,1897,'Michoac&aacute;n','MIC'),(8939,1897,'Morelos','MOR'),(8940,1897,'Nayarit','NAY'),(8941,1897,'Nuevo Le&oacute;n','NLE'),(8942,1897,'Oaxaca','OAX'),(8943,1897,'Puebla','PUE'),(8944,1897,'Quer&eacute;taro','QUE'),(8945,1897,'Quintana Roo','ROO'),(8946,1897,'San Luis Potos&iacute;','SLP'),(8947,1897,'Sinaloa','SIN'),(8948,1897,'Sonora','SON'),(8949,1897,'Tabasco','TAB'),(8950,1897,'Tamaulipas','TAM'),(8951,1897,'Tlaxcala','TLA'),(8952,1897,'Veracruz','VER'),(8953,1897,'Yucat&aacute;n','YUC'),(8954,1897,'Zacatecas','ZAC'),(8955,1898,'Wilayah Persekutuan Kuala Lumpur','14'),(8956,1898,'Wilayah Persekutuan Labuan','15'),(8957,1898,'Wilayah Persekutuan Putrajaya','16'),(8958,1898,'Johor','01'),(8959,1898,'Kedah','02'),(8960,1898,'Kelantan','03'),(8961,1898,'Melaka','04'),(8962,1898,'Negeri Sembilan','05'),(8963,1898,'Pahang','06'),(8964,1898,'Perak','08'),(8965,1898,'Perlis','09'),(8966,1898,'Pulau Pinang','07'),(8967,1898,'Sabah','12'),(8968,1898,'Sarawak','13'),(8969,1898,'Selangor','10'),(8970,1898,'Terengganu','11'),(8971,1899,'Maputo','MPM'),(8972,1899,'Cabo Delgado','P'),(8973,1899,'Gaza','G'),(8974,1899,'Inhambane','I'),(8975,1899,'Manica','B'),(8976,1899,'Maputo','L'),(8977,1899,'Nampula','N'),(8978,1899,'Niassa','A'),(8979,1899,'Sofala','S'),(8980,1899,'Tete','T'),(8981,1899,'Zamb&eacute;zia','Q'),(8982,1900,'Erongo','ER'),(8983,1900,'Hardap','HA'),(8984,1900,'Karas','KA'),(8985,1900,'Kavango East','KE'),(8986,1900,'Kavango West','KW'),(8987,1900,'Khomas','KH'),(8988,1900,'Kunene','KU'),(8989,1900,'Ohangwena','OW'),(8990,1900,'Omaheke','OH'),(8991,1900,'Omusati','OS'),(8992,1900,'Oshana','ON'),(8993,1900,'Oshikoto','OT'),(8994,1900,'Otjozondjupa','OD'),(8995,1900,'Zambezi','CA'),(8996,1902,'Niamey','8'),(8997,1902,'Agadez','1'),(8998,1902,'Diffa','2'),(8999,1902,'Dosso','3'),(9000,1902,'Maradi','4'),(9001,1902,'Tahoua','5'),(9002,1902,'Tillab&eacute;ri','6'),(9003,1902,'Zinder','7'),(9004,1904,'Abuja Federal Capital Territory','FC'),(9005,1904,'Abia','AB'),(9006,1904,'Adamawa','AD'),(9007,1904,'Akwa Ibom','AK'),(9008,1904,'Anambra','AN'),(9009,1904,'Bauchi','BA'),(9010,1904,'Bayelsa','BY'),(9011,1904,'Benue','BE'),(9012,1904,'Borno','BO'),(9013,1904,'Cross River','CR'),(9014,1904,'Delta','DE'),(9015,1904,'Ebonyi','EB'),(9016,1904,'Edo','ED'),(9017,1904,'Ekiti','EK'),(9018,1904,'Enugu','EN'),(9019,1904,'Gombe','GO'),(9020,1904,'Imo','IM'),(9021,1904,'Jigawa','JI'),(9022,1904,'Kaduna','KD'),(9023,1904,'Kano','KN'),(9024,1904,'Katsina','KT'),(9025,1904,'Kebbi','KE'),(9026,1904,'Kogi','KO'),(9027,1904,'Kwara','KW'),(9028,1904,'Lagos','LA'),(9029,1904,'Nasarawa','NA'),(9030,1904,'Niger','NI'),(9031,1904,'Ogun','OG'),(9032,1904,'Ondo','ON'),(9033,1904,'Osun','OS'),(9034,1904,'Oyo','OY'),(9035,1904,'Plateau','PL'),(9036,1904,'Rivers','RI'),(9037,1904,'Sokoto','SO'),(9038,1904,'Taraba','TA'),(9039,1904,'Yobe','YO'),(9040,1904,'Zamfara','ZA'),(9041,1905,'Boaco','BO'),(9042,1905,'Carazo','CA'),(9043,1905,'Chinandega','CI'),(9044,1905,'Chontales','CO'),(9045,1905,'Estel&iacute;','ES'),(9046,1905,'Granada','GR'),(9047,1905,'Jinotega','JI'),(9048,1905,'Le&oacute;n','LE'),(9049,1905,'Madriz','MD'),(9050,1905,'Managua','MN'),(9051,1905,'Masaya','MS'),(9052,1905,'Matagalpa','MT'),(9053,1905,'Nueva Segovia','NS'),(9054,1905,'R&iacute;o San Juan','SJ'),(9055,1905,'Rivas','RI'),(9056,1905,'Atl&aacute;ntico Norte','AN'),(9057,1905,'Atl&aacute;ntico Sur','AS'),(9058,1906,'Drenthe','DR'),(9059,1906,'Flevoland','FL'),(9060,1906,'Frysl&acirc;n','FR'),(9061,1906,'Gelderland','GE'),(9062,1906,'Groningen','GR'),(9063,1906,'Limburg','LI'),(9064,1906,'Noord-Brabant','NB'),(9065,1906,'Noord-Holland','NH'),(9066,1906,'Overijssel','OV'),(9067,1906,'Utrecht','UT'),(9068,1906,'Zeeland','ZE'),(9069,1906,'Zuid-Holland','ZH'),(9070,1907,'Akershus','02'),(9071,1907,'Aust-Agder','09'),(9072,1907,'Buskerud','06'),(9073,1907,'Finnmark','20'),(9074,1907,'Hedmark','04'),(9075,1907,'Hordaland','12'),(9076,1907,'M&oslash;re og Romsdal','15'),(9077,1907,'Nordland','18'),(9078,1907,'Nord-Tr&oslash;ndelag','17'),(9079,1907,'Oppland','05'),(9080,1907,'Oslo','03'),(9081,1907,'Rogaland','11'),(9082,1907,'Sogn og Fjordane','14'),(9083,1907,'S&oslash;r-Tr&oslash;ndelag','16'),(9084,1907,'Telemark','08'),(9085,1907,'Troms','19'),(9086,1907,'Vest-Agder','10'),(9087,1907,'Vestfold','07'),(9088,1907,'&Oslash;stfold','01'),(9089,1907,'Jan Mayen','22'),(9090,1907,'Svalbard','21'),(9091,1908,'Central','1'),(9092,1908,'Mid Western','2'),(9093,1908,'Western','3'),(9094,1908,'Eastern','4'),(9095,1908,'Far Western','5'),(9096,1909,'Aiwo','01'),(9097,1909,'Anabar','02'),(9098,1909,'Anetan','03'),(9099,1909,'Anibare','04'),(9100,1909,'Baiti','05'),(9101,1909,'Boe','06'),(9102,1909,'Buada','07'),(9103,1909,'Denigomodu','08'),(9104,1909,'Ewa','09'),(9105,1909,'Ijuw','10'),(9106,1909,'Meneng','11'),(9107,1909,'Nibok','12'),(9108,1909,'Uaboe','13'),(9109,1909,'Yaren','14'),(9110,1911,'Auckland','AUK'),(9111,1911,'Bay of Plenty','BOP'),(9112,1911,'Canterbury','CAN'),(9113,1911,'Gisborne','GIS'),(9114,1911,'Hawke&#039;s Bay','HKB'),(9115,1911,'Marlborough','MBH'),(9116,1911,'Manawatu-Wanganui','MWT'),(9117,1911,'Nelson','NSN'),(9118,1911,'Northland','NTL'),(9119,1911,'Otago','OTA'),(9120,1911,'Southland','STL'),(9121,1911,'Tasman','TAS'),(9122,1911,'Taranaki','TKI'),(9123,1911,'Waikato','WKO'),(9124,1911,'Wellington','WGN'),(9125,1911,'West Coast','WTC'),(9126,1911,'Chatham Islands Territory','CIT'),(9127,1912,'Ad Dākhilīyah','DA'),(9128,1912,'Shamāl al Bāţinah','BS'),(9129,1912,'Janūb al Bāţinah','BJ'),(9130,1912,'Al Wusţ&aacute;','WU'),(9131,1912,'Shamāl ash Sharqīyah','SS'),(9132,1912,'Janūb ash Sharqīyah','SJ'),(9133,1912,'Az̧ Z̧āhirah','ZA'),(9134,1912,'Al Buraymī','BU'),(9135,1912,'Masqaţ','MA'),(9136,1912,'Musandam','MU'),(9137,1912,'Z̧ufār','ZU'),(9138,1913,'Bocas del Toro','1'),(9139,1913,'Chiriqu&iacute;','4'),(9140,1913,'Cocl&eacute;','2'),(9141,1913,'Col&oacute;n','3'),(9142,1913,'Dari&eacute;n','5'),(9143,1913,'Herrera','6'),(9144,1913,'Los Santos','7'),(9145,1913,'Panam&aacute;','8'),(9146,1913,'Veraguas','9'),(9147,1913,'Panam&aacute; Oeste','10'),(9148,1913,'Ember&aacute;','EM'),(9149,1913,'Kuna Yala','KY'),(9150,1913,'Ng&ouml;be-Bugl&eacute;','NB'),(9151,1914,'Municipalidad Metropolitana de Lima','LMA'),(9152,1914,'Amazonas','AMA'),(9153,1914,'Ancash','ANC'),(9154,1914,'Apur&iacute;mac','APU'),(9155,1914,'Arequipa','ARE'),(9156,1914,'Ayacucho','AYA'),(9157,1914,'Cajamarca','CAJ'),(9158,1914,'Cusco','CUS'),(9159,1914,'El Callao','CAL'),(9160,1914,'Huancavelica','HUV'),(9161,1914,'Hu&aacute;nuco','HUC'),(9162,1914,'Ica','ICA'),(9163,1914,'Jun&iacute;n','JUN'),(9164,1914,'La Libertad','LAL'),(9165,1914,'Lambayeque','LAM'),(9166,1914,'Lima','LIM'),(9167,1914,'Loreto','LOR'),(9168,1914,'Madre de Dios','MDD'),(9169,1914,'Moquegua','MOQ'),(9170,1914,'Pasco','PAS'),(9171,1914,'Piura','PIU'),(9172,1914,'Puno','PUN'),(9173,1914,'San Mart&iacute;n','SAM'),(9174,1914,'Tacna','TAC'),(9175,1914,'Tumbes','TUM'),(9176,1914,'Ucayali','UCA'),(9177,1916,'National Capital District (Port Moresby)','NCD'),(9178,1916,'Central','CPM'),(9179,1916,'Chimbu','CPK'),(9180,1916,'Eastern Highlands','EHG'),(9181,1916,'East New Britain','EBR'),(9182,1916,'East Sepik','ESW'),(9183,1916,'Enga','EPW'),(9184,1916,'Gulf','GPK'),(9185,1916,'Hela','HLA'),(9186,1916,'Jiwaka','JWK'),(9187,1916,'Madang','MPM'),(9188,1916,'Manus','MRL'),(9189,1916,'Milne Bay','MBA'),(9190,1916,'Morobe','MPL'),(9191,1916,'New Ireland','NIK'),(9192,1916,'Northern','NPP'),(9193,1916,'West Sepik','SAN'),(9194,1916,'Southern Highlands','SHM'),(9195,1916,'Western','WPD'),(9196,1916,'Western Highlands','WHM'),(9197,1916,'West New Britain','WBK'),(9198,1916,'Bougainville','NSB'),(9199,1917,'Autonomous Region in Muslim Mindanao','14'),(9200,1917,'Bicol','05'),(9201,1917,'Cagayan Valley','02'),(9202,1917,'Calabarzon','40'),(9203,1917,'Caraga','13'),(9204,1917,'Central Luzon','03'),(9205,1917,'Central Visayas','07'),(9206,1917,'Cordillera Administrative Region','15'),(9207,1917,'Davao','11'),(9208,1917,'Eastern Visayas','08'),(9209,1917,'Ilocos','01'),(9210,1917,'Mimaropa','41'),(9211,1917,'National Capital Region','00'),(9212,1917,'Northern Mindanao','10'),(9213,1917,'Soccsksargen','12'),(9214,1917,'Western Visayas','06'),(9215,1917,'Zamboanga Peninsula','09'),(9216,1918,'Islamabad','IS'),(9217,1918,'Balochistan','BA'),(9218,1918,'Khyber Pakhtunkhwa','KP'),(9219,1918,'Punjab','PB'),(9220,1918,'Sindh','SD'),(9221,1918,'Federally Administered Tribal Areas','TA'),(9222,1918,'Azad Kashmir','JK'),(9223,1918,'Gilgit-Baltistan','GB'),(9224,1919,'Dolnośląskie','DS'),(9225,1919,'Kujawsko-pomorskie','KP'),(9226,1919,'Lubelskie','LU'),(9227,1919,'Lubuskie','LB'),(9228,1919,'Ł&oacute;dzkie','LD'),(9229,1919,'Małopolskie','MA'),(9230,1919,'Mazowieckie','MZ'),(9231,1919,'Opolskie','OP'),(9232,1919,'Podkarpackie','PK'),(9233,1919,'Podlaskie','PD'),(9234,1919,'Pomorskie','PM'),(9235,1919,'Śląskie','SL'),(9236,1919,'Świętokrzyskie','SK'),(9237,1919,'Warmińsko-mazurskie','WN'),(9238,1919,'Wielkopolskie','WP'),(9239,1919,'Zachodniopomorskie','ZP'),(9240,1923,'Gaza Strip','GZZ'),(9241,1923,'West Bank','WBK'),(9242,1924,'Aveiro','01'),(9243,1924,'Beja','02'),(9244,1924,'Braga','03'),(9245,1924,'Bragan&ccedil;a','04'),(9246,1924,'Castelo Branco','05'),(9247,1924,'Coimbra','06'),(9248,1924,'&Eacute;vora','07'),(9249,1924,'Faro','08'),(9250,1924,'Guarda','09'),(9251,1924,'Leiria','10'),(9252,1924,'Lisboa','11'),(9253,1924,'Portalegre','12'),(9254,1924,'Porto','13'),(9255,1924,'Santar&eacute;m','14'),(9256,1924,'Set&uacute;bal','15'),(9257,1924,'Viana do Castelo','16'),(9258,1924,'Vila Real','17'),(9259,1924,'Viseu','18'),(9260,1924,'Regi&atilde;o Aut&oacute;noma dos A&ccedil;ores','20'),(9261,1924,'Regi&atilde;o Aut&oacute;noma da Madeira','30'),(9262,1925,'Aimeliik','002'),(9263,1925,'Airai','004'),(9264,1925,'Angaur','010'),(9265,1925,'Hatobohei','050'),(9266,1925,'Kayangel','100'),(9267,1925,'Koror','150'),(9268,1925,'Melekeok','212'),(9269,1925,'Ngaraard','214'),(9270,1925,'Ngarchelong','218'),(9271,1925,'Ngardmau','222'),(9272,1925,'Ngatpang','224'),(9273,1925,'Ngchesar','226'),(9274,1925,'Ngeremlengui','227'),(9275,1925,'Ngiwal','228'),(9276,1925,'Peleliu','350'),(9277,1925,'Sonsorol','370'),(9278,1926,'Asunci&oacute;n','ASU'),(9279,1926,'Alto Paraguay','16'),(9280,1926,'Alto Paran&aacute;','10'),(9281,1926,'Amambay','13'),(9282,1926,'Boquer&oacute;n','19'),(9283,1926,'Caaguaz&uacute;','05'),(9284,1926,'Caazap&aacute;','06'),(9285,1926,'Canindey&uacute;','14'),(9286,1926,'Central','11'),(9287,1926,'Concepci&oacute;n','01'),(9288,1926,'Cordillera','03'),(9289,1926,'Guair&aacute;','04'),(9290,1926,'Itap&uacute;a','07'),(9291,1926,'Misiones','08'),(9292,1926,'&Ntilde;eembuc&uacute;','12'),(9293,1926,'Paraguar&iacute;','09'),(9294,1926,'Presidente Hayes','15'),(9295,1926,'San Pedro','02'),(9296,1927,'Ad Dawḩah','DA'),(9297,1927,'Al Khawr wa adh Dhakhīrah','KH'),(9298,1927,'Al Wakrah','WA'),(9299,1927,'Ar Rayyān','RA'),(9300,1927,'Ash Shamāl','MS'),(9301,1927,'Az̧ Za̧`āyin','ZA'),(9302,1927,'Umm Şalāl','US'),(9303,1929,'Alba','AB'),(9304,1929,'Arad','AR'),(9305,1929,'Argeș','AG'),(9306,1929,'Bacău','BC'),(9307,1929,'Bihor','BH'),(9308,1929,'Bistrița-Năsăud','BN'),(9309,1929,'Botoșani','BT'),(9310,1929,'Brașov','BV'),(9311,1929,'Brăila','BR'),(9312,1929,'Buzău','BZ'),(9313,1929,'Caraș-Severin','CS'),(9314,1929,'Călărași','CL'),(9315,1929,'Cluj','CJ'),(9316,1929,'Constanța','CT'),(9317,1929,'Covasna','CV'),(9318,1929,'D&acirc;mbovița','DB'),(9319,1929,'Dolj','DJ'),(9320,1929,'Galați','GL'),(9321,1929,'Giurgiu','GR'),(9322,1929,'Gorj','GJ'),(9323,1929,'Harghita','HR'),(9324,1929,'Hunedoara','HD'),(9325,1929,'Ialomița','IL'),(9326,1929,'Iași','IS'),(9327,1929,'Ilfov','IF'),(9328,1929,'Maramureș','MM'),(9329,1929,'Mehedinți','MH'),(9330,1929,'Mureș','MS'),(9331,1929,'Neamț','NT'),(9332,1929,'Olt','OT'),(9333,1929,'Prahova','PH'),(9334,1929,'Satu Mare','SM'),(9335,1929,'Sălaj','SJ'),(9336,1929,'Sibiu','SB'),(9337,1929,'Suceava','SV'),(9338,1929,'Teleorman','TR'),(9339,1929,'Timiș','TM'),(9340,1929,'Tulcea','TL'),(9341,1929,'Vaslui','VS'),(9342,1929,'V&acirc;lcea','VL'),(9343,1929,'Vrancea','VN'),(9344,1929,'București','B'),(9345,1930,'Kosovo-Metohija','KM'),(9346,1930,'Vojvodina','VO'),(9347,1931,'Adygeya Respublika','AD'),(9348,1931,'Altay Respublika','AL'),(9349,1931,'Bashkortostan Respublika','BA'),(9350,1931,'Buryatiya Respublika','BU'),(9351,1931,'Chechenskaya Respublika','CE'),(9352,1931,'Chuvashskaya Respublika','CU'),(9353,1931,'Dagestan Respublika','DA'),(9354,1931,'Ingushetiya Respublika','IN'),(9355,1931,'Kabardino-Balkarskaya Respublika','KB'),(9356,1931,'Kalmykiya Respublika','KL'),(9357,1931,'Karachayevo-Cherkesskaya Respublika','KC'),(9358,1931,'Kareliya Respublika','KR'),(9359,1931,'Khakasiya Respublika','KK'),(9360,1931,'Komi Respublika','KO'),(9361,1931,'Mariy El Respublika','ME'),(9362,1931,'Mordoviya Respublika','MO'),(9363,1931,'Sakha Respublika','SA'),(9364,1931,'Severnaya Osetiya-Alaniya Respublika','SE'),(9365,1931,'Tatarstan Respublika','TA'),(9366,1931,'Tyva Respublika','TY'),(9367,1931,'Udmurtskaya Respublika','UD'),(9368,1931,'Altayskiy kray','ALT'),(9369,1931,'Kamchatskiy kray','KAM'),(9370,1931,'Khabarovskiy kray','KHA'),(9371,1931,'Krasnodarskiy kray','KDA'),(9372,1931,'Krasnoyarskiy kray','KYA'),(9373,1931,'Permskiy kray','PER'),(9374,1931,'Primorskiy kray','PRI'),(9375,1931,'Stavropol&#039;skiy kray','STA'),(9376,1931,'Zabaykal&#039;skiy kray','ZAB'),(9377,1931,'Amurskaya oblast','AMU'),(9378,1931,'Arkhangel&#039;skaya oblast','ARK'),(9379,1931,'Astrakhanskaya oblast','AST'),(9380,1931,'Belgorodskaya oblast','BEL'),(9381,1931,'Bryanskaya oblast','BRY'),(9382,1931,'Chelyabinskaya oblast','CHE'),(9383,1931,'Irkutskaya oblast','IRK'),(9384,1931,'Ivanovskaya oblast','IVA'),(9385,1931,'Kaliningradskaya oblast','KGD'),(9386,1931,'Kaluzhskaya oblast','KLU'),(9387,1931,'Kemerovskaya oblast','KEM'),(9388,1931,'Kirovskaya oblast','KIR'),(9389,1931,'Kostromskaya oblast','KOS'),(9390,1931,'Kurganskaya oblast','KGN'),(9391,1931,'Kurskaya oblast','KRS'),(9392,1931,'Leningradskaya oblast','LEN'),(9393,1931,'Lipetskaya oblast','LIP'),(9394,1931,'Magadanskaya oblast','MAG'),(9395,1931,'Moskovskaya oblast','MOS'),(9396,1931,'Murmanskaya oblast','MUR'),(9397,1931,'Nizhegorodskaya oblast','NIZ'),(9398,1931,'Novgorodskaya oblast','NGR'),(9399,1931,'Novosibirskaya oblast','NVS'),(9400,1931,'Omskaya oblast','OMS'),(9401,1931,'Orenburgskaya oblast','ORE'),(9402,1931,'Orlovskaya oblast','ORL'),(9403,1931,'Penzenskaya oblast','PNZ'),(9404,1931,'Pskovskaya oblast','PSK'),(9405,1931,'Rostovskaya oblast','ROS'),(9406,1931,'Ryazanskaya oblast','RYA'),(9407,1931,'Sakhalinskaya oblast','SAK'),(9408,1931,'Samarskaya oblast','SAM'),(9409,1931,'Saratovskaya oblast','SAR'),(9410,1931,'Smolenskaya oblast','SMO'),(9411,1931,'Sverdlovskaya oblast','SVE'),(9412,1931,'Tambovskaya oblast','TAM'),(9413,1931,'Tomskaya oblast','TOM'),(9414,1931,'Tul&#039;skaya oblast','TUL'),(9415,1931,'Tverskaya oblast','TVE'),(9416,1931,'Tyumenskaya oblast','TYU'),(9417,1931,'Ul&#039;yanovskaya oblast','ULY'),(9418,1931,'Vladimirskaya oblast','VLA'),(9419,1931,'Volgogradskaya oblast','VGG'),(9420,1931,'Vologodskaya oblast','VLG'),(9421,1931,'Voronezhskaya oblast','VOR'),(9422,1931,'Yaroslavskaya oblast','YAR'),(9423,1931,'Moskva','MOW'),(9424,1931,'Sankt-Peterburg','SPE'),(9425,1931,'Yevreyskaya avtonomnaya oblast','YEV'),(9426,1931,'Chukotskiy avtonomnyy okrug','CHU'),(9427,1931,'Khanty-Mansiyskiy avtonomnyy okrug-Yugra','KHM'),(9428,1931,'Nenetskiy avtonomnyy okrug','NEN'),(9429,1931,'Yamalo-Nenetskiy avtonomnyy okrug','YAN'),(9430,1932,'City of Kigali','01'),(9431,1932,'Eastern','02'),(9432,1932,'Northern','03'),(9433,1932,'Western','04'),(9434,1932,'Southern','05'),(9435,1933,'Al Bāḩah','11'),(9436,1933,'Al Ḩudūd ash Shamālīyah','08'),(9437,1933,'Al Jawf','12'),(9438,1933,'Al Madīnah al Munawwarah','03'),(9439,1933,'Al Qaşīm','05'),(9440,1933,'Ar Riyāḑ','01'),(9441,1933,'Ash Sharqīyah','04'),(9442,1933,'&#039;Asīr','14'),(9443,1933,'Ḩā&#039;il','06'),(9444,1933,'Jāzān','09'),(9445,1933,'Makkah al Mukarramah','02'),(9446,1933,'Najrān','10'),(9447,1933,'Tabūk','07'),(9448,1934,'Capital Territory (Honiara)','CT'),(9449,1934,'Central','CE'),(9450,1934,'Choiseul','CH'),(9451,1934,'Guadalcanal','GU'),(9452,1934,'Isabel','IS'),(9453,1934,'Makira-Ulawa','MK'),(9454,1934,'Malaita','ML'),(9455,1934,'Rennell and Bellona','RB'),(9456,1934,'Temotu','TE'),(9457,1934,'Western','WE'),(9458,1935,'Anse aux Pins','01'),(9459,1935,'Anse Boileau','02'),(9460,1935,'Anse Etoile','03'),(9461,1935,'Anse Royale','05'),(9462,1935,'Au Cap','04'),(9463,1935,'Baie Lazare','06'),(9464,1935,'Baie Sainte Anne','07'),(9465,1935,'Beau Vallon','08'),(9466,1935,'Bel Air','09'),(9467,1935,'Bel Ombre','10'),(9468,1935,'Cascade','11'),(9469,1935,'Glacis','12'),(9470,1935,'Grand Anse Mahe','13'),(9471,1935,'Grand Anse Praslin','14'),(9472,1935,'La Digue','15'),(9473,1935,'English River','16'),(9474,1935,'Les Mamelles','24'),(9475,1935,'Mont Buxton','17'),(9476,1935,'Mont Fleuri','18'),(9477,1935,'Plaisance','19'),(9478,1935,'Pointe Larue','20'),(9479,1935,'Port Glaud','21'),(9480,1935,'Roche Caiman','25'),(9481,1935,'Saint Louis','22'),(9482,1935,'Takamaka','23'),(9483,1936,'Red Sea','RS'),(9484,1936,'Gezira','GZ'),(9485,1936,'Khartoum','KH'),(9486,1936,'Gedaref','GD'),(9487,1936,'River Nile','NR'),(9488,1936,'White Nile','NW'),(9489,1936,'Blue Nile','NB'),(9490,1936,'Northern','NO'),(9491,1936,'West Darfur','DW'),(9492,1936,'West Kordofan','GK'),(9493,1936,'South Darfur','DS'),(9494,1936,'South Kordofan','KS'),(9495,1936,'Kassala','KA'),(9496,1936,'North Darfur','DN'),(9497,1936,'North Kordofan','KN'),(9498,1936,'East Darfur','DE'),(9499,1936,'Sennar','SI'),(9500,1936,'Central Darfur','DC'),(9501,1937,'Blekinge l&auml;n','K'),(9502,1937,'Dalarnas l&auml;n','W'),(9503,1937,'Gotlands l&auml;n','I'),(9504,1937,'G&auml;vleborgs l&auml;n','X'),(9505,1937,'Hallands l&auml;n','N'),(9506,1937,'J&auml;mtlands l&auml;n','Z'),(9507,1937,'J&ouml;nk&ouml;pings l&auml;n','F'),(9508,1937,'Kalmar l&auml;n','H'),(9509,1937,'Kronobergs l&auml;n','G'),(9510,1937,'Norrbottens l&auml;n','BD'),(9511,1937,'Sk&aring;ne l&auml;n','M'),(9512,1937,'Stockholms l&auml;n','AB'),(9513,1937,'S&ouml;dermanlands l&auml;n','D'),(9514,1937,'Uppsala l&auml;n','C'),(9515,1937,'V&auml;rmlands l&auml;n','S'),(9516,1937,'V&auml;sterbottens l&auml;n','AC'),(9517,1937,'V&auml;sternorrlands l&auml;n','Y'),(9518,1937,'V&auml;stmanlands l&auml;n','U'),(9519,1937,'V&auml;stra G&ouml;talands l&auml;n','O'),(9520,1937,'&Ouml;rebro l&auml;n','T'),(9521,1937,'&Ouml;sterg&ouml;tlands l&auml;n','E'),(9522,1938,'Central Singapore','01'),(9523,1938,'North East','02'),(9524,1938,'North West','03'),(9525,1938,'South East','04'),(9526,1938,'South West','05'),(9527,1939,'Ascension','AC'),(9528,1939,'Saint Helena','HL'),(9529,1939,'Tristan da Cunha','TA'),(9530,1940,'Ajdov&scaron;čina','001'),(9531,1940,'Apače','195'),(9532,1940,'Beltinci','002'),(9533,1940,'Benedikt','148'),(9534,1940,'Bistrica ob Sotli','149'),(9535,1940,'Bled','003'),(9536,1940,'Bloke','150'),(9537,1940,'Bohinj','004'),(9538,1940,'Borovnica','005'),(9539,1940,'Bovec','006'),(9540,1940,'Braslovče','151'),(9541,1940,'Brda','007'),(9542,1940,'Brežice','009'),(9543,1940,'Brezovica','008'),(9544,1940,'Cankova','152'),(9545,1940,'Celje','011'),(9546,1940,'Cerklje na Gorenjskem','012'),(9547,1940,'Cerknica','013'),(9548,1940,'Cerkno','014'),(9549,1940,'Cerkvenjak','153'),(9550,1940,'Cirkulane','196'),(9551,1940,'Čren&scaron;ovci','015'),(9552,1940,'Črna na Koro&scaron;kem','016'),(9553,1940,'Črnomelj','017'),(9554,1940,'Destrnik','018'),(9555,1940,'Divača','019'),(9556,1940,'Dobje','154'),(9557,1940,'Dobrepolje','020'),(9558,1940,'Dobrna','155'),(9559,1940,'Dobrova&ndash;Polhov Gradec','021'),(9560,1940,'Dobrovnik','156'),(9561,1940,'Dolenjske Toplice','157'),(9562,1940,'Dol pri Ljubljani','022'),(9563,1940,'Domžale','023'),(9564,1940,'Dornava','024'),(9565,1940,'Dravograd','025'),(9566,1940,'Duplek','026'),(9567,1940,'Gorenja vas&ndash;Poljane','027'),(9568,1940,'Gori&scaron;nica','028'),(9569,1940,'Gorje','207'),(9570,1940,'Gornja Radgona','029'),(9571,1940,'Gornji Grad','030'),(9572,1940,'Gornji Petrovci','031'),(9573,1940,'Grad','158'),(9574,1940,'Grosuplje','032'),(9575,1940,'Hajdina','159'),(9576,1940,'Hoče&ndash;Slivnica','160'),(9577,1940,'Hodo&scaron;','161'),(9578,1940,'Horjul','162'),(9579,1940,'Hrastnik','034'),(9580,1940,'Hrpelje-Kozina','035'),(9581,1940,'Idrija','036'),(9582,1940,'Ig','037'),(9583,1940,'Ilirska Bistrica','038'),(9584,1940,'Ivančna Gorica','039'),(9585,1940,'Izola','040'),(9586,1940,'Jesenice','041'),(9587,1940,'Jezersko','163'),(9588,1940,'Jur&scaron;inci','042'),(9589,1940,'Kamnik','043'),(9590,1940,'Kanal','044'),(9591,1940,'Kidričevo','045'),(9592,1940,'Kobarid','046'),(9593,1940,'Kobilje','047'),(9594,1940,'Kočevje','048'),(9595,1940,'Komen','049'),(9596,1940,'Komenda','164'),(9597,1940,'Koper','050'),(9598,1940,'Kosanjevica na Krki','197'),(9599,1940,'Kostel','165'),(9600,1940,'Kozje','051'),(9601,1940,'Kranj','052'),(9602,1940,'Kranjska Gora','053'),(9603,1940,'Križevci','166'),(9604,1940,'Kr&scaron;ko','054'),(9605,1940,'Kungota','055'),(9606,1940,'Kuzma','056'),(9607,1940,'La&scaron;ko','057'),(9608,1940,'Lenart','058'),(9609,1940,'Lendava','059'),(9610,1940,'Litija','060'),(9611,1940,'Ljubljana','061'),(9612,1940,'Ljubno','062'),(9613,1940,'Ljutomer','063'),(9614,1940,'Logatec','064'),(9615,1940,'Log-Dragomer','208'),(9616,1940,'Lo&scaron;ka Dolina','065'),(9617,1940,'Lo&scaron;ki Potok','066'),(9618,1940,'Lovrenc na Pohorju','167'),(9619,1940,'Luče','067'),(9620,1940,'Lukovica','068'),(9621,1940,'Maj&scaron;perk','069'),(9622,1940,'Makole','198'),(9623,1940,'Maribor','070'),(9624,1940,'Markovci','168'),(9625,1940,'Medvode','071'),(9626,1940,'Menge&scaron;','072'),(9627,1940,'Metlika','073'),(9628,1940,'Mežica','074'),(9629,1940,'Miklavž na Dravskem Polju','169'),(9630,1940,'Miren-Kostanjevica','075'),(9631,1940,'Mirna','212'),(9632,1940,'Mirna Peč','170'),(9633,1940,'Mislinja','076'),(9634,1940,'Mokronog-Trebelno','199'),(9635,1940,'Moravče','077'),(9636,1940,'Moravske Toplice','078'),(9637,1940,'Mozirje','079'),(9638,1940,'Murska Sobota','080'),(9639,1940,'Muta','081'),(9640,1940,'Naklo','082'),(9641,1940,'Nazarje','083'),(9642,1940,'Nova Gorica','084'),(9643,1940,'Novo Mesto','085'),(9644,1940,'Odranci','086'),(9645,1940,'Oplotnica','171'),(9646,1940,'Ormož','087'),(9647,1940,'Osilnica','088'),(9648,1940,'Pesnica','089'),(9649,1940,'Piran','090'),(9650,1940,'Pivka','091'),(9651,1940,'Podčetrtek','092'),(9652,1940,'Podlehnik','172'),(9653,1940,'Podvelka','093'),(9654,1940,'Poljčane','200'),(9655,1940,'Polzela','173'),(9656,1940,'Postojna','094'),(9657,1940,'Prebold','174'),(9658,1940,'Preddvor','095'),(9659,1940,'Prevalje','175'),(9660,1940,'Ptuj','096'),(9661,1940,'Puconci','097'),(9662,1940,'Rače&ndash;Fram','098'),(9663,1940,'Radeče','099'),(9664,1940,'Radenci','100'),(9665,1940,'Radlje ob Dravi','101'),(9666,1940,'Radovljica','102'),(9667,1940,'Ravne na Koro&scaron;kem','103'),(9668,1940,'Razkrižje','176'),(9669,1940,'Rečica ob Savinji','209'),(9670,1940,'Renče-Vogrsko','201'),(9671,1940,'Ribnica','104'),(9672,1940,'Ribnica na Pohorju','177'),(9673,1940,'Roga&scaron;ka Slatina','106'),(9674,1940,'Roga&scaron;ovci','105'),(9675,1940,'Rogatec','107'),(9676,1940,'Ru&scaron;e','108'),(9677,1940,'Selnica ob Dravi','178'),(9678,1940,'Semič','109'),(9679,1940,'Sevnica','110'),(9680,1940,'Sežana','111'),(9681,1940,'Slovenj Gradec','112'),(9682,1940,'Slovenska Bistrica','113'),(9683,1940,'Slovenske Konjice','114'),(9684,1940,'Sodražica','179'),(9685,1940,'Solčava','180'),(9686,1940,'Sredi&scaron;če ob Dravi','202'),(9687,1940,'Star&scaron;e','115'),(9688,1940,'Straža','203'),(9689,1940,'Sveta Ana','181'),(9690,1940,'Sveta Trojica v Slovenskih Goricah','204'),(9691,1940,'Sveti Andraž v Slovenskih Goricah','182'),(9692,1940,'Sveti Jurij','116'),(9693,1940,'Sveti Jurij v Slovenskih Goricah','210'),(9694,1940,'Sveti Tomaž','205'),(9695,1940,'&Scaron;alovci','033'),(9696,1940,'&Scaron;empeter-Vrtojba','183'),(9697,1940,'&Scaron;enčur','117'),(9698,1940,'&Scaron;entilj','118'),(9699,1940,'&Scaron;entjernej','119'),(9700,1940,'&Scaron;entjur','120'),(9701,1940,'&Scaron;entrupert','211'),(9702,1940,'&Scaron;kocjan','121'),(9703,1940,'&Scaron;kofja Loka','122'),(9704,1940,'&Scaron;kofljica','123'),(9705,1940,'&Scaron;marje pri Jel&scaron;ah','124'),(9706,1940,'&Scaron;marje&scaron;ke Toplice','206'),(9707,1940,'&Scaron;martno ob Paki','125'),(9708,1940,'&Scaron;martno pri Litiji','194'),(9709,1940,'&Scaron;o&scaron;tanj','126'),(9710,1940,'&Scaron;tore','127'),(9711,1940,'Tabor','184'),(9712,1940,'Ti&scaron;ina','010'),(9713,1940,'Tolmin','128'),(9714,1940,'Trbovlje','129'),(9715,1940,'Trebnje','130'),(9716,1940,'Trnovska Vas','185'),(9717,1940,'Trzin','186'),(9718,1940,'Tržič','131'),(9719,1940,'Turni&scaron;če','132'),(9720,1940,'Velenje','133'),(9721,1940,'Velika Polana','187'),(9722,1940,'Velike La&scaron;če','134'),(9723,1940,'Veržej','188'),(9724,1940,'Videm','135'),(9725,1940,'Vipava','136'),(9726,1940,'Vitanje','137'),(9727,1940,'Vodice','138'),(9728,1940,'Vojnik','139'),(9729,1940,'Vransko','189'),(9730,1940,'Vrhnika','140'),(9731,1940,'Vuzenica','141'),(9732,1940,'Zagorje ob Savi','142'),(9733,1940,'Zavrč','143'),(9734,1940,'Zreče','144'),(9735,1940,'Žalec','190'),(9736,1940,'Železniki','146'),(9737,1940,'Žetale','191'),(9738,1940,'Žiri','147'),(9739,1940,'Žirovnica','192'),(9740,1940,'Žužemberk','193'),(9741,1940,'Ankaran','213'),(9742,1942,'Banskobystrick&yacute; kraj','BC'),(9743,1942,'Bratislavsk&yacute; kraj','BL'),(9744,1942,'Ko&scaron;ick&yacute; kraj','KI'),(9745,1942,'Nitriansky kraj','NI'),(9746,1942,'Pre&scaron;ovsk&yacute; kraj','PV'),(9747,1942,'Trenčiansky kraj','TC'),(9748,1942,'Trnavsk&yacute; kraj','TA'),(9749,1942,'Žilinsk&yacute; kraj','ZI'),(9750,1943,'Western Area (Freetown)','W'),(9751,1943,'Eastern Area','E'),(9752,1943,'Northern Area','N'),(9753,1943,'Southern Area','S'),(9754,1944,'Acquaviva','01'),(9755,1944,'Borgo Maggiore','06'),(9756,1944,'Chiesanuova','02'),(9757,1944,'Domagnano','03'),(9758,1944,'Faetano','04'),(9759,1944,'Fiorentino','05'),(9760,1944,'Montegiardino','08'),(9761,1944,'San Marino','07'),(9762,1944,'Serravalle','09'),(9763,1945,'Dakar','DK'),(9764,1945,'Diourbel','DB'),(9765,1945,'Fatick','FK'),(9766,1945,'Kaffrine','KA'),(9767,1945,'Kaolack','KL'),(9768,1945,'K&eacute;dougou','KE'),(9769,1945,'Kolda','KD'),(9770,1945,'Louga','LG'),(9771,1945,'Matam','MT'),(9772,1945,'Saint-Louis','SL'),(9773,1945,'S&eacute;dhiou','SE'),(9774,1945,'Tambacounda','TC'),(9775,1945,'Thi&egrave;s','TH'),(9776,1945,'Ziguinchor','ZG'),(9777,1946,'Awdal','AW'),(9778,1946,'Bakool','BK'),(9779,1946,'Banaadir','BN'),(9780,1946,'Bari','BR'),(9781,1946,'Bay','BY'),(9782,1946,'Galguduud','GA'),(9783,1946,'Gedo','GE'),(9784,1946,'Hiiraan','HI'),(9785,1946,'Jubbada Dhexe','JD'),(9786,1946,'Jubbada Hoose','JH'),(9787,1946,'Mudug','MU'),(9788,1946,'Nugaal','NU'),(9789,1946,'Sanaag','SA'),(9790,1946,'Shabeellaha Dhexe','SD'),(9791,1946,'Shabeellaha Hoose','SH'),(9792,1946,'Sool','SO'),(9793,1946,'Togdheer','TO'),(9794,1946,'Woqooyi Galbeed','WO'),(9795,1947,'Brokopondo','BR'),(9796,1947,'Commewijne','CM'),(9797,1947,'Coronie','CR'),(9798,1947,'Marowijne','MA'),(9799,1947,'Nickerie','NI'),(9800,1947,'Para','PR'),(9801,1947,'Paramaribo','PM'),(9802,1947,'Saramacca','SA'),(9803,1947,'Sipaliwini','SI'),(9804,1947,'Wanica','WA'),(9805,1948,'Central Equatoria','EC'),(9806,1948,'Eastern Equatoria','EE'),(9807,1948,'Jonglei','JG'),(9808,1948,'Lakes','LK'),(9809,1948,'Northern Bahr el Ghazal','BN'),(9810,1948,'Unity','UY'),(9811,1948,'Upper Nile','NU'),(9812,1948,'Warrap','WR'),(9813,1948,'Western Bahr el Ghazal','BW'),(9814,1948,'Western Equatoria','EW'),(9815,1949,'Pr&iacute;ncipe','P'),(9816,1949,'S&atilde;o Tom&eacute;','S'),(9817,1950,'Ahuachap&aacute;n','AH'),(9818,1950,'Caba&ntilde;as','CA'),(9819,1950,'Cuscatl&aacute;n','CU'),(9820,1950,'Chalatenango','CH'),(9821,1950,'La Libertad','LI'),(9822,1950,'La Paz','PA'),(9823,1950,'La Uni&oacute;n','UN'),(9824,1950,'Moraz&aacute;n','MO'),(9825,1950,'San Miguel','SM'),(9826,1950,'San Salvador','SS'),(9827,1950,'Santa Ana','SA'),(9828,1950,'San Vicente','SV'),(9829,1950,'Sonsonate','SO'),(9830,1950,'Usulut&aacute;n','US'),(9831,1952,'Al Ḩasakah','HA'),(9832,1952,'Al Lādhiqīyah','LA'),(9833,1952,'Al Qunayţirah','QU'),(9834,1952,'Ar Raqqah','RA'),(9835,1952,'As Suwaydā','SU'),(9836,1952,'Dar&#039;ā','DR'),(9837,1952,'Dayr az Zawr','DY'),(9838,1952,'Dimashq','DI'),(9839,1952,'Ḩalab','HL'),(9840,1952,'Ḩamāh','HM'),(9841,1952,'Ḩimş','HI'),(9842,1952,'Idlib','ID'),(9843,1952,'Rīf Dimashq','RD'),(9844,1952,'Ţarţūs','TA'),(9845,1953,'Hhohho','HH'),(9846,1953,'Lubombo','LU'),(9847,1953,'Manzini','MA'),(9848,1953,'Shiselweni','SH'),(9849,1955,'Batha','BA'),(9850,1955,'Lac','LC'),(9851,1955,'Bahr el Gazel','BG'),(9852,1955,'Borkou','BO'),(9853,1955,'Hadjer Lamis','HL'),(9854,1955,'Ennedi-Est','EE'),(9855,1955,'Ennedi-Ouest','EO'),(9856,1955,'Kanem','KA'),(9857,1955,'Logone-Occidental','LO'),(9858,1955,'Logone-Oriental','LR'),(9859,1955,'Ville de Ndjamena','ND'),(9860,1955,'Mandoul','MA'),(9861,1955,'Mayo-K&eacute;bbi-Ouest','MO'),(9862,1955,'Mayo-K&eacute;bbi-Est','ME'),(9863,1955,'Gu&eacute;ra','GR'),(9864,1955,'Salamat','SA'),(9865,1955,'Moyen-Chari','MC'),(9866,1955,'Chari-Baguirmi','CB'),(9867,1955,'Sila','SI'),(9868,1955,'Tandjil&eacute;','TA'),(9869,1955,'Tibesti','TI'),(9870,1955,'Ouadda&iuml;','OD'),(9871,1955,'Wadi Fira','WF'),(9872,1957,'Centre','C'),(9873,1957,'Kara','K'),(9874,1957,'Maritime','M'),(9875,1957,'Plateaux','P'),(9876,1957,'Savannes','S'),(9877,1958,'Krung Thep Maha Nakhon (Bangkok)','10'),(9878,1958,'Phatthaya','S'),(9879,1958,'Amnat Charoen','37'),(9880,1958,'Ang Thong','15'),(9881,1958,'Bueng Kan','38'),(9882,1958,'Buri Ram','31'),(9883,1958,'Chachoengsao','24'),(9884,1958,'Chai Nat','18'),(9885,1958,'Chaiyaphum','36'),(9886,1958,'Chanthaburi','22'),(9887,1958,'Chiang Mai','50'),(9888,1958,'Chiang Rai','57'),(9889,1958,'Chon Buri','20'),(9890,1958,'Chumphon','86'),(9891,1958,'Kalasin','46'),(9892,1958,'Kamphaeng Phet','62'),(9893,1958,'Kanchanaburi','71'),(9894,1958,'Khon Kaen','40'),(9895,1958,'Krabi','81'),(9896,1958,'Lampang','52'),(9897,1958,'Lamphun','51'),(9898,1958,'Loei','42'),(9899,1958,'Lop Buri','16'),(9900,1958,'Mae Hong Son','58'),(9901,1958,'Maha Sarakham','44'),(9902,1958,'Mukdahan','49'),(9903,1958,'Nakhon Nayok','26'),(9904,1958,'Nakhon Pathom','73'),(9905,1958,'Nakhon Phanom','48'),(9906,1958,'Nakhon Ratchasima','30'),(9907,1958,'Nakhon Sawan','60'),(9908,1958,'Nakhon Si Thammarat','80'),(9909,1958,'Nan','55'),(9910,1958,'Narathiwat','96'),(9911,1958,'Nong Bua Lam Phu','39'),(9912,1958,'Nong Khai','43'),(9913,1958,'Nonthaburi','12'),(9914,1958,'Pathum Thani','13'),(9915,1958,'Pattani','94'),(9916,1958,'Phangnga','82'),(9917,1958,'Phatthalung','93'),(9918,1958,'Phayao','56'),(9919,1958,'Phetchabun','67'),(9920,1958,'Phetchaburi','76'),(9921,1958,'Phichit','66'),(9922,1958,'Phitsanulok','65'),(9923,1958,'Phrae','54'),(9924,1958,'Phra Nakhon Si Ayutthaya','14'),(9925,1958,'Phuket','83'),(9926,1958,'Prachin Buri','25'),(9927,1958,'Prachuap Khiri Khan','77'),(9928,1958,'Ranong','85'),(9929,1958,'Ratchaburi','70'),(9930,1958,'Rayong','21'),(9931,1958,'Roi Et','45'),(9932,1958,'Sa Kaeo','27'),(9933,1958,'Sakon Nakhon','47'),(9934,1958,'Samut Prakan','11'),(9935,1958,'Samut Sakhon','74'),(9936,1958,'Samut Songkhram','75'),(9937,1958,'Saraburi','19'),(9938,1958,'Satun','91'),(9939,1958,'Sing Buri','17'),(9940,1958,'Si Sa Ket','33'),(9941,1958,'Songkhla','90'),(9942,1958,'Sukhothai','64'),(9943,1958,'Suphan Buri','72'),(9944,1958,'Surat Thani','84'),(9945,1958,'Surin','32'),(9946,1958,'Tak','63'),(9947,1958,'Trang','92'),(9948,1958,'Trat','23'),(9949,1958,'Ubon Ratchathani','34'),(9950,1958,'Udon Thani','41'),(9951,1958,'Uthai Thani','61'),(9952,1958,'Uttaradit','53'),(9953,1958,'Yala','95'),(9954,1958,'Yasothon','35'),(9955,1959,'Dushanbe','DU'),(9956,1959,'Kŭhistoni Badakhshon','GB'),(9957,1959,'Khatlon','KT'),(9958,1959,'Sughd','SU'),(9959,1959,'Nohiyahoi Tobei Jumhur&iacute;','RA'),(9960,1961,'Aileu','AL'),(9961,1961,'Ainaro','AN'),(9962,1961,'Baucau','BA'),(9963,1961,'Bobonaro','BO'),(9964,1961,'Cova Lima','CO'),(9965,1961,'D&iacute;li','DI'),(9966,1961,'Ermera','ER'),(9967,1961,'Lautem','LA'),(9968,1961,'Liqui&ccedil;a','LI'),(9969,1961,'Manatuto','MT'),(9970,1961,'Manufahi','MF'),(9971,1961,'Oecussi','OE'),(9972,1961,'Viqueque','VI'),(9973,1962,'Ahal','A'),(9974,1962,'Balkan','B'),(9975,1962,'Daşoguz','D'),(9976,1962,'Lebap','L'),(9977,1962,'Mary','M'),(9978,1962,'Aşgabat','S'),(9979,1963,'B&eacute;ja','31'),(9980,1963,'Ben Arous','13'),(9981,1963,'Bizerte','23'),(9982,1963,'Gab&egrave;s','81'),(9983,1963,'Gafsa','71'),(9984,1963,'Jendouba','32'),(9985,1963,'Kairouan','41'),(9986,1963,'Kasserine','42'),(9987,1963,'K&eacute;bili','73'),(9988,1963,'L&#039;Ariana','12'),(9989,1963,'La Manouba','14'),(9990,1963,'Le Kef','33'),(9991,1963,'Mahdia','53'),(9992,1963,'M&eacute;denine','82'),(9993,1963,'Monastir','52'),(9994,1963,'Nabeul','21'),(9995,1963,'Sfax','61'),(9996,1963,'Sidi Bouzid','43'),(9997,1963,'Siliana','34'),(9998,1963,'Sousse','51'),(9999,1963,'Tataouine','83'),(10000,1963,'Tozeur','72'),(10001,1963,'Tunis','11'),(10002,1963,'Zaghouan','22'),(10003,1964,'&#039;Eua','01'),(10004,1964,'Ha&#039;apai','02'),(10005,1964,'Niuas','03'),(10006,1964,'Tongatapu','04'),(10007,1964,'Vava&#039;u','05'),(10008,1965,'Adana','01'),(10009,1965,'Adiyaman','02'),(10010,1965,'Afyonkarahisar','03'),(10011,1965,'Ağri','04'),(10012,1965,'Aksaray','68'),(10013,1965,'Amasya','05'),(10014,1965,'Ankara','06'),(10015,1965,'Antalya','07'),(10016,1965,'Ardahan','75'),(10017,1965,'Artvin','08'),(10018,1965,'Aydin','09'),(10019,1965,'Balikesir','10'),(10020,1965,'Bartin','74'),(10021,1965,'Batman','72'),(10022,1965,'Bayburt','69'),(10023,1965,'Bilecik','11'),(10024,1965,'Bing&ouml;l','12'),(10025,1965,'Bitlis','13'),(10026,1965,'Bolu','14'),(10027,1965,'Burdur','15'),(10028,1965,'Bursa','16'),(10029,1965,'&Ccedil;anakkale','17'),(10030,1965,'&Ccedil;ankiri','18'),(10031,1965,'&Ccedil;orum','19'),(10032,1965,'Denizli','20'),(10033,1965,'Diyarbakir','21'),(10034,1965,'D&uuml;zce','81'),(10035,1965,'Edirne','22'),(10036,1965,'Elaziğ','23'),(10037,1965,'Erzincan','24'),(10038,1965,'Erzurum','25'),(10039,1965,'Eskişehir','26'),(10040,1965,'Gaziantep','27'),(10041,1965,'Giresun','28'),(10042,1965,'G&uuml;m&uuml;şhane','29'),(10043,1965,'Hakk&acirc;ri','30'),(10044,1965,'Hatay','31'),(10045,1965,'Iğdir','76'),(10046,1965,'Isparta','32'),(10047,1965,'İstanbul','34'),(10048,1965,'İzmir','35'),(10049,1965,'Kahramanmaraş','46'),(10050,1965,'Karab&uuml;k','78'),(10051,1965,'Karaman','70'),(10052,1965,'Kars','36'),(10053,1965,'Kastamonu','37'),(10054,1965,'Kayseri','38'),(10055,1965,'Kirikkale','71'),(10056,1965,'Kirklareli','39'),(10057,1965,'Kirşehir','40'),(10058,1965,'Kilis','79'),(10059,1965,'Kocaeli','41'),(10060,1965,'Konya','42'),(10061,1965,'K&uuml;tahya','43'),(10062,1965,'Malatya','44'),(10063,1965,'Manisa','45'),(10064,1965,'Mardin','47'),(10065,1965,'Mersin','33'),(10066,1965,'Muğla','48'),(10067,1965,'Muş','49'),(10068,1965,'Nevşehir','50'),(10069,1965,'Niğde','51'),(10070,1965,'Ordu','52'),(10071,1965,'Osmaniye','80'),(10072,1965,'Rize','53'),(10073,1965,'Sakarya','54'),(10074,1965,'Samsun','55'),(10075,1965,'Siirt','56'),(10076,1965,'Sinop','57'),(10077,1965,'Sivas','58'),(10078,1965,'Şanliurfa','63'),(10079,1965,'Şirnak','73'),(10080,1965,'Tekirdağ','59'),(10081,1965,'Tokat','60'),(10082,1965,'Trabzon','61'),(10083,1965,'Tunceli','62'),(10084,1965,'Uşak','64'),(10085,1965,'Van','65'),(10086,1965,'Yalova','77'),(10087,1965,'Yozgat','66'),(10088,1965,'Zonguldak','67'),(10089,1966,'Couva-Tabaquite-Talparo','CTT'),(10090,1966,'Diego Martin','DMN'),(10091,1966,'Mayaro-Rio Claro','MRC'),(10092,1966,'Penal-Debe','PED'),(10093,1966,'Princes Town','PRT'),(10094,1966,'Sangre Grande','SGE'),(10095,1966,'San Juan-Laventille','SJL'),(10096,1966,'Siparia','SIP'),(10097,1966,'Tunapuna-Piarco','TUP'),(10098,1966,'Arima','ARI'),(10099,1966,'Chaguanas','CHA'),(10100,1966,'Point Fortin','PTF'),(10101,1966,'Port of Spain','POS'),(10102,1966,'San Fernando','SFO'),(10103,1966,'Tobago','TOB'),(10104,1967,'Funafuti','FUN'),(10105,1967,'Nanumanga','NMG'),(10106,1967,'Nanumea','NMA'),(10107,1967,'Niutao','NIT'),(10108,1967,'Nui','NUI'),(10109,1967,'Nukufetau','NKF'),(10110,1967,'Nukulaelae','NKL'),(10111,1967,'Vaitupu','VAI'),(10112,1968,'Changhua','CHA'),(10113,1968,'Chiayi','CYI'),(10114,1968,'Chiayi','CYQ'),(10115,1968,'Hsinchu','HSZ'),(10116,1968,'Hsinchu','HSQ'),(10117,1968,'Hualien','HUA'),(10118,1968,'Kaohsiung','KHH'),(10119,1968,'Keelung','KEE'),(10120,1968,'Kinmen','KIN'),(10121,1968,'Lienchiang','LIE'),(10122,1968,'Miaoli','MIA'),(10123,1968,'Nantou','NAN'),(10124,1968,'New Taipei','NWT'),(10125,1968,'Penghu','PEN'),(10126,1968,'Pingtung','PIF'),(10127,1968,'Taichung','TXG'),(10128,1968,'Tainan','TNN'),(10129,1968,'Taipei','TPE'),(10130,1968,'Taitung','TTT'),(10131,1968,'Taoyuan','TAO'),(10132,1968,'Yilan','ILA'),(10133,1968,'Yunlin','YUN'),(10134,1969,'Arusha','01'),(10135,1969,'Dar es Salaam','02'),(10136,1969,'Dodoma','03'),(10137,1969,'Geita','27'),(10138,1969,'Iringa','04'),(10139,1969,'Kagera','05'),(10140,1969,'Pemba North','06'),(10141,1969,'Zanzibar North','07'),(10142,1969,'Katavi','28'),(10143,1969,'Kigoma','08'),(10144,1969,'Kilimanjaro','09'),(10145,1969,'Pemba South','10'),(10146,1969,'Zanzibar South','11'),(10147,1969,'Lindi','12'),(10148,1969,'Manyara','26'),(10149,1969,'Mara','13'),(10150,1969,'Mbeya','14'),(10151,1969,'Zanzibar West','15'),(10152,1969,'Morogoro','16'),(10153,1969,'Mtwara','17'),(10154,1969,'Mwanza','18'),(10155,1969,'Njombe','29'),(10156,1969,'Coast','19'),(10157,1969,'Rukwa','20'),(10158,1969,'Ruvuma','21'),(10159,1969,'Shinyanga','22'),(10160,1969,'Simiyu','30'),(10161,1969,'Singida','23'),(10162,1969,'Tabora','24'),(10163,1969,'Tanga','25'),(10164,1970,'Cherkaska oblast','71'),(10165,1970,'Chernihivska oblast','74'),(10166,1970,'Chernivetska oblast','77'),(10167,1970,'Dnipropetrovska oblast','12'),(10168,1970,'Donetska oblast','14'),(10169,1970,'Ivano-Frankivska oblast','26'),(10170,1970,'Kharkivska oblast','63'),(10171,1970,'Khersonska oblast','65'),(10172,1970,'Khmelnytska oblast','68'),(10173,1970,'Kirovohradska oblast','35'),(10174,1970,'Kyivska oblast','32'),(10175,1970,'Luhanska oblast','09'),(10176,1970,'Lvivska oblast','46'),(10177,1970,'Mykolaivska oblast','48'),(10178,1970,'Odeska oblast','51'),(10179,1970,'Poltavska oblast','53'),(10180,1970,'Rivnenska oblast','56'),(10181,1970,'Sumska oblast','59'),(10182,1970,'Ternopilska oblast','61'),(10183,1970,'Vinnytska oblast','05'),(10184,1970,'Volynska oblast','07'),(10185,1970,'Zakarpatska oblast','21'),(10186,1970,'Zaporizka oblast','23'),(10187,1970,'Zhytomyrska oblast','18'),(10188,1970,'Avtonomna Respublika Krym','43'),(10189,1970,'Kyiv','30'),(10190,1970,'Sevastopol','40'),(10191,1971,'Central','C'),(10192,1971,'Eastern','E'),(10193,1971,'Northern','N'),(10194,1971,'Western','W'),(10195,1973,'Alabama','AL'),(10196,1973,'Alaska','AK'),(10197,1973,'Arizona','AZ'),(10198,1973,'Arkansas','AR'),(10199,1973,'California','CA'),(10200,1973,'Colorado','CO'),(10201,1973,'Connecticut','CT'),(10202,1973,'Delaware','DE'),(10203,1973,'Florida','FL'),(10204,1973,'Georgia','GA'),(10205,1973,'Hawaii','HI'),(10206,1973,'Idaho','ID'),(10207,1973,'Illinois','IL'),(10208,1973,'Indiana','IN'),(10209,1973,'Iowa','IA'),(10210,1973,'Kansas','KS'),(10211,1973,'Kentucky','KY'),(10212,1973,'Louisiana','LA'),(10213,1973,'Maine','ME'),(10214,1973,'Maryland','MD'),(10215,1973,'Massachusetts','MA'),(10216,1973,'Michigan','MI'),(10217,1973,'Minnesota','MN'),(10218,1973,'Mississippi','MS'),(10219,1973,'Missouri','MO'),(10220,1973,'Montana','MT'),(10221,1973,'Nebraska','NE'),(10222,1973,'Nevada','NV'),(10223,1973,'New Hampshire','NH'),(10224,1973,'New Jersey','NJ'),(10225,1973,'New Mexico','NM'),(10226,1973,'New York','NY'),(10227,1973,'North Carolina','NC'),(10228,1973,'North Dakota','ND'),(10229,1973,'Ohio','OH'),(10230,1973,'Oklahoma','OK'),(10231,1973,'Oregon','OR'),(10232,1973,'Pennsylvania','PA'),(10233,1973,'Rhode Island','RI'),(10234,1973,'South Carolina','SC'),(10235,1973,'South Dakota','SD'),(10236,1973,'Tennessee','TN'),(10237,1973,'Texas','TX'),(10238,1973,'Utah','UT'),(10239,1973,'Vermont','VT'),(10240,1973,'Virginia','VA'),(10241,1973,'Washington','WA'),(10242,1973,'West Virginia','WV'),(10243,1973,'Wisconsin','WI'),(10244,1973,'Wyoming','WY'),(10245,1973,'District of Columbia','DC'),(10246,1973,'American Samoa','AS'),(10247,1973,'Guam','GU'),(10248,1973,'Northern Mariana Islands','MP'),(10249,1973,'Puerto Rico','PR'),(10250,1973,'United States Minor Outlying Islands','UM'),(10251,1973,'Virgin Islands','VI'),(10252,1974,'Artigas','AR'),(10253,1974,'Canelones','CA'),(10254,1974,'Cerro Largo','CL'),(10255,1974,'Colonia','CO'),(10256,1974,'Durazno','DU'),(10257,1974,'Flores','FS'),(10258,1974,'Florida','FD'),(10259,1974,'Lavalleja','LA'),(10260,1974,'Maldonado','MA'),(10261,1974,'Montevideo','MO'),(10262,1974,'Paysand&uacute;','PA'),(10263,1974,'R&iacute;o Negro','RN'),(10264,1974,'Rivera','RV'),(10265,1974,'Rocha','RO'),(10266,1974,'Salto','SA'),(10267,1974,'San Jos&eacute;','SJ'),(10268,1974,'Soriano','SO'),(10269,1974,'Tacuaremb&oacute;','TA'),(10270,1974,'Treinta y Tres','TT'),(10271,1975,'Toshkent','TK'),(10272,1975,'Andijon','AN'),(10273,1975,'Buxoro','BU'),(10274,1975,'Farg&lsquo;ona','FA'),(10275,1975,'Jizzax','JI'),(10276,1975,'Namangan','NG'),(10277,1975,'Navoiy','NW'),(10278,1975,'Qashqadaryo','QA'),(10279,1975,'Samarqand','SA'),(10280,1975,'Sirdaryo','SI'),(10281,1975,'Surxondaryo','SU'),(10282,1975,'Toshkent','TO'),(10283,1975,'Xorazm','XO'),(10284,1975,'Qoraqalpog&lsquo;iston Respublikasi','QR'),(10285,1977,'Charlotte','01'),(10286,1977,'Grenadines','06'),(10287,1977,'Saint Andrew','02'),(10288,1977,'Saint David','03'),(10289,1977,'Saint George','04'),(10290,1977,'Saint Patrick','05'),(10291,1978,'Dependencias Federales','W'),(10292,1978,'Distrito Federal','A'),(10293,1978,'Amazonas','Z'),(10294,1978,'Anzo&aacute;tegui','B'),(10295,1978,'Apure','C'),(10296,1978,'Aragua','D'),(10297,1978,'Barinas','E'),(10298,1978,'Bol&iacute;var','F'),(10299,1978,'Carabobo','G'),(10300,1978,'Cojedes','H'),(10301,1978,'Delta Amacuro','Y'),(10302,1978,'Falc&oacute;n','I'),(10303,1978,'Gu&aacute;rico','J'),(10304,1978,'Lara','K'),(10305,1978,'M&eacute;rida','L'),(10306,1978,'Miranda','M'),(10307,1978,'Monagas','N'),(10308,1978,'Nueva Esparta','O'),(10309,1978,'Portuguesa','P'),(10310,1978,'Sucre','R'),(10311,1978,'T&aacute;chira','S'),(10312,1978,'Trujillo','T'),(10313,1978,'Vargas','X'),(10314,1978,'Yaracuy','U'),(10315,1978,'Zulia','V'),(10316,1981,'An Giang','44'),(10317,1981,'B&agrave; Rịa&ndash;Vũng T&agrave;u','43'),(10318,1981,'Bac Giang','54'),(10319,1981,'Bac Kạn','53'),(10320,1981,'Bac Li&ecirc;u','55'),(10321,1981,'Bac Ninh','56'),(10322,1981,'Ben Tre','50'),(10323,1981,'B&igrave;nh Định','31'),(10324,1981,'B&igrave;nh Dương','57'),(10325,1981,'B&igrave;nh Phước','58'),(10326,1981,'B&igrave;nh Thuận','40'),(10327,1981,'C&agrave; Mau','59'),(10328,1981,'Cao Bằng','04'),(10329,1981,'Đak Lak','33'),(10330,1981,'Đak N&ocirc;ng','72'),(10331,1981,'Điện Bi&ecirc;n','71'),(10332,1981,'Đong Nai','39'),(10333,1981,'Đong Th&aacute;p','45'),(10334,1981,'Gia Lai','30'),(10335,1981,'H&agrave; Giang','03'),(10336,1981,'H&agrave; Nam','63'),(10337,1981,'H&agrave; Tĩnh','23'),(10338,1981,'Hai Dương','61'),(10339,1981,'Hậu Giang','73'),(10340,1981,'H&ograve;a B&igrave;nh','14'),(10341,1981,'Hưng Y&ecirc;n','66'),(10342,1981,'Kh&aacute;nh H&ograve;a','34'),(10343,1981,'Ki&ecirc;n Giang','47'),(10344,1981,'Kon Tum','28'),(10345,1981,'Lai Ch&acirc;u','01'),(10346,1981,'L&acirc;m Đong','35'),(10347,1981,'Lạng Sơn','09'),(10348,1981,'L&agrave;o Cai','02'),(10349,1981,'Long An','41'),(10350,1981,'Nam Định','67'),(10351,1981,'Nghệ An','22'),(10352,1981,'Ninh B&igrave;nh','18'),(10353,1981,'Ninh Thuận','36'),(10354,1981,'Ph&uacute; Thọ','68'),(10355,1981,'Ph&uacute; Y&ecirc;n','32'),(10356,1981,'Quảng B&igrave;nh','24'),(10357,1981,'Quảng Nam','27'),(10358,1981,'Quảng Ng&atilde;i','29'),(10359,1981,'Quảng Ninh','13'),(10360,1981,'Quảng Trị','25'),(10361,1981,'S&oacute;c Trăng','52'),(10362,1981,'Sơn La','05'),(10363,1981,'T&acirc;y Ninh','37'),(10364,1981,'Th&aacute;i B&igrave;nh','20'),(10365,1981,'Th&aacute;i Nguy&ecirc;n','69'),(10366,1981,'Thanh H&oacute;a','21'),(10367,1981,'Thừa Thi&ecirc;n&ndash;Huế','26'),(10368,1981,'Tien Giang','46'),(10369,1981,'Tr&agrave; Vinh','51'),(10370,1981,'Tuy&ecirc;n Quang','07'),(10371,1981,'Vĩnh Long','49'),(10372,1981,'Vĩnh Ph&uacute;c','70'),(10373,1981,'Y&ecirc;n B&aacute;i','06'),(10374,1981,'Can Thơ','CT'),(10375,1981,'Đ&agrave; Nang','DN'),(10376,1981,'H&agrave; Nội','HN'),(10377,1981,'Hai Ph&ograve;ng','HP'),(10378,1981,'Ho Ch&iacute; Minh','SG'),(10379,1982,'Malampa','MAP'),(10380,1982,'P&eacute;nama','PAM'),(10381,1982,'Sanma','SAM'),(10382,1982,'Sh&eacute;fa','SEE'),(10383,1982,'Taf&eacute;a','TAE'),(10384,1982,'Torba','TOB'),(10385,1983,'Alo','AL'),(10386,1983,'Sigave','SG'),(10387,1983,'Uvea','UV'),(10388,1984,'A&#039;ana','AA'),(10389,1984,'Aiga-i-le-Tai','AL'),(10390,1984,'Atua','AT'),(10391,1984,'Fa&#039;asaleleaga','FA'),(10392,1984,'Gaga&#039;emauga','GE'),(10393,1984,'Gagaifomauga','GI'),(10394,1984,'Palauli','PA'),(10395,1984,'Satupa&#039;itea','SA'),(10396,1984,'Tuamasaga','TU'),(10397,1984,'Va&#039;a-o-Fonoti','VF'),(10398,1984,'Vaisigano','VS'),(10399,1985,'Amānat al &lsquo;Āşimah','SA'),(10400,1985,'Abyān','AB'),(10401,1985,'&lsquo;Adan','AD'),(10402,1985,'Aḑ Ḑāli&lsquo;','DA'),(10403,1985,'Al Bayḑā&rsquo;','BA'),(10404,1985,'Al Ḩudaydah','HU'),(10405,1985,'Al Jawf','JA'),(10406,1985,'Al Mahrah','MR'),(10407,1985,'Al Maḩwīt','MW'),(10408,1985,'&lsquo;Amrān','AM'),(10409,1985,'Arkhabīl Suquţr&aacute;','SU'),(10410,1985,'Dhamār','DH'),(10411,1985,'Ḩaḑramawt','HD'),(10412,1985,'Ḩajjah','HJ'),(10413,1985,'Ibb','IB'),(10414,1985,'Laḩij','LA'),(10415,1985,'Ma&rsquo;rib','MA'),(10416,1985,'Raymah','RA'),(10417,1985,'Şāʻdah','SD'),(10418,1985,'Şanʻā&rsquo;','SN'),(10419,1985,'Shabwah','SH'),(10420,1985,'Tā&lsquo;izz','TA'),(10421,1987,'Eastern Cape','EC'),(10422,1987,'Free State','FS'),(10423,1987,'Gauteng','GT'),(10424,1987,'KwaZulu-Natal','NL'),(10425,1987,'Limpopo','LP'),(10426,1987,'Mpumalanga','MP'),(10427,1987,'Northern Cape','NC'),(10428,1987,'North West','NW'),(10429,1987,'Western Cape','WC'),(10430,1988,'Central','02'),(10431,1988,'Copperbelt','08'),(10432,1988,'Eastern','03'),(10433,1988,'Luapula','04'),(10434,1988,'Lusaka','09'),(10435,1988,'Northern','05'),(10436,1988,'North-Western','06'),(10437,1988,'Southern','07'),(10438,1988,'Western','01'),(10439,1988,'Muchinga','10'),(10440,1989,'Bulawayo','BU'),(10441,1989,'Harare','HA'),(10442,1989,'Manicaland','MA'),(10443,1989,'Mashonaland Central','MC'),(10444,1989,'Mashonaland East','ME'),(10445,1989,'Mashonaland West','MW'),(10446,1989,'Masvingo','MV'),(10447,1989,'Matabeleland North','MN'),(10448,1989,'Matabeleland South','MS'),(10449,1989,'Midlands','MI');
/*!40000 ALTER TABLE `core_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_resource`
--

DROP TABLE IF EXISTS `core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_resource` (
  `resource_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(300) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_resource`
--

LOCK TABLES `core_resource` WRITE;
/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_users`
--

DROP TABLE IF EXISTS `core_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_users`
--

LOCK TABLES `core_users` WRITE;
/*!40000 ALTER TABLE `core_users` DISABLE KEYS */;
INSERT INTO `core_users` VALUES (1,'joncoleman','Jon','Coleman','Jon Coleman','jon.coleman@example.com',NULL,'2017-09-18 16:24:39','2017-09-20 13:28:00');
/*!40000 ALTER TABLE `core_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `host_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_name` varchar(100) NOT NULL,
  `hypervisor` varchar(45) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`host_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_ip_relation`
--

DROP TABLE IF EXISTS `host_ip_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_ip_relation` (
  `host_ip_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_id` int(10) unsigned DEFAULT NULL,
  `ip_id` int(10) unsigned DEFAULT NULL,
  `mgmt_ip` varchar(45) DEFAULT NULL,
  `host_ip` varchar(45) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`host_ip_relation_id`),
  UNIQUE KEY `host_ip_index` (`host_id`,`ip_id`),
  KEY `ip_id` (`ip_id`),
  CONSTRAINT `host_ip_relations_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `host_ip_relations_ibfk_2` FOREIGN KEY (`ip_id`) REFERENCES `ip` (`ip_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_ip_relation`
--

LOCK TABLES `host_ip_relation` WRITE;
/*!40000 ALTER TABLE `host_ip_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_ip_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `inventory_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `stock` int(10) NOT NULL,
  `deployed` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip`
--

DROP TABLE IF EXISTS `ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip` (
  `ip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blocks_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(30) NOT NULL,
  `ip_version` varchar(10) NOT NULL,
  `reservation_status` varchar(45) DEFAULT NULL,
  `interface` varchar(45) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ip_id`),
  KEY `fk_ip_blocks1_idx` (`blocks_id`),
  CONSTRAINT `fk_ip_blocks1` FOREIGN KEY (`blocks_id`) REFERENCES `blocks` (`blocks_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip`
--

LOCK TABLES `ip` WRITE;
/*!40000 ALTER TABLE `ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_documents_category`
--

DROP TABLE IF EXISTS `kb_documents_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_documents_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_documents_category`
--

LOCK TABLES `kb_documents_category` WRITE;
/*!40000 ALTER TABLE `kb_documents_category` DISABLE KEYS */;
INSERT INTO `kb_documents_category` VALUES (1,'Onboarding','2017-09-18 16:32:00','2017-09-18 16:32:00'),(2,'Engineering','2017-09-18 16:32:09','2017-09-18 16:32:09'),(3,'DevOps','2017-09-18 16:32:16','2017-09-18 16:32:16'),(4,'Development','2017-09-18 16:32:23','2017-09-18 16:32:23'),(5,'Support','2017-09-18 16:32:34','2017-09-18 16:32:34'),(6,'Policies','2017-09-18 16:32:42','2017-09-18 16:32:42'),(7,'Hardware','2017-09-18 16:32:58','2017-09-18 16:32:58');
/*!40000 ALTER TABLE `kb_documents_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_documents_content`
--

DROP TABLE IF EXISTS `kb_documents_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_documents_content` (
  `kb_documents_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kb_documents_content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_documents_content`
--

LOCK TABLES `kb_documents_content` WRITE;
/*!40000 ALTER TABLE `kb_documents_content` DISABLE KEYS */;
INSERT INTO `kb_documents_content` VALUES (6,'yo yo o','2017-09-19 17:38:56','2017-09-21 14:34:56'),(7,'<h3>iPhone</h3>\r\n<ul>\r\n<li>Settings > Mail > Accounts > Add Account</li>\r\n<li>Google</li>\r\n<li>Sign in with @example.com email and password</li>\r\n<li>Back to Accounts, Click on your account, then account again.</li>\r\n<li>Incoming Mail Server Settings:</li>\r\n\r\n<li>Host Name: </li>\r\n<li>User Name: Your email address</li>\r\n<li>Password: Your email password</li>\r\n\r\n<li>Outgoing SMTP Settings:</li>\r\n<li>Switch \"Server\" to ON position</li>\r\n<li>Host Name: </li>\r\n<li>No username or password required</li>\r\n<li>Switch \"Use SSL\" to ON position</li>\r\n<li>Server Port: 587</li>\r\n\r\n<p><h3>Android</h3></p>','2017-09-20 20:40:41','2017-09-20 20:41:17'),(8,'<p><h3>A customer hostname should look like this:</h3></p>\r\n \r\n<p><b>Remote Site | Dedicated IP | Assigned IP</b></p>\r\n \r\n<p><h3>A Channel Partner hostname should look like this: (OppoBox example)</h3></p>\r\n \r\n<p><h4></h4></p>\r\n \r\n<p><b>Server ID | Company Name| Dedicated IP | Assigned IP</b></p>\r\n \r\n<p><h4>Oppoboxâ€™s WHMCS</h4></p>\r\n \r\n<p><b>Server ID | Dedicated IP</b></p>\r\n \r\n<p>Additionally, moving forward when sending in a provisioning ticket for a Channel Partner, the sales team will also now add in the Channel Partner server ID under the corresponding server ID. </p>\r\n','2017-09-21 14:45:47','2017-09-21 14:55:28'),(9,'Run this command in terminal:\r\n\r\n<p><i>ssh-keygen -t rsa</i></p>\r\n\r\n<p>When asked to enter a file you can just hit enter for the default file placement (.ssh/id_rsa)\r\nYou can also choose to have a passphrase for extra protection but it is not necessary.</p>\r\n\r\n<p>To view your new keys:</p>\r\n\r\n<p>Public:<br>\r\n<i>cat .ssh/id_rsa.pub</i></p>\r\n\r\n<p>Private:<br>\r\n<i>cat .ssh/id_rsa</i></p>\r\n','2017-09-21 14:50:14','2017-09-21 14:51:19'),(10,'&lt;p&gt;&lt;b&gt;Overview:&lt;/b&gt; The following are some of the most basic network verification commands that can be used to verify Network Interfaces.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;ping&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most popular utility that is used by network engineers for quick reachability verification is the ping command. At its most simple, the ping command is used to send a group of five Internet Control Message Protocol (ICMP) packets to a destination which in turn will return five packets (should reachability exist). Since a normal routing or switching device typically has many outgoing interfaces, the command can be extended and customized with a number of different options, including source interface, count, datagram size, timeout, pattern, and Type of Service (ToS), among others.&lt;/p&gt;\r\n\r\n&lt;p&gt;Example:&lt;br&gt;\r\nping google.com &lt;br&gt;\r\nping 123.456.789.1 &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;traceroute&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Another one of the commonly used tools for engineers to verify correct network operation. The traceroute command will send a number of packets out to determine the path from source to destination, which is done by taking advantage of the Time to Live (TTL) functionality built into the IP header. The TTL field allows a source to set the number of &ldquo;hops&rdquo; that a packet is allowed to travel before being dropped. The typical reaction of a device that is processing a packet where the TTL has expired is to return a ICMP port unreachable message; the traceroute utility receives this packet and notes the source address. The traceroute utility will continue sending packets until the source address matches the intended destination device starting with a TTL set to 1, then 2, then 3 and so on. &lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt;  &lt;i&gt;show ip interface brief&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This command is used to provide a concise output of the current status of the local IP interfaces and their status. Important information to look for includes the interface, the interface IP address, status (physical) and protocol status (data link). &lt;p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;show interface&lt;/i&gt;&lt;/p&gt; \r\n\r\n&lt;p&gt;More detailed then show ip interface brief. Show interface displays additional information, including the interface IP subnet mask, bandwidth settings, delay settings, queuing configuration, data link protocol information (in this case duplex, ARP type), and a number of different counters that can be used to monitor the interface.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;show ip interface&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Full version of the show ip interface brief command and includes all of the settings that are IP specific, including IP address and mask information, access list configuration (ACL), type of switching used (how the IP traffic is processed by the device), and compression settings, among others.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;show ip arp&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Focuses on the information obtained from the Address Resolution Protocol (ARP) that is used to map IP addresses to MAC addresses. These mappings are used by the device when traffic is received and is destined for a local host. The device will look up the MAC address as it requires it to send the traffic to the host on the local network.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;show ip protocols&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Used when a dynamic routing protocol is being run on the device. The output from this command can be used to verify that the routing protocol configuration is being processed as expected. The exact output from this command depends on the dynamic routing protocol that is configured.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;show ip route&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;A vital command that is used by every engineer; this command is used to display the current content of the IP routing table.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;show logging&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;When a networking device is set up for logging, it can be used for the verification of a number of different things. The show logging command is used to access this log and display it for review.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Command:&lt;/b&gt; &lt;i&gt;nmap&lt;/i&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;it is a useful command to check the available ports, if the host is up &lt;/p&gt;\r\n\r\n&lt;p&gt;Example:&lt;br&gt;\r\nnmap -sn 123.456.789.0/27&lt;/p&gt;\r\n','2017-09-21 15:07:20','2017-09-21 15:07:20'),(11,'&lt;b&gt;Pre Sales:&lt;/b&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Discovery \r\n&lt;li&gt;What is in the inventory\r\n&lt;li&gt;IP Inventory\r\n&lt;li&gt;Gather Requirements\r\n&lt;li&gt;When / Timeline / Deadline \r\n&lt;/ul&gt;\r\n\r\n&lt;b&gt;Post Sales:&lt;/b&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Sales Create Ticket \r\n&lt;li&gt;Tech Create a Project Sheet \r\n&lt;li&gt;Reserve Resources\r\n&lt;li&gt;Remote Site Sheet update/reservation\r\n&lt;li&gt;Inventory [Parts]\r\n&lt;li&gt;IP Inventory\r\n&lt;li&gt;Switch Ports\r\n&lt;/ul&gt;\r\n\r\n&lt;b&gt;Server Configs:&lt;/b&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Chassis installation\r\n&lt;li&gt;CPU\r\n&lt;li&gt;RAM\r\n&lt;li&gt;HDD\r\n&lt;li&gt;Firmware MotherBoard &amp; IPMI\r\n&lt;li&gt;IPMI Bat\r\n&lt;li&gt;IPMI from RS sheet &amp; Config\r\n&lt;li&gt;OS Installation \r\n&lt;li&gt;Server IP configuration\r\n&lt;li&gt;Network Cofing at Remote Sites (router)\r\n&lt;li&gt;Q/A Server Build\r\n&lt;/ul&gt;\r\n\r\n&lt;b&gt;Pre Ship:&lt;/b&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Boxes\r\n&lt;li&gt;Power Cables\r\n&lt;li&gt;Rails\r\n&lt;li&gt;Do we need anything else at the site spare [router...etc]\r\n&lt;li&gt;Equipment install sheet / Direction for a non tech person\r\n&lt;li&gt;Picture before and after packing\r\n&lt;li&gt;Box it \r\n&lt;li&gt;KVM spider \r\n&lt;/ul&gt;\r\n\r\n&lt;b&gt;Ship:&lt;/b&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Shipment Labels\r\n&lt;li&gt;Tickets with DC\r\n&lt;li&gt;Pick Up\r\n&lt;li&gt;Installation Tickets \r\n&lt;li&gt;Photos of the rack pre and post installation\r\n&lt;/ul&gt;\r\n\r\n&lt;b&gt;Provisioning:&lt;/b&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Installation \r\n&lt;li&gt;Check Servers {Remote Hands} memory , cpu , hard disk\r\n&lt;li&gt;WHMCS info update\r\n&lt;li&gt;Audit RS Sheets and IP Sheets\r\n&lt;li&gt;Audit IP Sheets\r\n&lt;/ul&gt;\r\n\r\n&lt;b&gt;Delivery:&lt;/b&gt;\r\n&lt;li&gt;Q&amp;A\r\n&lt;li&gt;Push the ticket back to Sales / Billing Department \r\n&lt;li&gt;Delivery Costs\r\n&lt;/ul&gt;\r\n','2017-09-21 15:21:07','2017-09-21 15:21:07'),(12,'Put all PTR/rDNS requests through this program:\r\n\r\n&lt;p&gt;&lt;h3&gt;http://199.189.254.184/ptr.php&lt;/h3&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;If you have to generate one manually, please email &lt;b&gt;jon.coleman@example.com&lt;/b&gt; with the IP&#039;s, Domains, and Channel partner after you have completed the request&lt;/p&gt;','2017-09-21 15:25:10','2017-09-21 15:25:10'),(13,'<ol>\r\n<li>Optional: switch to the root user so that you donâ€™t have to always type in your password when you make changes: </li>\r\n<p><i>sudo su -</i></p>\r\n\r\n<li>Apache should come preinstalled on your computer. Enable it with the command:</li>\r\n <p><i>apachectl start</i></p>\r\n\r\n<li>Check http://localhost to verify â€œIt works!â€</li>\r\n\r\n<li>Change directories to apache and make a backup of the configuration file. We will be changing the configuration file so it is good practice to make a backup:</li>\r\n <p><i>cd /etc/apache2/</i><br>\r\n <i>cp httpd.conf httpd.conf.bak</i></p>\r\n<li>Next, edit the Apache configuration file:</li>\r\n <p><i>vi httpd.conf</i></p>\r\n<li>Uncomment out the following line:</li>\r\n<p>#LoadModule php5_module libexec/apache2/libphp5.so</p>\r\n\r\n<p><u>Note: There may be other modules that need to be uncommented out depending on what you need for your project.</u></p>\r\n<li>Restart Apache:</li>\r\n <p><i>apachectl restart</i></p>\r\n<li>The default document root is set to /Library/WebServer/Documents. You can verify by using the command:</li>\r\n <p><i>grep DocumentRoot /etc/apache2/httpd.conf</i></p>\r\n\r\n<li>To verify PHP is enabled with Apache, you can create a phpinfo page in this DocumentRoot:</li>\r\n <p><i><pre>echo â€˜<?php phpinfo();â€™ ?> /Library/WebServer/Documents/phpinfo.php</i></pre></p>\r\n\r\n<li>Then go to http://localhost/phpinfo.php to verify that you get a page that has all of the PHP info on it</li>\r\n</ol>\r\n\r\n','2017-09-21 15:34:17','2017-09-21 15:38:03');
/*!40000 ALTER TABLE `kb_documents_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_documents_meta`
--

DROP TABLE IF EXISTS `kb_documents_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_documents_meta` (
  `kb_documents_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `db_title` varchar(255) NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `last_updated_by_id` int(10) unsigned NOT NULL,
  `kb_documents_content_id` int(10) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kb_documents_meta_id`),
  UNIQUE KEY `content_id` (`kb_documents_content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_documents_meta`
--

LOCK TABLES `kb_documents_meta` WRITE;
/*!40000 ALTER TABLE `kb_documents_meta` DISABLE KEYS */;
INSERT INTO `kb_documents_meta` VALUES (6,7,'Engineering Test Now','engineering_test_now',2,1,6,'2017-09-19 17:38:56','2017-09-21 14:35:09'),(7,1,'Setting Up Email On Your Phone','setting_up_email_on_your_phone',2,2,7,'2017-09-20 20:40:41','2017-09-20 20:40:41'),(8,6,'WHMCS Naming Convention','whmcs_naming_convention',2,2,8,'2017-09-21 14:45:47','2017-09-21 14:45:47'),(9,2,'Generate an SSH Key','generate_an_ssh_key',2,2,9,'2017-09-21 14:50:14','2017-09-21 14:50:14'),(10,5,'Basic Commands for Networking and Troubleshooting','basic_commands_for_networking_and_troubleshooting',2,2,10,'2017-09-21 15:07:20','2017-09-21 15:07:20'),(11,2,'Server Deployment Lifecycle','server_deployment_lifecycle',2,2,11,'2017-09-21 15:21:07','2017-09-21 15:21:07'),(12,5,'PTR Request Page','ptr_request_page',2,2,12,'2017-09-21 15:25:10','2017-09-21 15:25:10'),(13,4,'Setup Localhost with Apache and PHP','setup_localhost_with_apache_and_php',2,2,13,'2017-09-21 15:34:17','2017-09-21 15:34:17');
/*!40000 ALTER TABLE `kb_documents_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opersys`
--

DROP TABLE IF EXISTS `opersys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opersys` (
  `opersys_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(45) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`opersys_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opersys`
--

LOCK TABLES `opersys` WRITE;
/*!40000 ALTER TABLE `opersys` DISABLE KEYS */;
/*!40000 ALTER TABLE `opersys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `order_details_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_inventory_id` int(10) unsigned DEFAULT NULL,
  `order_hosting_id` int(10) unsigned DEFAULT NULL,
  `order_virtual_id` int(10) unsigned DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_details_id`),
  KEY `fk_order_details_order_inventory_relation1_idx` (`order_inventory_id`),
  KEY `fk_order_details_order_virtual_relation1_idx` (`order_virtual_id`),
  KEY `fk_order_details_order_hosting_relation1_idx` (`order_hosting_id`),
  CONSTRAINT `fk_order_details_order_hosting_relation1` FOREIGN KEY (`order_hosting_id`) REFERENCES `order_hosting_relation` (`order_hosting_relation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_details_order_inventory_relation1` FOREIGN KEY (`order_inventory_id`) REFERENCES `order_inventory_relation` (`order_inventory_relation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_details_order_virtual_relation1` FOREIGN KEY (`order_virtual_id`) REFERENCES `order_virtual_relation` (`order_virtual_relation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_hosting_relation`
--

DROP TABLE IF EXISTS `order_hosting_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_hosting_relation` (
  `order_hosting_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hosting_id` int(10) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_hosting_relation_id`),
  KEY `fk_order_hosting_relation_host_ip_relations1_idx` (`hosting_id`),
  CONSTRAINT `fk_order_hosting_relation_host_ip_relations1` FOREIGN KEY (`hosting_id`) REFERENCES `host_ip_relation` (`host_ip_relation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_hosting_relation`
--

LOCK TABLES `order_hosting_relation` WRITE;
/*!40000 ALTER TABLE `order_hosting_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_hosting_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_inventory_relation`
--

DROP TABLE IF EXISTS `order_inventory_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_inventory_relation` (
  `order_inventory_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventory_id` int(10) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_inventory_relation_id`),
  KEY `fk_order_inventory_relation_inventory1_idx` (`inventory_id`),
  CONSTRAINT `fk_order_inventory_relation_inventory1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_inventory_relation`
--

LOCK TABLES `order_inventory_relation` WRITE;
/*!40000 ALTER TABLE `order_inventory_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_inventory_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_virtual_relation`
--

DROP TABLE IF EXISTS `order_virtual_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_virtual_relation` (
  `order_virtual_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `virtual_id` int(10) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_virtual_relation_id`),
  KEY `fk_order_virtual_relation_virtuals1_idx` (`virtual_id`),
  CONSTRAINT `fk_order_virtual_relation_virtuals1` FOREIGN KEY (`virtual_id`) REFERENCES `virtuals` (`virtuals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_virtual_relation`
--

LOCK TABLES `order_virtual_relation` WRITE;
/*!40000 ALTER TABLE `order_virtual_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_virtual_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned DEFAULT NULL,
  `order_details_id` int(10) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orders_id`),
  KEY `account_id` (`account_id`),
  KEY `fk_orders_order_details1_idx` (`order_details_id`),
  CONSTRAINT `fk_orders_order_details1` FOREIGN KEY (`order_details_id`) REFERENCES `order_details` (`order_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`accounts_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `server_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_details_id` int(10) unsigned NOT NULL,
  `sites_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`server_id`),
  KEY `server_details_id` (`server_details_id`),
  KEY `account_id` (`account_id`),
  KEY `fk_server_sites1_idx` (`sites_id`),
  CONSTRAINT `fk_server_sites1` FOREIGN KEY (`sites_id`) REFERENCES `sites` (`sites_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `servers_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`accounts_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `servers_ibfk_2` FOREIGN KEY (`server_details_id`) REFERENCES `server_details` (`server_details_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_details`
--

DROP TABLE IF EXISTS `server_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_details` (
  `server_details_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_hosting_id` int(10) unsigned DEFAULT NULL,
  `server_virtual_id` int(10) unsigned DEFAULT NULL,
  `server_inventory_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `commission_date` date DEFAULT NULL,
  `decommission_date` date DEFAULT NULL,
  `chassis` varchar(45) DEFAULT NULL,
  `hdd_requested` varchar(45) DEFAULT NULL,
  `memory_requested` varchar(45) DEFAULT NULL,
  `aesni` tinyint(1) DEFAULT '0',
  `hardware_raid` tinyint(1) DEFAULT '0',
  `ssd` tinyint(1) DEFAULT '0',
  `virtual` tinyint(1) DEFAULT '0',
  `notes` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_upated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`server_details_id`),
  KEY `server_hosting_id` (`server_hosting_id`),
  KEY `server_virtual_id` (`server_virtual_id`),
  KEY `server_hardware_id` (`server_inventory_id`),
  CONSTRAINT `fk_server_details_server_inventory_relation1` FOREIGN KEY (`server_inventory_id`) REFERENCES `server_inventory_relation` (`server_inventory_relation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_server_details_server_virtual_relation1` FOREIGN KEY (`server_virtual_id`) REFERENCES `server_virtual_relation` (`server_virtual_relation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `server_details_ibfk_1` FOREIGN KEY (`server_hosting_id`) REFERENCES `server_hosting_relation` (`server_hosting_relation_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_details`
--

LOCK TABLES `server_details` WRITE;
/*!40000 ALTER TABLE `server_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_hosting_relation`
--

DROP TABLE IF EXISTS `server_hosting_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_hosting_relation` (
  `server_hosting_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hosting_id` int(10) unsigned DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`server_hosting_relation_id`),
  UNIQUE KEY `hosting_id` (`hosting_id`) USING BTREE,
  CONSTRAINT `server_hosting_relation_ibfk_1` FOREIGN KEY (`hosting_id`) REFERENCES `host_ip_relation` (`host_ip_relation_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_hosting_relation`
--

LOCK TABLES `server_hosting_relation` WRITE;
/*!40000 ALTER TABLE `server_hosting_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_hosting_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_inventory_relation`
--

DROP TABLE IF EXISTS `server_inventory_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_inventory_relation` (
  `server_inventory_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventory_id` int(10) unsigned NOT NULL,
  `qty` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`server_inventory_relation_id`),
  KEY `fk_server_inventory_relation_inventory1_idx` (`inventory_id`),
  CONSTRAINT `fk_server_inventory_relation_inventory1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_inventory_relation`
--

LOCK TABLES `server_inventory_relation` WRITE;
/*!40000 ALTER TABLE `server_inventory_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_inventory_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_permissions`
--

DROP TABLE IF EXISTS `server_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_permissions` (
  `server_permissions_id` int(10) unsigned NOT NULL,
  `accounts_id` int(10) unsigned NOT NULL,
  `username` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`server_permissions_id`),
  KEY `fk_server_permissions_accounts1_idx` (`accounts_id`),
  CONSTRAINT `fk_server_permissions_accounts1` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`accounts_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_permissions`
--

LOCK TABLES `server_permissions` WRITE;
/*!40000 ALTER TABLE `server_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_virtual_relation`
--

DROP TABLE IF EXISTS `server_virtual_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_virtual_relation` (
  `server_virtual_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `virtual_id` int(10) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`server_virtual_relation_id`),
  KEY `fk_server_virtual_relation_virtuals1` (`virtual_id`),
  CONSTRAINT `fk_server_virtual_relation_virtuals1` FOREIGN KEY (`virtual_id`) REFERENCES `virtuals` (`virtuals_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_virtual_relation`
--

LOCK TABLES `server_virtual_relation` WRITE;
/*!40000 ALTER TABLE `server_virtual_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_virtual_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `services_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`services_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `sites_id` int(10) unsigned NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sites_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software` (
  `software_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `version` varchar(45) NOT NULL,
  `description` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`software_id`),
  UNIQUE KEY `software_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtuals`
--

DROP TABLE IF EXISTS `virtuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtuals` (
  `virtuals_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opersys_id` int(10) unsigned DEFAULT NULL,
  `services_id` int(10) unsigned DEFAULT NULL,
  `software_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`virtuals_id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_virtuals_services1_idx` (`services_id`),
  KEY `fk_virtuals_software1_idx` (`software_id`),
  KEY `fk_virtuals_opersys1_idx` (`opersys_id`),
  CONSTRAINT `fk_virtuals_opersys1` FOREIGN KEY (`opersys_id`) REFERENCES `opersys` (`opersys_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_virtuals_services1` FOREIGN KEY (`services_id`) REFERENCES `services` (`services_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_virtuals_software1` FOREIGN KEY (`software_id`) REFERENCES `software` (`software_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtuals`
--

LOCK TABLES `virtuals` WRITE;
/*!40000 ALTER TABLE `virtuals` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlans`
--

DROP TABLE IF EXISTS `vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vlans` (
  `vlan_id` int(10) unsigned NOT NULL,
  `vlan` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `notes` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vlan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlans`
--

LOCK TABLES `vlans` WRITE;
/*!40000 ALTER TABLE `vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `vlans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-21 12:13:26
