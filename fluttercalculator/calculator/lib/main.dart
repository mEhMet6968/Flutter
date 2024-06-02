import 'package:calculator/widgets/buttontasarimi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const hesaplainator());
}

class hesaplainator extends StatefulWidget {
  const hesaplainator({super.key});

  @override
  State<hesaplainator> createState() => _hesaplainatorState();
}

class _hesaplainatorState extends State<hesaplainator> {

  int? sayi1;
  int? sayi2;
  String gosterileceksayi="";
  String islemgecmisi="gecmis";
  String? sonuc;
  String? islem;

  void btntiklama(String buttondeger){
    print(buttondeger);

    if(buttondeger=="AC"){
      gosterileceksayi="";
      sonuc="";
      islemgecmisi="";
      sayi1=0;
      sayi2=0;
      islem="";

    }

    else if(buttondeger=="C"){

      gosterileceksayi="";
      sonuc="";
      sayi1=0;
      sayi2=0;
      islem="";
    }
    else if(buttondeger=="back"){
      
      sonuc=gosterileceksayi.substring(0,gosterileceksayi.length-1);

    }
    else if(buttondeger=="/"){
      sayi1= int.parse(gosterileceksayi);
      sonuc="";
      islem=buttondeger;
    }
    else if(buttondeger=="*"){
      sayi1= int.parse(gosterileceksayi);
      sonuc="";
      islem=buttondeger;
    }
    else if(buttondeger=="-"){
      sayi1= int.parse(gosterileceksayi);
      sonuc="";
      islem=buttondeger;
    }
    else if(buttondeger=="+"){
      //gosterilensayiaktar 1
      sayi1= int.parse(gosterileceksayi);
      sonuc="";
      islem=buttondeger;
    }
    else if(buttondeger=="="){
      //sayi iki ata islem yap
      sayi2=int.parse(gosterileceksayi);
      if (islem=="+"){
        sonuc=(sayi1!+sayi2!).toString();
        islemgecmisi=sayi1.toString()+islem.toString()+sayi2.toString();
      }
      else if (islem=="-"){
        sonuc=(sayi1!-sayi2!).toString();
        islemgecmisi=sayi1.toString()+islem.toString()+sayi2.toString();
      }
      else if (islem=="*"){
        sonuc=(sayi1!*sayi2!).toString();
        islemgecmisi=sayi1.toString()+islem.toString()+sayi2.toString();
      }
      else if (islem=="/"){
        sonuc=(sayi1!/sayi2!).toString();
        islemgecmisi=sayi1.toString()+islem.toString()+sayi2.toString();
      }
      
    }
    else if(buttondeger=="-/+"){
      
      if(gosterileceksayi[0] !="-"){
        sonuc="-"+gosterileceksayi;
      }

      else{
        sonuc=gosterileceksayi.substring(1);
      }
    }
    //rakamlara mahsus
    else{
      sonuc=int.parse(gosterileceksayi+buttondeger).toString();
    }
    
    //durum yenileme
    setState(() {
      gosterileceksayi=sonuc.toString();
    });

   }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Text('hesaplainator'),
          centerTitle: true,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment:Alignment(1.0,1.0) ,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,12,8),
                  child: Text(islemgecmisi,
                    
                  ),
                ),
              ), 
            Container(
              alignment:Alignment(1.0,1.0) ,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,12,8),
                child: Text(
                  gosterileceksayi,
                      
                  ),
              ),
            ),
             
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hesaplainatorbutton(metin: "AC", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "C", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "back", dolgurengi: 0xffffeb3b , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "/", dolgurengi: 0xffffeb3b , metinrenfi: 0xff000000,tiklama: btntiklama,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hesaplainatorbutton(metin: "7", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "8", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "9", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "*", dolgurengi: 0xffffeb3b , metinrenfi: 0xff000000,tiklama: btntiklama,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hesaplainatorbutton(metin: "4", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "5", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "6", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "-", dolgurengi: 0xffffeb3b , metinrenfi: 0xff000000,tiklama: btntiklama,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hesaplainatorbutton(metin: "1", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "2", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "3", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "+", dolgurengi: 0xffffeb3b , metinrenfi: 0xff000000,tiklama: btntiklama,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hesaplainatorbutton(metin: "-/+", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "0", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "00", dolgurengi: 0xffff5722 , metinrenfi: 0xff000000,tiklama: btntiklama,),
                hesaplainatorbutton(metin: "=", dolgurengi: 0xffffeb3b , metinrenfi: 0xff000000,tiklama: btntiklama,),
              ],
            ),

          ]
        ),
      ),
    );
  }
}
