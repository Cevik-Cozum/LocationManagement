CREATE TABLE CITY    (                  
                      CITYID varchar(2) NOT NULL PRIMARY KEY,        
		              NAME varchar(30),
					  CITY_CODE varchar(2),
					  X char,
					  Y char

);
CREATE TABLE DISTRICT
(
                      DISTRICTID varchar(2) NOT NULL PRIMARY KEY,        
		              NAME varchar(50),
					  CITY_ID varchar(2) FOREIGN KEY REFERENCES CITY(CITYID),
					  X char,
					  Y char

);
CREATE TABLE NEIGHBORHOOD
(
                      NEIGHBORHOODID varchar(3) NOT NULL PRIMARY KEY,        
		              NAME nvarchar(50),
					  DISTRICT_ID varchar(2) FOREIGN KEY REFERENCES DISTRICT(DISTRICTID),
					  X char,
					  Y char

);

CREATE TABLE ADDRESS
(
                      ADDRESSID varchar(3) NOT NULL PRIMARY KEY,        
		              NAME varchar(150),
					  NEIGHBORHOOD_ID varchar(3) FOREIGN KEY REFERENCES NEIGHBORHOOD(NEIGHBORHOODID),
					  X char,
					  Y char

);
CREATE TABLE TELEPHONE
(
                      TELEPHONEID varchar(3) NOT NULL PRIMARY KEY,        
		              PHONE varchar(30),
					  
);


   CREATE TABLE HOSPITAL
(
                       HOSPITALID varchar(3) NOT NULL PRIMARY KEY,        
		              NAME varchar(150),
					  ADDRESS_ID varchar(3) FOREIGN KEY REFERENCES ADDRESS(ADDRESSID),
					  X char,
					  Y char
     );
	 CREATE TABLE HOSPITAL_TELEPHONE
(
                      PHONE_ID varchar(3) FOREIGN KEY REFERENCES TELEPHONE(TELEPHONEID),      
		            HOSPITAL_ID varchar(3) FOREIGN KEY REFERENCES HOSPITAL(HOSPITALID),
					  
);


INSERT INTO CITY(CITYID, NAME, CITY_CODE) VALUES
(1, 'İSTANBUL', 34),
(2, 'ANKARA', 6),
(3, 'İZMİR', 35);

INSERT INTO DISTRICT (DISTRICTID, NAME, CITY_ID) VALUES
('1','Balgat','2'),
('2','Batıkent','2'),
('3','Çankaya','2'), --ankara
('4','Çukurambar','2'),
('5','Dikmen','2'),
('6','Etimesgut','2'),
('7','Gölbaşı','2'),
('8','KahramanKazan','2'),
('9','Keçiören','2'),
('10','Mamak','2'),
('11','Polatlı','2'),
('12','Sincan','2'),
('13','Ulus','2'),
('14','Yenimahalle','2'),

('15','Aliağa','3'),--izmir
('16','Balçova','3'),
('17','Bayraklı','3'),
('18','Bergama','3'),
('19','Bornova','3'),
('20','Karabağlar','3'),
('21','Karşıyaka','3'),
('22','Konak','3'),
('23','Menderes','3'),
('24','Narlıdere','3'),
('25','Ödemiş','3'),
('26','Selçuk','3'),
('27','Urla','3'),

('28','Arnavutköy','1'),--istanbul
('29','Ataşehir','1'),
('30','Avcılar','1'),
('31','Bağcılar','1'),
('32','Bahçelievler','1'),
('33','Bakırköy','1'),
('34','Bayrampaşa','1'),
('35','Beşiktaş','1'),
('36','Beykoz','1'),
('37','Beylikdüzü','1'),
('38','Beyoğlu','1'),
('39','Büyükçekmece','1'),
('40','Esenler','1'),
('41','Esenyurt','1'),
('42','Eyüpsultan','1'),
('43','Fatih','1'),
('44','Gaziosmanpaşa','1'),
('45','Güngören','1'),
('46','Kadıköy','1'),
('47','Kağıthane','1'),
('48','Kartal','1'),
('49','Küçükçekmece','1'),
('50','Maltepe','1'),
('51','Pendik','1'),
('52','Sancaktepe','1'),
('53','Sarıyer','1'),
('54','Silivri','1'),
('55','Sultanbeyli','1'),
('56','Sultangazi','1'),
('57','Şişli','1'),
('58','Tuzla','1'),
('59','Ümraniye','1'),
('60','Üsküdar','1'),
('61','Zeytinburnu','1')
;
INSERT INTO NEIGHBORHOOD (NEIGHBORHOODID, NAME, DISTRICT_ID) VALUES -- sokak isimleri alınmalı mı?

('1','Akşamsettin','12'), -- ankara --var
('2','Andiçen','12'),--var
('3','Balgat','3'),
('4','Balgat','1'),
('5','Barbaros','3'),
('6','Birlik','3'),--var
('7','Bitik Köyü ','8'),
('8','Büklüm','3'),
('9','Çayyolu','3'), --var
('10','Çayyolu','3'),
('11','Elvan','6'),--var
('12','Etlik','9'),
('13','EskişehiryoluKızılırmak','3'),--var
('14','Gayret','14'), --var
('15','İnönü','14'),--var
('16','Kalaba','9'), --var
('17','Kavaklıdere','3'),
('18','Kavaklıdere','3'),
('19','Kavaklıdere','3'),
('20','Kavaklıdere','3'),
('21','Kavaklıdere','3'),
('22','Kavaklıdere','3'),
('23','Keçiören','9'),
('24','Kentkoop','2'), --var
('25','Kızılcaşar','7'), --var
('26','Kızılcaşar','7'),
('27','Kızılırmak','4'),--var
('28','Maltepe','3'),
('29','Naci Çakır','5'), --var
('30','Remzi Oğuz Arık','3'),
('31','Sakarya','13'),
('32','Söğütözü','3'), --var
('33','Şehit Osmanavcı','6'),--var
('34','Tuzluçayır','10'), --var
('35','Yeni Mahalle','11'),
('36','Yukarı Dikmen','3'),--var
('37','Kurtuluş','15'),--izmir --var
('38','Balçova','16'),
('39','Mansuroğlu','17'),--var
('40','Mansuroğlu','17'),--var
('41','Mansuroğlu','17'),--var
('42','Maltepe','18'),--var
('43','Kazımdirik','19'),--var
('44','Karabağlar','20'),
('45','Göztepe','20'),--var
('46','Karşıyaka','21'),
('47','Karşıyaka','21'),
('48','Karşıyaka','21'),
('49','Yalı','21'),--var
('50','Alsancak','22'),
('51','Alsancak','22'),
('52','Mimar Sinan','22'),--var
('53','Alsancak','22'),
('54','Altıntaş','22'),--var
('55','Alsancak','22'),
('56','Kültür','22'),--var
('57','Alsancak','22'),
('58','Alsancak','22'),
('59','Kültür','22'),--var
('60','Kültür','22'),--var
('61','Alsancak','22'),
('62','Kültür','22'),--var
('63','Alsancak','22'),
('64','Alsancak','22'),
('65','Çamönü Köyü','23'),
('66','Ilıca','24'),--var
('67','Zafer','25'),--var
('68','Selçuk','26'),
('69','Kalabak','27'),--var
('70','Hacı İsa','27'),--var
('71','Yenikent','27'),--var
('72','Arnavutköy Merkez','28'),--istanbul var
('73','Küçükbakkalköy','29'),
('74','Ferhatpaşa','29'),
('75','Küçükbakkalköy','29'),
('76','İçerenköy','29'),
('77','Küçükbakkalköy','29'),
('78','Küçükbakkalköy','29'),
('79','Mustafa Kemal Paşa','30'),
('80','Gümüşpala','30'),
('81','	Ambarlı','30'),
('82','Merkez','30'),
('83','Fevzi Çakmak','31'),
('84','Güneşli','31'),
('85','100.Yıl','31'),
('86','Yavuz Selim','31'),
('87','Barbaros','31'),
('88','Bağcılar','31'),--yok
('89','Sancaktepe','31'),
('90','Yıldıztepe','31'),
('91','Sancaktepe','31'),
('92','Osmaniye','32'),--yok
('93','Koca Sinan','32'),
('94','Bahçelievler','32'),
('95','Hürriyet','32'),
('96','Yenibosna','32'),
('97','Bahçelievler','32'),--yok
('98','Bahçelievler','32'),
('99','Bahçelievler','32'),
('100','Bahçelievler','32'),--yok
('101','Bahçelievler','32'),--yok
('102','Bahçelievler','32'),
('103','Yeni Bosna Çeşme','32'),
('104','Bahçelievler','32'),
('105','Bahçelievler','32'),
('106','Yeni Bosna Zafer','32'),
('107','Zeytinlik','33'),
('108','Bakırköy','33'),--yok
('109','Yeşilköy','33'),
('110','Bakırköy','33'),--yok
('111','Bakırköy','33'),--yok
('112','Bakırköy','33'),--yok
('113','Bayrampaşa','34'),--yok
('114','Terazidere','34'),
('115','Terazidere','34'),
('116','Yenidoğan','34'),
('117','Dikilitaş','35'),
('118','Beşiktaş','35'),--yok
('119','Etiler','35'),
('120','Levent','35'),
('121','Etiler','35'),
('122','Gayrettepe','35'),
('123','OrtaKöy','35'),
('124','Muradiye','35'),
('125','Çubuklu','36'),
('126','Gürpınar Adnan Kahveci','37'),
('127','Beylikdüzü','37'),--yok
('128','Yakuplu','37'),
('129','Cumhuriyet','37'),
('130','Büyükşehir','37'),
('131','Arap Camii','38'),
('132','Beyoğlu','38'),--yok
('133','Piyalepaşa','38'),
('134','Fatih','39'),
('135','Menderes','40'),  
('136','Atışalanı Birlik','40'),
('137','Menderes','40'),
('138','Sonevler','41'),--yok
('139','Merkez','41'),
('140','Mevlana','41'),
('141','Yeşilkent','41'),
('142','Karadolap','42'),
('143','Alibeyköy','42'),
('144','Aksaray','43'),
('145','Fatih','43'),--yok
('146','Denizabdal','43'),
('147','Denizabdal','43'),
('148','Aksaray','43'),
('149','Aksaray','43'),
('150','Aksaray','43'),
('151','Aksaray','43'),
('152','Aksaray','43'),
('153','Yeni','44'),
('154','Fevzi Çakmak','44'),
('155','Merkez','44'),
('156','Yeni','44'),
('157','Gaziosmanpaşa','44'),
('158','Gaziosmanpaşa','44'),
('159','Gaziosmanpaşa','44'),
('160','Merkez','44'),
('161','Karadeniz','44'),
('162','Gaziosmanpaşa','44'),--yok
('163','Merkez','44'),
('164','Güngören','45'),
('165','Güngören','45'),
('166','Abdurrahman Nafiz Gürman','45'),
('167','Haznedar','45'),
('168','Acıbadem','46'),
('169','19 Mayıs','46'),
('170','19 Mayıs','46'),
('171','Hasanpaşa','46'),
('172','Acıbadem','46'),
('173','Merdivenköy','46'),
('174','Mecidiyeköy','46'),
('175','19 Mayıs','46'),
('176','19 Mayıs','46'),
('177','Kadıköy','46'),--yok
('178','Merdivenköy','46'),
('179','Zühtüpaşa','46'),
('180','19 Mayıs','46'),
('181','Gültepe','47'),
('182','Merkez','47'),
('183','Kağıthane','47'),--yok
('184','Atalar','48'),--yok kartal
('185','Petrol İş','48'),
('186','Orta','48'),
('187','Atalar','48'),
('188','Kartal','48'),
('189','Yukarı','48'),
('190','Atakent','49'),
('191','Mehmet Akif','49'),
('192','İkitelli','49'),
('193','Cennet','49'),
('194','Küçükçekmece','49'),--yok
('195','Merkez','49'),
('196','Atakent','49'),
('197','Tevfikbey','49'),
('198','İdealtepe','50'),
('199','Cevizli','50'),
('200','Bağlarbaşı','50'),
('201','Altayçeşme','50'),
('202','Cevizli','50'),
('203','Yenişehir','51'),
('204','Ahmet Yesevi','51'),
('205','Ahmet Yesevi','51'),
('206','Doğu','51'),
('207','Doğu','51'),
('208','Doğu','51'),
('209','Bahçelievler','51'),
('210','Fevzi Çakmak','51'),
('211','ÜstKaynarca Fevzi Çakmak','51'),
('212','Meclis','52'),
('213','Sarıgazi','52'),
('214','Darüşşafaka','53'),
('215','Piri Mehmet Paşa','54'),
('216','Alibey','54'),
('217','Mimar Sinan Silivri','54'),
('218','Mehmet Akif','55'),
('219','Abdurrahmangazi','55'),
('220','Gaziosmanpaşa','56'),--yok
('221','Gazi','56'),
('222','Uğur Mumcu','56'),
('223','Kaptan Paşa','57'),
('224','19 Mayıs','57'),
('225','İnönü','57'),
('226','Fulya','57'),
('227','19 Mayıs','57'),
('228','19 Mayıs','57'),
('229','Teşvikiye','57'),
('230','19 Mayıs','57'),
('231','Fulya','57'),
('232','Mecidiyeköy','57'),--yok
('233','19 Mayıs','57'),
('234','Şişli','57'),--yok
('235','Şişli','57'),--yok
('236','19 Mayıs','57'),
('237','19 Mayıs','57'),
('238','Kaptanpaşa','57'),
('239','Teşvikiye','57'),
('240','Evliya Çelebi','58'),
('241','Yayla','58'),
('242','Yayla','58'),
('243','Namık Kemal','59'),
('244','İstiklal','59'),
('245','Alemdağ','59'),
('246','Namık Kemal','59'),
('247','Saray','59'),
('248','Saray','59'),
('249','Altunizade','60'),
('250','Acıbadem','60'),
('251','Kısıklı','60'),
('252','Acıbadem','60'),
('253','Güzeltepe','60'),
('254','Alemdağ','60'),
('255','Acıbadem','60'),
('256','Mimar Sinan','60'),
('257','Mimar Sinan','60'),
('258','Acıbadem','60'),
('259','İnkılap ','60'),
('260','5. Telsiz ','61'),
('261','Zeytinburnu','61'),--yok
('262','Çırpıcı','61'),
('263','Zeytinburnu','61')--yok
;
INSERT INTO ADDRESS(ADDRESSID, NAME,NEIGHBORHOOD_ID) VALUES--name ne olmalı
('1','Yukarı Dikmen Mah.630.Sok.No:6 Çankaya /ANKARA','36'),--ANKARA
('2','Elvan Mah. 1935.Sok. No:5 Etimesgut/ANKARA','11'),
('3','Paris Cad. No:58 Kavaklıdere-Çankaya/ANKARA','30'),
('4','Büklüm Sok. No:72 Kavaklıdere-Çankaya/ANKARA','5'),
('5','EskişehiryoluKızılırmak Mah. 53.Cad. No:17 Söğütözü-Çankaya/ANKARA','13'),
('6','Atatürk Bulvarı No:201 Kavaklıdere-Çankaya/ANKARA','19'),
('7','İnönü Mah. Batı Bulvarı No:19-Yenimahalle/ANKARA','15'),
('8','Bitik Köyü KahramanKazan/ANKARA','7'),
('9','Bülten Sok. No:44 Kavaklıdere-Çankaya/ANKARA','20'),
('10','Birlik Mah. ŞehitKurbani Akboğa Sok.No:26 Çankaya/ANKARA	','6'),
('11','Tunus Cad. No:28 Kavaklıdere-Çankaya/ANKARA','21'),
('12','Şehit Osmanavcı Mah.2649. sok. No:2 Eryaman –Etimesgut /ANKARA','33'),
('13','Güneş Sokak No:14 Kavaklıdere-Çankaya/ANKARA','22'),
('14','Kızılcaşar Köyü, Serpmeler No:55 Gölbaşı/ANKARA','25'),
('15','Anavatan Cad. No:20 Keçiören/ANKARA','23'),
('16','AkşamsettinMah. Bosna Cad. Huzur Sok.No:1 Sincan/ANKARA','1'),
('17','Kızılırmak Mah.1450 Sok. No:13 Çukurambar/ANKARA','27'),
('18','Kenedy Cad. No:71 Kavaklıdere-Çankaya/ANKARA','5'),
('19','GMK Bulvarı No:81 Çankaya/ANKARA','28'),
('20','Bestekar Sok. No:8 Kavaklıdere-Çankaya/ANKARA','17'),
('21','Akay Cad.Büklüm Sok. No:4 Kavaklıdere-Çankaya/ANKARA','18'),
('22','Andiçen Mah. Polatlı Cad. İdil Sok. No:44 Sincan/ANKARA','2'),
('23','Gn.Dr.Tevfik Sağlam Cad. No:119 Etlik-Keçiören/ANKARA','12'),
('24','Kızılcaşar Mah. 2705 Cad. No:20 Gölbaşı/ANKARA','26'),
('25','Söğütözü Mah.  2165. Sok. No:6 Söğütözü-Çankaya/ANKARA','32'),
('26','Kentkoop Mah.1868 Sok.no:15 Batıkent/ANKARA','24'),
('27','Kalaba Mah. 30. Sok. No:5 Keçiören/ANKARA','16'),
('28','Çayyolu Mahallesi. 1920.Cad. No:61 Çankaya/ANKARA','9'),
('29','Mevlana Bulvarı 1422.Sok.No:4 Balgat-Çankaya/ANKARA','3'),
('30','Tuzluçayır Mah. Natoyolu No:55 Mamak/ANKARA','34'),
('31','Naci Çakır Mah. 761.Sok. No:2 Dikmen/ANKARA','29'),
('32','Gayret Mah. İvedik Cad. No:61 Yenimahalle/ANKARA','14'),
('33','Gordion Cad.No:1 Polatlı/ANKARA','35'),
('34','Hisar Park Cad. No:18 Ulus/ANKARA','31'),
('35','Muhsin Yazıcıoğlu Cad. No:54 Balgat/ANKARA','4'),
('36','KURTULUŞ MAH. FEVZİPAŞA CAD. NO:122/E ALİAĞA','37'),--İZMİR
('37','MİTHATPAŞA CAD. NO:263 K:2 D:2 BALÇOVA/İZMİR','38'),
('38','MANSUROĞLU MAH. 288/6 SOK. NO:1 K:1 D:4 BAYRAKLI','39'),
('39','MANSUROĞLU MAH. 286/10 SOK. NO:7 D:22 BAYRAKLI/İZMİR','40'),
('40','MANSUROĞLU MAH. 15933/1 SOK. NO:2K(121) BAYRAKLI/İZMİR','41'),
('41','MALTEPE MAH. HARMANYERİ CAD. NO:2A K:1 BERGAMA','42'),
('42','KAZIMDİRİK MAH. 372/2 SOK. NO:9 BORNOVA','43'),
('43','İNÖNÜ CAD. NO:305 K:1 D:1 KARABAĞLAR / İZMİR','44'),
('44','GÖZTEPE MAH. 103/1 SOK. NO:9/A KONAK/İZMİR','45'),
('45','1751 SK. NO:2/1 D:4 KARŞIYAKA','46'),
('46','6348 SOK. (İSMET YAZAR SOK.) NO:5 D:1 KARŞIYAKA','47'),
('47','6523 SOKAK NO:32A D:408 PARK YAŞAM OFİSLERİ KARŞIYAKA','48'),
('48','6496 SOK. NO:5 D:2 YALI MAH. KARŞIYAKA','49'),
('49','MUSTAFA BEY CAD. NO:17 D:4 ALSANCAK-KONAK','50'),
('50','1379 SOK. NO:19/4 ALSANCAK/KONAK/İZMİR','51'),
('51','MİMAR SİNAN MAH. ŞAİR EŞREF BULVARI NO:62 K:1 D:2 KONAK / İZMİR','52'),
('52','İRFAN BOYUER SOKAK NO:18 D:12 ALSANCAK-KONAK','53'),
('53','ALTINTAŞ MAH.İNÖNÜ CAD. NO:152 K:1D:1 KONAK','54'),
('54','ATATÜRK CADDESİ NO:338 K:6 D:6 ALSANCAK KONAK/İZMİR','55'),
('55','KÜLTÜR MAH. ŞEVKET ÖZÇELİK SOK. NO:10 K:2 D:3 ALSANCAK-KONAK','56'),
('56','ALİ ÇETİNKAYA BULVARI NO:19 D:3 ALSANCAK/İZMİR','57'),
('57','TALATPAŞA BULVARI NO:42 K:2 D:4 ALSANCAK-KONAK/İZMİR','58'),
('58','KÜLTÜR MAH. 1438 SOK. NO:1 K:2 D:5 ALSANCAK-KONAK/İZMİR','59'),
('59','KÜLTÜR MAH. ŞEHİT NEVRES BULVARI NO:15 K:4 D:8 KONAK','60'),
('60','İRFAN BOYUER SOKAK NO:18 D:12 ALSANCAK-KONAK','61'),
('61','KÜLTÜR MAH. ALİ ÇETİNKAYA BULVARI NO:12 K:4 D:7 KONAK','62'),
('62','1447 SOK. NO:7 K:2 D:3 ALSANCAK-KONAK/İZMİR','63'),
('63','TALATPAŞA BULVARI NO:23 K:1 D:1 KONAK','64'),
('64','21 SOK. NO:23 ÇAMÖNÜ KÖYÜ MENDERES/İZMİR','65'),
('65','ILICA MAH. ZEYTİN SOK. NO:112/1 NARLIDERE','66'),
('66','ZAFER MAHALLESİ ORTAÇ SOK. NO:10 ÖDEMİŞ İZMİR','67'),
('67','1082 SOK. NO:8 D:1 SELÇUK','68'),
('68','KALABAK MAH. 3302 SOK NO:37D:2 URLA','69'),
('69','HACI İSA MAH. 75 .YIL CUMHURİYET CAD. NO:31/1 D:1 URLA','70'),
('70','YENİKENT MAHALLESİ HÜSEYİN ZEREN CAD. NO:34/1 URLA','71'),
('71','Arnavutköy Merkez Mah. Edirne Cad. No.1338 ARNAVUTKÖY','72'),--ISTANBUL
('72','KÜÇÜKBAKKALKÖY MAH. ISIKLAR CAD. No:35/A / ATAŞEHİR','73'),
('73','FERHATPAŞA MAH. YEDİTEPE CAD. No:44 / ATAŞEHİR','74'),
('74','Kayışdağı Cd.No:47 Küçükbakkalköy Kadıköy','75'),
('75','İçerenköy Mah. Meriç Sok. No:17 Kadıköy / İstanbul','76'),
('76','KÜÇÜKBAKKALKÖY MAH. KAYISDAGI CAD. No:57/A / ATAŞEHİR','77'),
('77','Küçükbakkalköy Mah. Vedat Günyol Cad. No:28-30 Ataşehir','78'),
('78','M.K.Paşa Mh.Kayabaşı Sk.No:1/3 Avcılar','79'),
('79','GÜMÜŞPALA MAH. ISKECE CAD. No:64 / AVCILAR','80'),
('80','AMBARLI MAH. No:10 / AVCILAR','81'),
('81','Merkez Mh.Şamlı Sk.No:32 Avcılar','82'),
('82','FEVZİ ÇAKMAK MAH. OSMAN GAZİ CAD. No:173-1 / BAĞCILAR','83'),
('83','GÜNEŞLİ MAH. FEVZİ ÇAKMAK CAD. No:72-74 / BAĞCILAR','84'),
('84','100.YIL MAH. No:77 / BAĞCILAR','85'),
('85','Yavuzselim Mah. Hoca Ahmet Yesevi Cad. 26/A Sk.No:5 Bağcılar / İstanbul','86'),
('86','Barbaros Mh.Hoca Ahmet Yesevi Cd.No:19 Bağcılar','87'),
('87','','88'),
('88','SANCAKTEPE MAH. BİRLİK CAD. 3/1C SK. No:1 / BAĞCILAR','89'),
('89','Yıldıztepe Mh.Bağcılar Cd. No:108 Bağcılar','90'),
('90','Sancaktepe Mh. 12.Sk. No:7 Bağcılar','91'),
('91','Osmaniye Mevkii E-5 Karayolu Üzeri Bahçelievler','92'),
('92','KOCASİNAN MERKEZ MAH. MAHMUTBEY CAD. No:373-375 / BAHÇELİEVLER','93'),
('93','BAHÇELİEVLER MAH. No:7 / BAHÇELİEVLER','94'),
('94','Hürriyet Mah. Hürriyet Cad. No:1 Yenibosna / İstanbul','95'),
('95','Yenibosna Yıldırım Bayazıt Cd. No:56 Bahçelievler','96'),
('96','İzzettin Çalışlar Cd. Neyyire Sk. No:3 Bahçelievler','97'),
('97','BAHÇELİEVLER MAH. No:369 / BAHÇELİEVLER','98'),
('98','Bahçeli evler Mah. Kültür Sok. no:1/A Bahçelievler/İstanbul','99'),
('99','Haznedar Eski Londra Asfaltı No:2 Bahçelievler','100'),
('100','Haznedar Bağcılar Cd.No:1 Bahçelievler','101'),
('101','BAHÇELİEVLER MAH. No:227 / Adnan Kahveci Bulvarı BAHÇELİEVLER','102'),
('102','Yenibosna Ç.Çeşme Mh.Fatih Cd. Okul Sk.No:1 Bahçelievler','103'),
('103','Bahçelievler Mah. Delihüseyin Paşa Cad. Şevketdağ Sok. No:2 Bahçelievler/İSTANBUL','104'),
('104','BAHÇELİEVLER MAH. No:2 / BAHÇELİEVLER','105'),
('105','Yenibosna Zafer Mh.Ahmet Yesevi Cd.Gümüş Sk.No:9-11 Bahçelievler','106'),
('106','Zeytinlik Mh.Sahil Yolu Keneddy Cd.No: 18 Bakırköy','107'),
('107','Halit Ziya Uşaklıgil Cd.No:1 Bakırköy','108'),
('108','İstanbul Cd.No:82 Yeşilköy Bakırköy','109'),
('109','İncirli Cd.No:55 Bakırköy','110'),
('110','İncirli Pelinli Sk. No:23 Bakırköy İstanbul','111'),
('111','İncirli Cd. No:22 Bakırköy','112'),
('112','','113'),
('113','TERAZİDERE MAH. HAKAN SOK. No:18 / BAYRAMPAŞA','114'),
('114','TERAZİDERE MAH. 60. YIL CAD. 60. YIL CAD. No:No:3 / BAYRAMPAŞA','115'),
('115','YENİDOĞAN MAH. ÖZGÜR SK. No:5 / BAYRAMPAŞA','116'),
('116','Dikilitaş mah.Hakkı Yeten Cad.Yeşilçimen sok. No:23 Beşiktaş','117'),
('117','Yıldız Posta Cd.No:55 Beşiktaş','118'),
('118','Etiler Nispetiye Cad.Yanarsu Sok. No:1/3 Beşiktaş/İstanbul','119'),
('119','Levent Mah. Yeni Sülün Sk. No:13 Beşiktaş','120'),
('120','ETİLER MAH. No:1/3 / BEŞİKTAŞ','121'),
('121','Gayrettepe Cemil Aslan Güder Cd.No:8 Beşiktaş','122'),
('122','ORTAKÖY MAH. CANAN SOK. NO:5 BEŞİKTAŞ','123'),
('123','Muradiye Mah. Nüzhetiye Cad. Deryadil Sok. No:1','124'),
('124','Çubuklu Mah. Cumhuriyet Cad. Rüzgarlıbahçe Mevkii No:24 Beykoz','125'),
('125','Gürpınar Adnan Kahveci Mah. Osmanlı Cad. No:17 B.çekmece / İstanbul','126'),
('126','','127'),
('127','YAKUPLU MAH. OSMANLI CAD. No:3 / BEYLİKDÜZÜ','128'),
('128','CUMHURİYET MAH. ATATÜRK BULVARI No:5 / BEYLİKDÜZÜ','129'),
('129','Büyükşehir Mah. Beylikdüzü Cad. No:3 Büyükçekmece / İstanbul','130'),
('130','ARAP CAMİ MAH. No:71 / BEYOĞLU','131'),
('131','Bereketzade Medresesi Sk.No:5/7 Beyoğlu','132'),
('132','Piyalepaşa Mh.F.Sultan Cd. Osmanoğlu Sk.No:12 Beyoğlu','133'),
('133','Fatih Mah. Turgut Reis Sk.No:3','134'),
('134','Menderes Mh. Atışalanı Cd. 19.Sk. No.2 Esenler','135'),
('135','Atışalanı Birlik Mh.835.Sk. No:2 Esenler','136'),
('136','Menderes Mh.K.Karabekir Cd. No:3 Esenler','137'),
('137','Esenyurt Doğan Araslı Cd. No:4 Sonevler','138'),
('138','MERKEZ MAH 19 MAYIS BULVARI NO:18 ESENYURT','139'),
('139','MEVLANA MAH. SULTAN AHMET CAD. No:127 / ESENYURT','140'),
('140','YEŞİLKENT MAH. 2011. SK. No:25 / ESENYURT','141'),
('141','Karadolap Mah. Neşeli Sok. No:22 Eyüp-İSTANBUL','142'),
('142','Alibeyköy Merkez Mh. No:56 Eyüp','143'),
('143','AKSARAY MAH. No:11 / FATİH','144'),
('144','Hisarönü Cd.No:46/48 Fatih','145'),
('145','Denizabdal Mh.Necip Asım Sk.No:23 Fatih','146'),
('146','Denizabdal Mh. Başvekil Cd. No:2 Fatih','147'),
('147','AKSARAY MAH. No:1 / FATİH','148'),
('148','AKSARAY MAH. No:03 / FATİH','149'),
('149','AKSARAY MAH. No:4 / FATİH','150'),
('150','AKSARAY MAH. No:19 / FATİH','151'),
('151','YENİ MAH. 537 SK. No:5 / GAZİOSMANPAŞA','153'),
('152','FEVZİ ÇAKMAK MAH. HEKIMSUYU CAD. HEKIMSUYU CAD. No:26 / GAZİOSMANPAŞA','154'),
('153','Merkez Mh. Küçükköy Yolu Hamam Sk.No:2 Gaziosmanpaşa','155'),
('154','Yeni Mahalle Hekimsuyu Caddesi No:53 Küçükköy-Gaziosmanpaşa/İSTANBUL','156'),
('155','G.O.Paşa Cd.No:1 Küçükköy Gaziosmanpaşa','157'),
('156','G.O.Paşa Mh.Cengiz Topel Cd. No:167 Küçükköy','158'),
('157','Eski Edirne Asfaltı No: 124/B 255. Sk. No:16 Gaziosmanpaşa','159'),
('158','MERKEZ MAH. CUKURCESME CAD. No:57-59 / GAZİOSMANPAŞA','160'),
('159','Karadeniz Mah. General Aldoğan Cad. No: 6-8/A','161'),
('160','Yıldıztabya Cd. No: 77 Gaziosmanpaşa','162'),
('161','MERKEZ MAH. CUKURCESME CAD. No:51 / GAZİOSMANPAŞA','163'),
('162','Köyiçi Doğanbey Cd. No:1 Güngören','164'),
('163','Soğanlı Cd.No: 77 Güngören','165'),
('164','ABDURRAHMAN NAFİZ GÜRMAN MAH. No:59 / GÜNGÖREN','166'),
('165','Haznedar Mh.Bağcılar Cd. No:52 Güngören','167'),
('166','Acıbadem Tekin Sk.No:18 Kadıköy','168'),
('167','19 MAYIS MAH. İNÖNÜ CAD. OKUR SK. No:20 / KADIKÖY','169'),
('168','19 MAYIS MAH. No: 20 / KADIKÖY','170'),
('169','Hasanpaşa Mirim Çelebi Sk. No:1 Kadıköy','171'),
('170','ACIBADEM MAH. SOKULLU SK. No:1 / KADIKÖY','172'),
('171','Merdivenköy Yolu Şahika Sok. No:32 Göztepe Kadıköy/İSTANBUL','173'),
('172','Mecidiyeköy Mh. Lambacı Sk. No:1/1-2 Kadıköy','174'),
('173','19 MAYIS MAH. No:63 / KADIKÖY','175'),
('174','19 MAYIS MAH. No:1 / KADIKÖY','176'),
('175','Kocayol Cd.Kozyatağı Sk. No:5 Kadıköy','177'),
('176','Merdivenköy Mh. 23 Nisan Sk. No:17 Kadıköy/İSTANBUL','178'),
('177','ZÜHTÜPAŞA MAH. RECEP PEKER CAD. No:11 / 1 KADIKÖY','179'),
('178','19 MAYIS MAH. No:24 / KADIKÖY','180'),
('179','Gültepe Mh.Talatpaşa Cd. No:151 Kağıthane','181'),
('180','MERKEZ MAH. ÇOBANÇEŞME CAD. BURCU SK. No:No.9 / KAĞITHANE','182'),
('181','Büyükdere Cd.No:35 Kağıthane','183'),
('182','ATALAR MAH. ÜSKÜDAR CAD. No:99-101 / KARTAL','184'),
('183','Petrol_İş Mah. Üsküdar Cd.( Münübüs Yolu ) No:45 Kartal','185'),
('184','ORTA MAH. GENÇ OSMAN CAD. No:2 / KARTAL','186'),
('185','ATALAR MAH. No:101 / KARTAL','187'),
('186','Bağdat Cd.No:141 Kartal','188'),
('187','YUKARI MAH. KIZILAY BULVARI No:30 / KARTAL','189'),
('188','ATAKENT MAH. No:1 / KÜÇÜKÇEKMECE','190'),
('189','MEHMET AKİF MAH. KEMALPAŞA CAD. No:92 / KÜÇÜKÇEKMECE','191'),
('190','Atatürk Cad.No: 135 İkitelli Küçükçekmece','192'),
('191','CENNET MAH. GÜR SK. No:22 / KÜÇÜKÇEKMECE','193'),
('192','İnönü Cd.No:140 Küçükçekmece','194'),
('193','Merkez Mh.Mezarlık Sk. No:4 Küçükçekmece','195'),
('194','ATAKENT MAH. No:30 / KÜÇÜKÇEKMECE','196'),
('195','Tevfikbey Mah. Mektep Sok. No.11 Sefaköy/Küçükçekmece/İSTANBUL','197'),
('196','İdealtepe Akgüvercin Sk. No:4 Küçükyalı /Maltepe','198'),
('197','CEVİZLİ MAH. TOROS CAD. No:86 / MALTEPE','199'),
('198','Bağlarbaşı Mah.Bağdat Cd. No:475 Maltepe/ İstanbul','200'),
('199','ALTAYÇEŞME MAH. No:1 / MALTEPE','201'),
('200','CEVİZLİ MAH. BAĞDAT CAD. No:547 / MALTEPE','202'),
('201','YENİŞEHİR MAH. No:2 / PENDİK','203'),
('202','AHMET YESEVİ MAH. No:1 / PENDİK','204'),
('203','AHMET YESEVİ MAH. No:1 / PENDİK','205'),
('204','Doğu Mahallesi Yücel Sok.No:1','206'),
('205','Doğu Mh.Bilge Sk. No:16 Pendik','207'),
('206','Doğu Mh. Papatya Sk.No:15','208'),
('207','B.Evler Mh.Aydınlı Yolu Gonca Sk.No:7 Pendik','209'),
('208','FEVZİ ÇAKMAK MAH. No:9 / D 100 BULVARI PENDİK','210'),
('209','ÜstKaynarca Fevzi Çakmak Mh. Cemal Gürsel Cd.No:138 Pendik','211'),
('210','MECLİS MAH. ATATÜRK CAD. No:123 / Sarıgazi SANCAKTEPE','212'),
('211','SARIGAZİ MAH. No:34 / SANCAKTEPE','213'),
('212','DARÜŞŞAFAKA MAH. BÜYÜKDERE No:40 / SARIYER','214'),
('213','PİRİ MEHMET PAŞA MAH. No:4 / SİLİVRİ','215'),
('214','Alibey Mh.Ali Çetinkaya Cd.No:105 Silivri','216'),
('215','MİMAR SİNAN SİLİVRİ MAH. SANAYİ 55. SK. No:1 / SİLİVRİ','217'),
('216','Mehmet Akif Mh. Fatih Cd. No:175 Sultanbeyli','218'),
('217','Fatih Bulvarı No:105 Sultanbeyli','219'),
('218','Eski Londra Asfaltı No:48 Gaziosmanpaşa','220'),
('219','Gazi Mh.İsmetpaşa Cd.No:27 Gaziosmanpaşa','221'),
('220','UĞUR MUMCU MAH. ESKI EDIRNE ASFALTI CAD. No:608/A ve 608/B / SULTANGAZİ','222'),
('221','Piyalepaşa Bulvarı Okmeydanı Şişli','223'),
('222','19 MAYIS MAH. No:1 / ŞİŞLİ','224'),
('223','İNÖNÜ MAH. DOLAPDERE CAD. KUZU KULAĞI SK. No:26 / 11 Nizamiye Cad. No:1-9 ŞİŞLİ','225'),
('224','Fulya Mah. Yavuz Sok. N:7','226'),
('225','Büyükdere Cd.No:22/24 Şişli','227'),
('226','19 MAYIS MAH. No:38 / ŞİŞLİ','228'),
('227','Teşvikiye Mh.Ferah Sk. No:18 Şişli','229'),
('228','19 MAYIS MAH. No: / ŞİŞLİ','230'),
('229','FULYA MAH. AYTEKİN KOTİL (FULYA) CAD. No:25 / ŞİŞLİ','231'),
('230','Cemal Sair Sk. No.2 Mecidiyeköy/Şişli','232'),
('231','19 MAYIS MAH. No:5 / ŞİŞLİ','233'),
('232','Abide-i Hürriyet Cd. No:226/1 Şişli','234'),
('233','Elmadağ Yedikuyular Cd. No:6/1 Şişli','235'),
('234','19 MAYIS MAH. No:164 / ŞİŞLİ','236'),
('235','19 MAYIS MAH. No: / ŞİŞLİ','237'),
('236','Kaptanpaşa Mh. Ç.Havuzlar Sk. No:2/2 Şişli','238'),
('237','Nişantaşı Güzelbahçe Sk.No:20 Şişli','239'),
('238','Evliya Çelebi Mah.Sahilyolu Cad. No:2 Tuzla / İstanbul','240'),
('239','Yayla Mah. Vatan Cad. No:93','241'),
('240','Namık Kemal Mah. Sütçü İmam Cad. No:8 Ümraniye','243'),
('241','İstiklal Mah. Tabip Sok. No: 5 Ümraniye','244'),
('242','Alemdağ Cd.Sezer Sk. No:3-5 Ümraniye','245'),
('243','NAMIK KEMAL MAH. CENGİZ TOPEL CAD. No:90 / ÜMRANİYE','246'),
('244','Saray Mah. Site Yolu Cd.No:7 Ümraniye','247'),
('245','SARAY MAH. No:18 / ÜMRANİYE','248'),
('246','Altunizade Nuh Kuyusu Cd.No:88 Üsküdar','249'),
('247','ACIBADEM MAH. No:Altunizade Mah. Tophanelioğlu Cad. No:13 ve Yurtca / ÜSKÜDAR','250'),
('248','','251'),
('249','ACIBADEM MAH. No:73 / ÜSKÜDAR','252'),
('250','Güzeltepe Mah.Zübeyde Hanım Cd.No:15 Üsküdar','253'),
('251','Alemdağ Cd.No:85','254'),
('252','ACIBADEM MAH. No:52 / ÜSKÜDAR','255'),
('253','Mimar Sinan Mah. Selmanı Pak Cad. No: 77 Üsküdar','256'),
('254','Mimar Sinan Mah. Selmanipak Cad. No: 72','257'),
('255','ACIBADEM MAH. No:10 / ÜSKÜDAR','258'),
('256','İnkılap Mh. Katlı Otopark Arkası Sk. No:18 Üsküdar','259'),
('257','5. Telsiz Mah. 101 Sok. No.109 Zeytinburnu/İSTANBUL','260'),
('258','Lütfi Kırdar Cd.No:5 Zeytinburnu','261'),
('259','Çırpıcı Mh.Turan Güneş Cd. No:117 Zeytinburnu','262'),
('260','Zakirbaşı Sk.No:30 Zeytinburnu','263');


INSERT INTO HOSPITAL(HOSPITALID, NAME, ADDRESS_ID) VALUES
('1','ÖZEL ACIBADEM ANKARA HASTANESİ','1'),
('2','ÖZEL A LİFE PARK HOSPİTAL ANKARA HASTANESİ','2'),
('3','ÖZEL ANKARA GÜVEN HASTANESİ','3'),
('4','ÖZEL ANKARA UMUT HASTANESİ','4'),
('5','ÖZEL BAYINDIR HASTANESİ (SÖĞÜTÖZÜ)','5'),
('6','ÖZEL BAYINDIR KAVAKLIDERE HASTANESİ','6'),
('7','ÖZEL BİLGİ HASTANESİ','7'),
('8','ÖZEL BOYLAM PSİKİYATRİ HASTANESİ','8'),
('9','ÖZEL ÇANKAYA HASTANESİ','9'),
('10','ÖZEL ÇANKAYA YAŞAM HASTANESİ','10'),
('11','ÖZEL DÜNYA GÖZ DAL HASTANESİ','11'),
('12','ÖZEL ERYAMAN  HASTANESİ','12'),
('13','ÖZEL HRS ANKARA KADIN  HASTANESİ','13'),
('14','ÖZEL İNCEK FTR  HASTANESİ','14'),
('15','ÖZEL KEÇİÖREN HASTANESİ','15'),
('16','ÖZEL KORU ANKARA HASTANESİ (SİNCAN)','16'),
('17','ÖZEL KORU HASTANESİ','17'),
('18','ÖZEL KUDRET GÖZ  HASTANESİ','18'),
('19','ÖZEL KUDRET INTERNATIONAL HOSPITAL','19'),
('20','ÖZEL LİV HOSPİTAL ANKARA HASTANESİ','20'),
('21','ÖZEL LOKMAN HEKİM AKAY HASTANESİ','21'),
('22','ÖZEL LOKMAN HEKİM ANKARA HASTANESİ (SİNCAN)','22'),
('23','ÖZEL LOKMAN HEKİM HASTANESİ (ETLİK)','23'),
('24','ÖZEL LÖSANTE ÇOCUK VE YETİŞKİN HASTANESİ','24'),
('25','ÖZEL MEDİCANA INTERNATIONAL ANKARA HASTANESİ','25'),
('26','ÖZEL MEDİCALPARK ANKARA HASTANESİ','26'),
('27','ÖZEL MEDİSİS HASTANESİ','27'),
('28','ÖZEL MEDİSUN ÇAYYOLU HASTANESİ','28'),
('29','ÖZEL MEMORIAL ANKARA HASTANESİ','29'),
('30','ÖZEL NATOMED HASTANESİ','30'),
('31','ÖZEL ORTADOĞU 19 MAYIS HASTANESİ','31'),
('32','ÖZEL ORTADOĞU HASTANESİ','32'),
('33','ÖZEL POLATLI CAN HASTANESİ','33'),
('34','ÖZEL VSD NUSRET KARASU GÖĞÜS HASTALIKLARI HAST.','34'),
('35','ÖZEL YÜZÜNCÜYIL HASTANESİ','35'),
('36','SİNAN GÜZEL ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','36'),
('37','CEMALETTİN EKMEKCİOĞLU HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','37'),
('38','HAKAN ERTOK ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','38'),
('39','METE EDİZER ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','39'),
('40','SEYFETTİN TAYFUN AKSEKİ ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','40'),
('41','FEYYAZ UĞURLUOĞLU ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','41'),
('42','ŞERAFETTİN ÖZDOĞAN ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','42'),
('43','HAZEL KIR ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','43'),
('44','S.B.Ü. İZMİR BOZYAKA EĞİTİM VE ARAŞTIRMA HASTANESİ AKUPUNKTUR EĞİTİM MERKEZİ','44'),
('45','ALP CEMİL BUHARALI HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','45'),
('46','AYŞE EBRU YÜCETÜRK HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','46'),
('47','BAŞAK BİNGÖL ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','47'),
('48','MUTLU ECE İŞGÜZAR HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','48'),
('49','ABDULKADİR ŞÜKRÜ HAMİDİ HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','49'),
('50','AHMET TAYFUR YAĞCI HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','50'),
('51','AHMET TEPE ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','51'),
('52','ASUMAN ERGİCAN HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','52'),
('53','CEM GÖNÜL ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','53'),
('54','ELİF PETEK DERELİ ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','54'),
('55','EMİNE DEMİR BOLAT ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','55'),
('56','İBRAHİM BAĞCI HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','56'),
('57','MAZHAR ESERDAĞ ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','57'),
('58','MEHMET EŞREF ÖZGÜ ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','58'),
('59','MESUT CANER YUSUFOĞLU ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','59'),
('60','NİHAT ERGİCAN HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','60'),
('61','ÖZLEM AKNAR ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','61'),
('62','ŞÜKRÜ BAĞCIK ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','62'),
('63','TUBA KAVALA ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','63'),
('64','TEOMAN ALPAY DEMİREL ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','64'),
('65','ASUMAN ÖZKAN ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','65'),
('66','ÖDEMİŞ DEVLET HASTANESİ AKUPUNKTUR ÜNİTESİ','66'),
('67','NEŞE ERDİNÇ HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','67'),
('68','DOĞU YILDIRIM ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','68'),
('69','KEREM AL ÖZEL HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','69'),
('70','SEDA ÖZTÜRK HEKİM MUAYENEHANESİ AKUPUNKTUR ÜNİTESİ','70'),
('71','ÖZEL AVRUPA HOSPİTAL HASTANESİ','71'),
('72','Özel Ataşehir Florence Nightingale Hastanesi','72'),
('73','ÖZEL ATAŞEHİR HASTANESİ','73'),
('74','Özel Avicenna Hastanesi Ataşehir','74'),
('75','Özel Bayındır İçerenköy Hastanesi','75'),
('76','Özel Eren Hastanesi','76'),
('77','Özel Memorial Ataşehir Hastanesi','77'),
('78','ÖZEL AVCILAR ANADOLU HASTANESİ','78'),
('79','ÖZEL AVCILAR BAYPARK HASTANESİ','79'),
('80','ÖZEL AVCILAR HOSPİTAL HASTANESİ','80'),
('81','Özel Medicana Hospitals Avcılar Hastanesi','81'),
('82','ÖZEL BAĞCILAR MEDİLİFE HASTANESİ','82'),
('83','Özel Güneşli Erdem Hastanesi','83'),
('84','ÖZEL HASTANE34 HASTANESİ','84'),
('85','Özel Hospitalist Hastanesi','85'),
('86','Özel İstanbul Medicine Hospital Hastanesi','86'),
('87','Özel Medipol Mega Hastane Kompleksi','87'),
('88','Özel Niv Göz Hastanesi','88'),
('89','Özel Safa Hastanesi','89'),
('90','Özel Yeni İklim Hastanesi','90'),
('91','İSTANBUL ÖZEL MEMORİAL HİZMET HASTANESİ','91'),
('92','ÖZEL A HASTANESİ','92'),
('93','ÖZEL AİLE HASTANESİ','93'),
('94','ÖZEL ATAKÖY HASTANESİ','94'),
('95','ÖZEL İLKE HASTANESİ','95'),
('96','ÖZEL İSTANBUL GÖZ HASTANESİ','96'),
('97','ÖZEL MEDİAN HASTANESİ','97'),
('98','ÖZEL MEDİCAL PARK BAHÇELİEVLER HASTANESİ','98'),
('99','Özel Medicana Hospitals Bahçelievler Hastanesi','99'),
('100','Özel Medicana Hospitals Haznedar Hastanesi','100'),
('101','ÖZEL MEMORİAL BAHÇELİEVLER HASTANESİ','101'),
('102','Özel Nisa Hastanesi','102'),
('103','Özel Vital Hospital Hastanesi','103'),
('104','Özel Yaşam Hastanesi (FAALİYETİ ASKIDA)','104'),
('105','Özel Yenibosna Safa Hastanesi','105'),
('106','Özel Dünya Göz Hastanesi Ataköy','106'),
('107','Özel Acıbadem Bakırköy Hastanesi','107'),
('108','Özel Acıbadem İnternational Hastanesi','108'),
('109','Özel Çamlık Hastanesi','109'),
('110','Özel Ethica İncirli Hastanesi','110'),
('111','Özel Yaşar Hastanesi','111'),
('112','ÖZEL BAYPARK HOSPİTAL HASTANESİ','112'),
('113','Özel Bayrampaşa Hastanesi (FAALİYETİ ASKIDA)','113'),
('114','Özel Bayrampaşa Kolan Hospital Hastanesi','114'),
('115','Özel Göz Nurunu Koruma Vakfı Bayrampaşa Göz Hastanesi','115'),
('116','ÖZEL ACIBADEM FULYA HASTANESİ','116'),
('117','ÖZEL DENTİSTANBUL DİŞ HASTANESİ','117'),
('118','ÖZEL DÜNYA GÖZ HASTANESİ ETİLER','118'),
('119','ÖZEL ESTETHİCA LEVENT HASTANESİ','119'),
('120','ÖZEL ETİLER HASTANESİ','120'),
('121','Özel Gayrettepe Florence Nightingale Hastanesi','121'),
('122','ÖZEL LİV HOSPİTAL ULUS HASTANESİ','122'),
('123','ÖZEL OTA-JİNEMED HASTANESİ','123'),
('124','ÖZEL MEDİSTATE KAVACIK HASTANESİ','124'),
('125','ÖZEL BEYLİKDÜZÜ KOLAN HOSPİTAL HASTANESİ','125'),
('126','ÖZEL BEYLİKDÜZÜ MEDİLİFE HASTANESİ','126'),
('127','ÖZEL BİRİNCİ HASTANESİ','127'),
('128','ÖZEL BİRİNCİGÖZ HASTANESİ','128'),
('129','Özel Medicana İnternational İstanbul Hastanesi','129'),
('130','Özel Alman Hastanesi Universal Hospitals Grup (FAALİYETİ ASKIDA)','130'),
('131','ÖZEL AVUSTURYA SEN JORJ HASTANESİ','131'),
('132','ÖZEL OKMEYDANI HASTANESİ','132'),
('133','Özel Büyükçekmece Kolan Hospital Hastanesi','133'),
('134','ÖZEL AVİCENNA HASTANESİ','134'),
('135','Özel Esenler Ensar Hastanesi Avicenna','135'),
('136','Özel Güney Hastanesi','136'),
('137','ÖZEL DOĞA HOSPİTAL HASTANESİ','137'),
('138','ÖZEL ESENCAN HASTANESİ','138'),
('139','ÖZEL ESLİFE HOSPİTAL ESENYURT HASTANESİ (FAAL DEĞİL)','139'),
('140','ÖZEL REYAP İSTANBUL HASTANESİ','140'),
('141','ÖZEL ALİBEY HOSPİTAL HASTANESİ','141'),
('142','ÖZEL EYÜP HALİÇ HOSPITAL HASTANESİ','142'),
('143','İstanbul Medipol Üniversitesi Sağlık Uygulama Hastanesi (AKTİF DEĞİL)','143'),
('144','ÖZEL BALAT OR-AHAYİM MUSEVİ HASTANESİ VAKFI İKTİSADİ İŞLETMESİ','144'),
('145','ÖZEL ÇAPA HASTANESİ','145'),
('146','ÖZEL ÇAPA MEDİLİFE HASTANESİ','146'),
('147','ÖZEL FATİH HASTANESİ','147'),
('148','ÖZEL MEDİCANA HASTANESİ (FAALİYETİ ASKIDA)','148'),
('149','ÖZEL MEDİKAL PARK HOSPİTAL HASTANESİ','149'),
('150','ÖZEL UNİVERSAL AKSARAY HASTANESİ (FAALİYETİ ASKIDA)','150'),
('151','ÖZEL ASYA HASTANESİ','151'),
('152','ÖZEL AVRASYA HASTANESİ GAZİOSMANPAŞA','152'),
('153','ÖZEL AVRUPA ŞAFAK HASTANESİ','153'),
('154','ÖZEL BAŞARI HASTANESİ','154'),
('155','ÖZEL BİLGE HASTANESİ','155'),
('156','ÖZEL DUYGU HASTANESİ','156'),
('157','ÖZEL İSTANBUL ŞAFAK HASTANESİ','157'),
('158','ÖZEL MEDİCALPARK GAZİOSMANPAŞA HASTANESİ','158'),
('159','ÖZEL ORTOMEDİCA HASTANESİ','159'),
('160','ÖZEL YILDIZ ACADEMİA HASTANESİ','160'),
('161','Yeni Yüzyıl Üniversitesi Özel Gaziosmanpaşa Hastanesi','161'),
('162','ÖZEL GÜNGÖREN HASTANESİ','162'),
('163','ÖZEL İLGİ HASTANESİ','163'),
('164','ÖZEL KOLAN HASTANESİ (FAALİYETİ ASKIDA)','164'),
('165','Özel Meltem Hastanesi ve Doğum Hastanesi','165'),
('166','ÖZEL ACIBADEM HASTANESİ','166'),
('167','ÖZEL ACIBADEM KOZYATAĞI HASTANESİ','167'),
('168','ÖZEL ACIBADEM KOZYATAĞI HASTANESİ (RUHSATI İPTAL OLDU)','168'),
('169','ÖZEL ÇAĞINER HASTANESİ','169'),
('170','ÖZEL DOKTOR NAZİF BAĞRIAÇIK KADIKÖY HASTANESİ','170'),
('171','ÖZEL GÖZTEPE HASTANESİ','171'),
('172','ÖZEL İSTANBUL MEDİPOL HASTANESİ','172'),
('173','ÖZEL KADIKÖY FLORENCE NİGHTİNGALE HASTANESİ','173'),
('174','ÖZEL KADIKÖY ŞİFA HASTANESİ (AKTİF DEĞİL)','174'),
('175','ÖZEL KOZYATAĞI CENTRAL HOSPITAL HASTANESİ','175'),
('176','ÖZEL MEDİCAL PARK GÖZTEPE HASTANE KOMPLEKSİ (GENEL-KANSER-DENTİSTANBUL AĞIZ VE DİŞ HASTANESİ)','176'),
('177','ÖZEL MEDİCANA KADIKÖY HASTANESİ','177'),
('178','ÖZEL MEDİTİME HASTANESİ (AKTİF DEĞİL)','178'),
('179','ÖZEL AVİCENNA HASTANESİ GÜLTEPE','179'),
('180','ÖZEL DERİNDERE HASTANESİ','180'),
('181','ÖZEL LEVENT HASTANESİ','181'),
('182','ÖZEL ATALAR HASTANESİ','182'),
('183','ÖZEL AVİCENNA UMUT HASTANESİ','183'),
('184','ÖZEL BİRLİK HASTANESİ','184'),
('185','ÖZEL İSTANBUL İBNİ SİNA HASTANESİ','185'),
('186','ÖZEL VERA HASTANESİ','186'),
('187','TÜRK KIZILAYI ÖZEL KARTAL HASTANESİ','187'),
('188','Acıbadem Üniversitesi Özel Acıbadem Atakent Hastanesi','188'),
('189','ÖZEL AKGÜN TEM HASTANESİ (FAALİYETİ ASKIDA)','189'),
('190','ÖZEL BATI BAHAT HOSPİTAL HASTANESİ','190'),
('191','ÖZEL DOĞAN HASTANESİ','191'),
('192','ÖZEL DR.SADIK AHMET HASTANESİ','192'),
('193','ÖZEL HALKALI KENT HASTANESİ','193'),
('194','ÖZEL İSTANBUL HOSPITAL HASTANESİ','194'),
('195','ÖZEL RUMELİ HOSPİTAL HASTANESİ','195'),
('196','ÖZEL DELTA HOSPITAL HASTANESİ','196'),
('197','ÖZEL İSTANBUL ONKOLOJİ HASTANESİ','197'),
('198','ÖZEL MALTEPE BÖLGE HASTANESİ','198'),
('199','ÖZEL MALTEPE ERSOY HASTANESİ','199'),
('200','ÖZEL MEHMET TOPRAK HASTANESİ','200'),
('201','ÖZEL ADATIP KURTKÖY HASTANESİ','201'),
('202','ÖZEL EMSEY HOSPİTAL HASTANESİ','202'),
('203','ÖZEL KURTKÖY ERSOY HASTANESİ','203'),
('204','ÖZEL PENDİK BÖLGE HASTANESİ','204'),
('205','ÖZEL PENDİK HOSPİTAL HASTANESİ','205'),
('206','ÖZEL REMEDY HOSPİTAL HASTANESİ','206'),
('207','ÖZEL ŞİFA HASTANESİ','207'),
('208','ÖZEL VM MEDİCALPARK PENDİK HASTANESİ','208'),
('209','Özel Yüzyıl Hastanesi Pendik','209'),
('210','ÖZEL İSTANBUL BÖLGE HASTANESİ','210'),
('211','Özel Via Hospital Sancaktepe Hastanesi (FAALİYETİ ASKIDA)','211'),
('212','ÖZEL ACIBADEM MASLAK HASTANESİ','212'),
('213','Özel Silivri Hayat Hastanesi (AKTİF DEĞİL)','213'),
('214','ÖZEL SİLİVRİ KOLAN HOSPİTAL HASTANESİ','214'),
('215','ÖZEL SİLİVRİ MEDİCAL PARK HASTANESİ','215'),
('216','ÖZEL ERSOY HASTANESİ','216'),
('217','ÖZEL SAYGI HASTANESİ','217'),
('218','ÖZEL BAHAT HOSPİTAL HASTANESİ','218'),
('219','ÖZEL GAZİ HASTANESİ','219'),
('220','ÖZEL MEDİGOLD SULTAN HASTANESİ','220'),
('221','ÖZEL MEMORIAL ŞİŞLİ HASTANESİ','221'),
('222','ÖZEL 29 MAYIS HASTANESİ (AKTİF DEĞİL)','222'),
('223','ÖZEL ACIBADEM TAKSİM HASTANESİ','223'),
('224','ÖZEL DORA HOSPİTAL HASTANESİ','224'),
('225','ÖZEL FRANSIZ LAPE HASTANESİ','225'),
('226','Özel Hospitalium Şişli Hastanesi (FAALİYETİ ASKIDA)','226'),
('227','ÖZEL İSTANBUL CERRAHİ HASTANESİ','227'),
('228','ÖZEL İSTANBUL FLORANCE NİGHTİNGALE HASTANESİ','228'),
('229','ÖZEL KADIOĞLU HASTANESİ','229'),
('230','ÖZEL MECİDİYEKÖY ÇEVRE HASTANESİ','230'),
('231','ÖZEL NİŞANTAŞI HASTANESİ','231'),
('232','ÖZEL OSMANOĞLU HASTANESİ','232'),
('233','ÖZEL SURP AGOP HASTANESİ','233'),
('234','ÖZEL ŞİŞLİ FLORENCE NIGHTINGALE HASTANESİ','234'),
('235','Özel Şişli Kolan International Hospital Hastanesi','235'),
('236','Özel Türkiye Gazetesi Hastanesi','236'),
('237','ÖZEL VKV AMERİKAN HASTANESİ','237'),
('238','Özel GSM Gisbir Sağlık Merkezi Hastanesi','238'),
('239','ÖZEL TUZLA HASTANESİ','239'),
('240','ÖZEL AFİYET HASTANESİ','240'),
('241','ÖZEL ATLAS HASTANESİ','241'),
('242','ÖZEL ERDEM HASTANESİ','242'),
('243','ÖZEL HİSAR ÇAMLICA HASTANESİ','243'),
('244','Özel Hisar Intercontinental Hospital Hastanesi','244'),
('245','ÖZEL NP İSTANBUL BEYİN HASTANESİ','245'),
('246','ÖZEL ACADEMİC HOSPİTAL HASTANESİ','246'),
('247','ÖZEL ACIBADEM ALTUNİZADE HASTANESİ','247'),
('248','ÖZEL ÇAMLICA ERDEM HASTANESİ','248'),
('249','Özel Hospitalium Çamlıca Hastanesi (FAALİYETİ ASKIDA)','249'),
('250','ÖZEL MEDIVIA HOSPİTAL HASTANESİ','250'),
('251','ÖZEL MEDİCANA HOSPİTALS ÇAMLICA HASTANESİ','251'),
('252','ÖZEL MOODİST HASTANESİ','252'),
('253','ÖZEL ÜSKÜDAR ANADOLU HASTANESİ','253'),
('254','ÖZEL ÜSKÜDAR HOSPİTALTÜRK HASTANESİ','254'),
('255','Özel Via Hospital Selimiye Hastanesi (FAALİYETİ ASKIDA)','255'),
('256','Özel Yunus Emre Hastanesi','256'),
('257','ÖZEL AVRASYA HASTANESİ','257'),
('258','ÖZEL İSTANBUL BALIKLI RUM HASTANESİ','258'),
('259','ÖZEL SANTE PLUS HASTANESİ','259'),
('260','Özel Yedikule Surp Pırgiç Ermeni Hastanesi','260');

