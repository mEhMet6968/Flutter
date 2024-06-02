import 'package:flutter/material.dart';

class hesaplainatorbutton extends StatelessWidget {

  //buttonlarin taslak pagamertege

  final String metin;
  final int dolgurengi;
  final int metinrenfi;
  final Function? tiklama;





  const hesaplainatorbutton({super.key,  required  this.metin, required this.dolgurengi, required this.metinrenfi,  this.tiklama});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        
        width: 100,
        height: 100,
        child: TextButton(
        
          style: TextButton.styleFrom(
            foregroundColor: Color(metinrenfi), shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            textStyle: const TextStyle(fontSize: 30),
            backgroundColor: Color(dolgurengi),
          ),
          onPressed: () {
            tiklama!(metin);
          },
          child: Text(metin,),
        ),
      ),
    );
  }
}