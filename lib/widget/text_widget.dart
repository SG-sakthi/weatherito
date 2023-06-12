
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textwidget extends StatelessWidget {
 Textwidget({Key? key, this.text, required this.textsize, this.fontWeight, this.color, this.letterspacing}) : super(key: key);
  final String? text;
 final double?  textsize;
 final FontWeight? fontWeight;
 final Color? color;
 final double? letterspacing;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style:GoogleFonts.poppins(
          fontSize: textsize!,
          letterSpacing: letterspacing,
          fontWeight:fontWeight! ,
          color:color!,
      ),
    );
  }
}
