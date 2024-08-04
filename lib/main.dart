import 'package:flutter/material.dart';
import 'class.dart';
import 'tarifdetay.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  void _showTarifDetay(BuildContext context, Tarif tarif) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TarifDetayi(tarif: tarif),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'AKŞAM YEMEĞİNE NE PİŞİRSEM',
            style: TextStyle(fontSize: 25,color: Colors.black),
          ),
        ),
        body: YemekListesi(_showTarifDetay),
      ),
    );
  }
}

class YemekListesi extends StatelessWidget {
  final List<Tarif> tarifler = [
    Tarif(adi: 'Adana Kebap', malzemeler: '500 gr kıyma\n,1 adet soğan\n,100 gr kuyruk yağı ya da iki yemek kaşığı tereyağ\n,1 adet kapya biber\n,1 çay kaşığı biber salçası\n,Tuz\n, karabiber\n, isteğe bağlı pul biber',yapimi:'Soğan ve kapya biberi rondodan geçirin, suyunu sıkıp kıymaya ekleyin. Tuz ve karabiberle yoğurup dolapta dinlendirin. Lavaş için un hariç malzemeleri karıştırın, kontrollü şekilde un ekleyip yoğurun ve mayalandırın. Hamuru açıp pişirin. Dinlenmiş kıymayı şişe geçirip kebap şeklinde pişirin ve lavaşla servis edin. Afiyet olsun!'),
    Tarif(adi: 'Bulgur Pilavı', malzemeler: '2 su bardağı pilavlık bulgur\n,2 adet domates\n,1 adet soğan\n,2 adet sivri biber\n,1 su bardağı tavuk suyu\n,2,5 su bardağı sıcak su (tavuk suyu da kullanabilirsiniz)\n,4 yemek kaşığı sıvı yağ\n,Tuz\n', yapimi:'Soğanları ince kıyın ve sıvı yağda kavurun. Doğranmış sivri biberi ve rende domatesi ekleyip kavurmaya devam edin. Bulguru ekleyin, ardından sıcak tavuk suyu ve sıcak su ekleyin. Tuz ekleyip karıştırın, kapağı kapatıp kısık ateşte pişirin. Dinlendirdikten sonra servis edin. Afiyet olsun!'),
    Tarif(adi: 'Düğün Çorbası', malzemeler: '500 g kuzu gerdan eti\n,1,5 litre su\n,Terbiyesi İçin;\n,5 yemek kaşığı yoğurt\n,3 yemek kaşığı un\n,1 yumurta sarısı\n,Yarım limon suyu\n,1 su bardağı su\n',yapimi:'Etleri düdüklü tencerede su ekleyerek 30-35 dakika pişirin ve soğuyunca didikleyin. Yoğurt, un, yumurta sarısı, limon suyu ve suyu çırparak terbiye hazırlayın. Etin suyunu süzüp tencereye alın ve terbiyeyi yavaşça ekleyin. Kaynadıktan sonra didiklenmiş etleri ekleyin ve kısık ateşte pişirin. Tuz ilave edip 5 dakika daha kaynatın. Üzerine tereyağı ve pul biber sosu gezdirip servis yapın. Afiyet olsun!'),
    Tarif(adi: 'İskender', malzemeler: '600 gr hazır et döneri \n,4-5 adet (Tırnak Pide) \n,Sosu için;\n,2 yemek kaşığı tereyağ\n,2 yemek kaşığı dolusu domates salçası\n,3 su bardağı sıcak su\n,Karabiber\n, tuz\n',yapimi:'Yaprak dönerleri tavada ısıtıp hafifçe kavurun. Küp doğranmış pideyi servis tabağına yerleştirin. Tereyağında salçayı kavurup sıcak su ekleyerek sosu hazırlayın, karabiber ve tuz ekleyip 5 dakika pişirin. Sosu ekmeklerin üzerine gezdirin, dönerleri yerleştirin ve üzerine tekrar sos dökün. Kızdırılmış tereyağını dönerlerin üzerine gezdirin. Yanında yoğurt, közlenmiş biber ve domates ile servis yapın. Afiyet olsun!'),
    Tarif(adi: 'Karnıyarık', malzemeler: '6 adet küçük boy patlıcan\n,Kıymalı Harç İçin;\n,2 adet orta boy soğan\n,2 adet domates\n,2 diş sarımsak\n,Sıvı yağ\n, tuz\n, karabiber\n, kırmızıbiber\n,200 gr kıyma\n',yapimi:'Karnıyarık yapmak için önce patlıcanları közleyip ortadan yararak içlerini açın. Bir tavada kıymayı, soğanı, biberi ve domatesi kavurarak iç harcını hazırlayın. Hazırladığınız harcı patlıcanların içine doldurun ve fırında pişirin. Üzerine domates dilimleri ve biber ekleyerek servis yapabilirsiniz.'),
    Tarif(adi: 'Makarna', malzemeler: '1 paket makarna\n,4 yemek kaşığı zeytinyağı\n,2 diş sarımsak (arzuya göre)\n,2 yemek kaşığı biber salçası\n,1/4 su bardağı su\n,1 çay kaşığı tuz\n,1 çay kaşığı taze çekilmiş tane karabiber\n',yapimi:'Spagettiyi tuzlu suda haşlayıp süzün. Zeytinyağını tavada ısıtıp ezilmiş sarımsakları ekleyin ve kavurun. Biber salçasını ekleyip karıştırın, ardından suyu ilave edin ve kaynatın. Tuz ve karabiber ekleyin, sosu makarnaya karıştırın. Sıcak servis yapın, afiyet olsun!'),
    Tarif(adi: 'Mantı', malzemeler: '3,5 su bardağı un\n,1 su bardağı ılık su\n,1 çay kaşığı tuz\n,1 adet orta boy soğan\n,Yarım çay kaşığı karabiber\n,Yarım çay kaşığı pul biber\n,1 çay kaşığı tuz\n',yapimi:'Un, su, tuz ve yumurtayı yoğurup hamuru dinlendirin. Kıymayı soğan, karabiber, pul biber ve tuzla karıştırın. Hamuru ince açıp küçük kareler kesin, ortalarına kıymalı harç koyup kenarlarını kapatın. Hazırladığınız mantıları kaynar suya atıp 10-15 dakika haşlayın. Süzüp servis yapmadan önce üzerine yoğurt ve sos ekleyin. Afiyet olsun!'),
    Tarif(adi: 'Mercimek Çorbası', malzemeler: '2 su bardağı kırmızı mercimek\n,1 adet soğan\n,2 yemek kaşığı un\n,1 adet havuç\n,Yarım yemek kaşığı domates salçası\n,1 tatlı kaşığı tuz\n,Yarım çay kaşığı karabiber\n,2 litre sıcak su\n,5 yemek kaşığı sıvı yağ\n',yapimi:'Mercimek çorbası yapmak için önce bir tencereye yıkanmış kırmızı mercimek, doğranmış soğan, havuç ve patates koyun. Üzerine su ekleyip sebzeler yumuşayana kadar kaynatın. Ardından çorbayı blenderdan geçirerek pürüzsüz hale getirin ve tuz, karabiber, pul biber ekleyerek servis yapın.'),
    Tarif(adi: 'Patates Yemeği', malzemeler: '3 adet patates\n,1 adet soğan\n,2 kaşık biber salçası\n,3 yemek kaşığı yağ\n,1 tatlı kaşığı tepeleme olmasın pul biber (isteğe bağlı)\n,1 tatlı kaşığı tuz\n,Sıcak su\n',yapimi:'Patatesleri ve soğanı küp küp doğrayın. Yağı bir tencerede ısıtıp doğranmış patates ve soğanları ekleyin, kavurun. Biber salçasını ekleyip birkaç dakika daha kavurun. Tuz ve isteğe bağlı pul biberi ekleyin. Üzerini geçecek kadar sıcak su ilave edin. Patatesler yumuşayana kadar pişirin. Sıcak servis yapın. Afiyet olsun!'),
    Tarif(adi: 'Pirinç Pilavı', malzemeler: '2 su bardağı pirinç\n,2,5 su bardağı sıcak su\n,3 yemek kaşığı tereyağı\n,1 yemek kaşığı sıvı yağ\n,Tuz\n',yapimi:'Pirinçleri yıkayıp süzün. Tereyağı ve sıvı yağı bir tencerede eritin. Pirinçleri ekleyip birkaç dakika kavurun. Üzerine sıcak suyu ve tuzu ilave edin. Karıştırarak kaynamaya bırakın, ardından kısık ateşte 15-20 dakika pişirin. Pilavı ocaktan alıp 10 dakika demlenmeye bırakın. Karıştırıp sıcak servis yapın. Afiyet olsun!'),
  ];


  final Function(BuildContext, Tarif) showTarifDetay;

  YemekListesi(this.showTarifDetay);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildYemekButton(context, tarifler[0], 'assets/adanakebap.jpg', Colors.brown[300]),
        _buildYemekButton(context, tarifler[1], 'assets/bulgurpilavi.jpg', Colors.green[200]),
        _buildYemekButton(context, tarifler[2], 'assets/duguncorbasi.jpg', Colors.pink[200]),
        _buildYemekButton(context, tarifler[3], 'assets/iskender.jpg', Colors.yellow[200]),
        _buildYemekButton(context, tarifler[4], 'assets/karnıyarık.jpg', Colors.grey[300]),
        _buildYemekButton(context, tarifler[5], 'assets/makarna.jpg', Colors.orange[300]),
        _buildYemekButton(context, tarifler[6], 'assets/manti.jpg', Colors.red[300]),
        _buildYemekButton(context, tarifler[7], 'assets/mercimekcorbasi.jpg', Colors.yellow[400]),
        _buildYemekButton(context, tarifler[8], 'assets/patatesyemegi.jpg', Colors.purple[200]),
        _buildYemekButton(context, tarifler[9], 'assets/pilav.jpg', Colors.green[300]),
      ],
    );
  }

  Widget _buildYemekButton(BuildContext context, Tarif tarif, String imagePath, Color? color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(),
        ),
        onPressed: () {
          showTarifDetay(context, tarif);
        },
        child: Column(
          children: [
            Image.asset(imagePath, errorBuilder: (context, error, stackTrace) {
              return Text('Görsel Yüklenemedi');
            }),
            Text(tarif.adi),
          ],
        ),
      ),
    );
  }
}


