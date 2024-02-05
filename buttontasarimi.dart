
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapMakinesiButtonu extends StatelessWidget {
   const HesapMakinesiButtonu({super.key, required this.metin, required this.dolguRengi, required this.metinRengi, required this.metinBoyutu, required this.tiklama});

  final String metin;
  final int dolguRengi;
  final int metinRengi;
  final double metinBoyutu;
  final Function tiklama;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
               style: ElevatedButton.styleFrom(
              shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0))),
          onPressed: (){tiklama(metin);},
         child: Text(metin,
           style: GoogleFonts.rubik(
             textStyle:  TextStyle(
               fontSize: metinBoyutu,
               color: Color(metinRengi),
             ),
           ) ,
         ),
        ),
      ),
    );
  }
}
