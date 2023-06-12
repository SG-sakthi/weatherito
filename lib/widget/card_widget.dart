import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherito/widget/text_widget.dart';
class CardWidget extends StatelessWidget {
   CardWidget({Key? key, this.name, required this.icon, required this.data, this.measure, this.color}) : super(key: key);
  final String? name;
  final IconData icon;
  final int data;
   final String? measure;
   Color? color;
   int time=12;
  @override

  Widget build(BuildContext context) {

    return Container(
      width: 350,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF45B3FD),
            Color(0xFF32004F)
          ]
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Textwidget(
                  textsize: 15,
                  text:"$name : ",
                  letterspacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                Textwidget(
                  textsize: 15,
                  text: "$data ",
                  letterspacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                Textwidget(
                  textsize: 15,
                  text: measure!,
                  letterspacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
