	if (TransMenu.isSupported()) {
	var ms = new TransMenuSet(TransMenu.direction.down, 1, 0, TransMenu.reference.bottomLeft);
	
		var menu1 = ms.addMenu(document.getElementById("ajansspor"));
		menu1.addItem("G�n�n Haberleri", "/gununhaberleri/"); 
		menu1.addItem("Oyunlar", ""); // send no URL if nothing should happen onclick
		menu1.addItem("Y�ld�zlar�n Alt�nda", "/yildizlar/");
		menu1.addItem("En B�y�k Kim?", "/enbuyukkim/");
		menu1.addItem("R�portajlar", "/roportaj");
		menu1.addItem("Spor Ekran�", "/sporekrani/");
		menu1.addItem("Spor Rehberi", "/rehber/");
		menu1.addItem("Fotograf Galerisi", "/galeri/");
		menu1.addItem("Haber Payla��m", "/tools/haberpaylas.asp");
		menu1.addItem("Logo&Melodi", "/mobil/");
		menu1.addItem("�leti�im", "");
		menu1.addItem("K�nye", "javascript:kunye()");
		
		var submenu0 = menu1.addMenu(menu1.items[1]);
		submenu0.addItem("Betabahis.com", "http://www.betabahis.com");
		submenu0.addItem("Fantazi Futbol", "http://superlig.ajansspor.com");
		submenu0.addItem("Fantazi Formula", "http://www.sanalf1.com");
		
		
		var submenu1 = menu1.addMenu(menu1.items[10]);
		submenu1.addItem("Reklam", "http://www.ajansspor.com/tools/kontak.asp?a=2");
		submenu1.addItem("Yard�m", "http://www.ajansspor.com/tools/kontak.asp?a=3");
		submenu1.addItem("Kontak", "http://www.ajansspor.com/tools/kontak.asp?a=1");
	

		var menu2 = ms.addMenu(document.getElementById("formula"));
		menu2.addItem("Formula Anasayfa", "/motorsporlari/formula/");
		menu2.addItem("2007 Yar�� Takvimi", "/motorsporlari/formula/takvim");
		menu2.addItem("2007 S�ralamalar", "/motorsporlari/formula/siralamalar.html");
		menu2.addItem("Tak�mlar", "/motorsporlari/formula/Mclaren.html");
		menu2.addItem("S�r�c�ler", "/motorsporlari/formula/Fernando_Alonso.html");
		menu2.addItem("Pistler", "/motorsporlari/formula/Istanbul_Park.html");
		
		
		var menu3 = ms.addMenu(document.getElementById("futbol"));
		menu3.addItem("Futbol Anasayfa", "/futbol/");
		menu3.addItem("�DDAA OYNA", "/iddaa/");
		menu3.addItem("Canl� Sonu�lar", "/canlisonuclar/");
		menu3.addItem("Turkcell S�per Lig", "/futbol/superlig/");
		menu3.addItem("T.Telekom 2. Lig A", "/futbol/2liga/");
		menu3.addItem("2. Lig B Y�kselme Grubu", "/futbol/2ligbyukselme/");
		menu3.addItem("�ddaa 2. Lig B Kat.", "");
		menu3.addItem("3.Lig", "");
		menu3.addItem("Fortis T�rkiye Kupas�", "/futbol/turkiyekupasi/");
		menu3.addItem("Euro 2008", "/euro2008/");
		menu3.addItem("D�nya Ligleri.", "");
		menu3.addItem("�ampiyonlar Ligi", "/futbol/sampiyonlarligi/");
		menu3.addItem("UEFA KUPASI", "/futbol/uefakupasi/");	
		menu3.addItem("Federasyondan Haberler", "/futbol/federasyon/");
		menu3.addItem("Genel Futbol Haberleri", "/futbol/genel/");
			
			
		var submenu3 = menu3.addMenu(menu3.items[3]);
		submenu3.addItem("S�perlig Anasayfa", "/futbol/superlig/");
		submenu3.addItem("2006-2007 Puan Durumu", "/futbol/superlig/puandurumu_2007");
		submenu3.addItem("2006-2007 Fikstur", "/futbol/superlig/fikstur_2007");
		
		var submenu4 = menu3.addMenu(menu3.items[4]);
		submenu4.addItem("2 Lig A Anasayfa", "/futbol/2liga/");
		submenu4.addItem("2006-2007 Puan Durumu", "/futbol/2liga/puandurumu_2007");
		submenu4.addItem("2006-2007 Fikstur", "/futbol/2liga/fikstur_2007");
		
		var submenu70 = menu3.addMenu(menu3.items[5]);
		submenu70.addItem("Y�kselme Anasayfa", "/futbol/2ligbyukselme/");
		submenu70.addItem("2006-2007 Puan Durumu", "/futbol/2ligbyukselme/puandurumu_2007");
		submenu70.addItem("2006-2007 Fikstur", "/futbol/2ligbyukselme/fikstur_2007");
		
		var submenu5 = menu3.addMenu(menu3.items[6]);
		submenu5.addItem("1. Grup", "/futbol/2ligb1/");
		submenu5.addItem("2. Grup", "/futbol/2ligb2/");
		submenu5.addItem("3. Grup", "/futbol/2ligb3/");
		submenu5.addItem("4. Grup", "/futbol/2ligb4/");
		submenu5.addItem("5. Grup", "/futbol/2ligb5/")		
			
		var submenu51 = submenu5.addMenu(submenu5.items[0]);
		submenu51.addItem("1. Grup Anasayfa", "/futbol/2ligb1/");
		submenu51.addItem("2006-2007 Puan Durumu", "/futbol/2ligb1/puandurumu_2007");
		submenu51.addItem("2006-2007 Fikstur", "/futbol/2ligb1/fikstur_2007");

		var submenu52 = submenu5.addMenu(submenu5.items[1]);
		submenu52.addItem("2. Grup Anasayfa", "/futbol/2ligb2/");
		submenu52.addItem("2006-2007 Puan Durumu", "/futbol/2ligb2/puandurumu_2007");
		submenu52.addItem("2006-2007 Fikstur", "/futbol/2ligb2/fikstur_2007");

		var submenu53 = submenu5.addMenu(submenu5.items[2]);
		submenu53.addItem("3. Grup Anasayfa", "/futbol/2ligb3/");
		submenu53.addItem("2006-2007 Puan Durumu", "/futbol/2ligb3/puandurumu_2007");
		submenu53.addItem("2006-2007 Fikstur", "/futbol/2ligb3/fikstur_2007");

		var submenu54 = submenu5.addMenu(submenu5.items[3]);
		submenu54.addItem("4. Grup Anasayfa", "/futbol/2ligb4/");
		submenu54.addItem("2006-2007 Puan Durumu", "/futbol/2ligb4/puandurumu_2007");
		submenu54.addItem("2006-2007 Fikstur", "/futbol/2ligb4/fikstur_2007");
			var submenu55 = submenu5.addMenu(submenu5.items[4]);
		submenu55.addItem("5. Grup Anasayfa", "/futbol/2ligb5/");
		submenu55.addItem("2006-2007 Puan Durumu", "/futbol/2ligb5/puandurumu_2007");
		submenu55.addItem("2006-2007 Fikstur", "/futbol/2ligb5/fikstur_2007");
		
		
		var submenu6 = menu3.addMenu(menu3.items[7]);
		submenu6.addItem("1. Grup", "/futbol/3lig1/");
		submenu6.addItem("2. Grup", "/futbol/3lig2/");
		submenu6.addItem("3. Grup", "/futbol/3lig3/");
		submenu6.addItem("4. Grup", "/futbol/3lig4/");
		
		var submenu61 = submenu6.addMenu(submenu6.items[0]);
		submenu61.addItem("1. Grup Anasayfa", "/futbol/3lig1/");
		submenu61.addItem("2006-2007 Puan Durumu", "/futbol/3lig1/puandurumu_2007");
		submenu61.addItem("2006-2007 Fikstur", "/futbol/3lig1/fikstur_2007");
				
					var submenu62 = submenu6.addMenu(submenu6.items[1]);
		submenu62.addItem("2. Grup Anasayfa", "/futbol/3lig2/");
		submenu62.addItem("2006-2007 Puan Durumu", "/futbol/3lig2/puandurumu_2007");
		submenu62.addItem("2006-2007 Fikstur", "/futbol/3lig2/fikstur_2007");
		
			var submenu63 = submenu6.addMenu(submenu6.items[2]);
		submenu63.addItem("3. Grup Anasayfa", "/futbol/3lig3/");
		submenu63.addItem("2006-2007 Puan Durumu", "/futbol/3lig3/puandurumu_2007");
		submenu63.addItem("2006-2007 Fikstur", "/futbol/3lig3/fikstur_2007");
		
			var submenu64 = submenu6.addMenu(submenu6.items[3]);
		submenu64.addItem("1. Grup Anasayfa", "/futbol/3lig4/");
		submenu64.addItem("2006-2007 Puan Durumu", "/futbol/3lig4/puandurumu_2007");
		submenu64.addItem("2006-2007 Fikstur", "/futbol/3lig4/fikstur_2007");
		
		var submenu7 = menu3.addMenu(menu3.items[10]);
		submenu7.addItem("Almanya", "/futbol/almanya/");
		submenu7.addItem("�ngiltere", "/futbol/ingiltere");
		submenu7.addItem("�spanya", "/futbol/ispanya");
		submenu7.addItem("�talya", "/futbol/italya");
		submenu7.addItem("Hollanda", "/futbol/hollanda");
		submenu7.addItem("Fransa", "/futbol/fransa");
		submenu7.addItem("Bel�ika", "/futbol/belcika");
		submenu7.addItem("Diger Ligler", "/futbol/dunyadanfutbol");
		
		
		var menu4 = ms.addMenu(document.getElementById("basketbol"));
		menu4.addItem("Basketbol Anasayfa", "/basketbol/");
		menu4.addItem("Canl� Basketbol Sonu�lar�", "http://www.skoryum.com/basketbol/");
		menu4.addItem("Milli Tak�m", "/basketbol/millitakim/");
		menu4.addItem("BEKO TBL", "/basketbol/tbl/");
		menu4.addItem("TBBL", "/basketbol/tbbl/");
		menu4.addItem("NBA", "/basketbol/nba/");
			menu4.addItem("Euro League", "/basketbol/euroleague/");
		menu4.addItem("Tad�m TK Erkekler", "/basketbol/turkiyekupasierkek/");
		menu4.addItem("Tad�m TK Bayanlar", "/basketbol/turkiyekupasibayan/");
		menu4.addItem("Genel Haberler", "/basketbol/genel/");
		menu4.addItem("2006 D�nya B. �amp.", "/2006dunyabasket/");

		var submenu8 = menu4.addMenu(menu4.items[3]);
		submenu8.addItem("TBL Anasayfa", "/basketbol/tbl");
		submenu8.addItem("Puan Durumu", "/basketbol/tbl/puandurumu_2007");
		submenu8.addItem("Fikst�r&Sonu�lar", "/basketbol/tbl/fikstur_2007");

		var submenu9 = menu4.addMenu(menu4.items[4]);
		submenu9.addItem("TBBL Anasayfa", "/basketbol/tbbl");
		submenu9.addItem("Puan Durumu", "/basketbol/tbbl/puandurumu_2007");
		submenu9.addItem("Fikst�r&Sonu�lar", "/basketbol/tbbl/fikstur_2007");
		
		var submenu10 = menu4.addMenu(menu4.items[5]);
		submenu10.addItem("NBA Anasayfa", "/basketbol/nba");
		submenu10.addItem("Puan Durumu", "/basketbol/nba/puandurumu_2007");
		submenu10.addItem("Fikst�r&Sonu�lar", "/basketbol/nba/fikstur_2007");
		
		var submenu11 = menu4.addMenu(menu4.items[6]);
		submenu11.addItem("Euro League Anasayfa", "/basketbol/euroleague");
		submenu11.addItem("Puan Durumu", "/basketbol/euroleague/puandurumu_2007");
		submenu11.addItem("Fikst�r&Sonu�lar", "/basketbol/euroleague/fikstur_2007");

		
		
				var menu5 = ms.addMenu(document.getElementById("voleybol"));
		menu5.addItem("Voleybol Anasayfa", "/voleybol/");
		menu5.addItem("Milli Tak�m", "/voleybol/millitakim/");
		menu5.addItem("1. Lig Bayanlar", "/voleybol/1ligbayan/");
		menu5.addItem("1. Lig Erkekler", "/voleybol/1ligerkek/");
		menu5.addItem("Beach Volley", "/voleybol/beachvolley/");
	
		
		var submenu12 = menu5.addMenu(menu5.items[2]);
		submenu12.addItem("Bayanlar Anasayfa", "/voleybol/1ligbayan");
		submenu12.addItem("Puan Durumu", "/voleybol/1ligbayan/puandurumu_2007");
		submenu12.addItem("Fikst�r&Sonu�lar", "/voleybol/1ligbayan/fikstur_2007");
var submenu13 = menu5.addMenu(menu5.items[3]);
		submenu13.addItem("Erkekler Anasayfa", "/voleybol/1ligerkek");
		submenu13.addItem("Puan Durumu", "/voleybol/1ligerkek/puandurumu_2007");
		submenu13.addItem("Fikst�r&Sonu�lar", "/voleybol/1ligerkek/fikstur_2007");



			var menu6 = ms.addMenu(document.getElementById("hentbol"));
		menu6.addItem("Hentbol Anasayfa", "/hentbol/");
		menu6.addItem("Milli Tak�m", "/hentbol/millitakim/");
		menu6.addItem("S�perlig Bayanlar", "/hentbol/superligbayan/");
		menu6.addItem("S�perLig Erkekler", "/hentbol/superligerkek/");
		menu6.addItem("Plaj Hentbol�", "/hentbol/plajhentbolu/");
		
		var submenu14 = menu6.addMenu(menu6.items[2]);
		submenu14.addItem("Bayanlar Anasayfa", "/hentbol/superligbayan");
		submenu14.addItem("Puan Durumu", "/hentbol/superligbayan/puandurumu_2007");
		submenu14.addItem("Fikst�r&Sonu�lar", "/hentbol/superligbayan/fikstur_2007");
		
		var submenu15 = menu6.addMenu(menu6.items[3]);
		submenu15.addItem("Erkekler Anasayfa", "/hentbol/superligerkek");
		submenu15.addItem("Puan Durumu", "/hentbol/superligerkek/puandurumu_2007");
		submenu15.addItem("Fikst�r&Sonu�lar", "/hentbol/superligerkek/fikstur_2007");
		
		
		
		var menu7 = ms.addMenu(document.getElementById("motorsporlari"));
		menu7.addItem("Motorsporlar� Anasayfa", "/motorsporlari/");
		menu7.addItem("Formula 1", "/motorsporlari/formula/");
		menu7.addItem("Moto GP", "/motorsporlari/motogp/");
		menu7.addItem("Ralli", "/motorsporlari/ralli/");
		menu7.addItem("Ralli Kros", "/motorsporlari/rallikros/");
		menu7.addItem("Pist", "/motorsporlari/pist/");
		menu7.addItem("T�rmanma", "/motorsporlari/t�rmanma/");
		menu7.addItem("Drag", "/motorsporlari/drag/");
		menu7.addItem("Karting", "/motorsporlari/karting/");
		menu7.addItem("Motosiklet", "/motorsporlari/motorsiklet/");
		menu7.addItem("Formula 3", "/motorsporlari/formula3/");
		menu7.addItem("Off Road", "/motorsporlari/offroad/");
		
		var menu8 = ms.addMenu(document.getElementById("golf"));
		menu8.addItem("Golf Anasayfa", "/golf/");
		menu8.addItem("T�rkiye'den Haberler", "/golf/turkiye");
		menu8.addItem("D�nyadan Haberler", "/golf/dunya");
		menu8.addItem("S�ralamalar", "/golf/dunya_siralamasi.html");
		menu8.addItem("Golf Kul�pleri", "/golf/golfkulupleri.html");
		menu8.addItem("T�rkiye'de Golf Turizmi", "/golf/turizm.html");
		menu8.addItem("Golf Federasyonu", "/golf/golf_federasyonu.html");
		menu8.addItem("Milli Tak�m", "/golf/millitakim.html");
		menu8.addItem("Temel Golf Kurallar�", "/golf/temelgolfkurallari.html");
		menu8.addItem("Golf Tarihi", "/golf/golftarihi.html");
		menu8.addItem("Zaman �izelgesi", "/golf/zaman1.html");
		
		var menu9 = ms.addMenu(document.getElementById("diger"));
		menu9.addItem("A-B", "");
		menu9.addItem("C-D-E-G-H", "");
		menu9.addItem("J-K-M-O-S", "");
		menu9.addItem("T-V-Y", "");
	
		var submenu17 = menu9.addMenu(menu9.items[0]);
		submenu17.addItem("Amerikan Futbolu", "/amerikanfutbolu/");
		submenu17.addItem("At Yar��", "/atyarisi/");
		submenu17.addItem("At�c�l�k", "/aticilik/");
		submenu17.addItem("Atletizm", "/atletizm/");
		submenu17.addItem("Badminton", "/Badminton/");
		submenu17.addItem("Bilardo", "/Bilardo/");
		submenu17.addItem("Binicilik", "/Binicilik/");
		submenu17.addItem("Bisiklet", "/Bisiklet/");
		submenu17.addItem("Boks", "/boks/");
		submenu17.addItem("Bowling", "/bowling/");
		submenu17.addItem("Bri�", "/bric/");
		submenu17.addItem("Buz Hokeyi", "/buzhokeyi/");
		submenu17.addItem("Buz Sporlar�", "/buzsporlari/");
		
		var submenu18 = menu9.addMenu(menu9.items[1]);
		submenu18.addItem("Cimnastik", "/Cimnastik/");
		submenu18.addItem("�im Hokeyi", "/cimhokeyi/");
		submenu18.addItem("Da�c�l�k", "/dagcilik/");
		submenu18.addItem("Genel", "/genel/");
		submenu18.addItem("Engelliler", "/Engelliler/");
		submenu18.addItem("Eskrim", "/Eskrim/");
		submenu18.addItem("G�re�", "/gures/");
		submenu18.addItem("Halter", "/Halter/");
		submenu18.addItem("Hentbol", "/Hentbol/");
		
		var submenu19 = menu9.addMenu(menu9.items[2]);
		submenu19.addItem("Judo Aikido", "/judoaikido/");
		submenu19.addItem("Karate", "/karate/");
		submenu19.addItem("Kayak", "/Kayak/");
		submenu19.addItem("Kick Boks", "/kickboks/");
		submenu19.addItem("K�rek", "/kurek/");
		submenu19.addItem("Masa Tenisi", "/masatenisi/");
		submenu19.addItem("Ok�uluk", "/okculuk/");
		submenu19.addItem("Olimpiyatlar", "/olimpiyat/");
		submenu19.addItem("Satran�", "/satranc/");
		submenu19.addItem("Sutopu", "/Sutopu/");
		
		var submenu20 = menu9.addMenu(menu9.items[3]);
		submenu20.addItem("Tekvando", "/Tekvando/");
		submenu20.addItem("Tenis", "/Tenis/");
		submenu20.addItem("V�cut Geli�tirme", "/vucutgelistirme/");
		submenu20.addItem("Yelken", "/Yelken/");
		submenu20.addItem("Y�zme", "/yuzme/");
		
		
		var submenu16 = submenu19.addMenu(submenu19.items[7]);
		submenu16.addItem("Olimpiyat Anasayfa", "/olimpiyat/");
		submenu16.addItem("Torino 2006", "/torino2006/");

		var submenu17 = submenu20.addMenu(submenu20.items[1]);
		submenu17.addItem("Tenis Anasayfa", "/tenis/");
		submenu17.addItem("Tenis E�itim", "/tenis/egitim/");

		TransMenu.renderAll();
	}