import 'package:flutter/material.dart';

class Pianokeys extends StatelessWidget{
  const Pianokeys({super.key,required this.color,
  required this.text,
  required this.onTap});
  
  final Color color;
  final String text;
  final void Function() onTap;
  
  @override
  Widget build(BuildContext context) {
    
   return  InkWell(
          onTap: onTap,
          child: Container(
            color: color,
            width: MediaQuery.of(context).size.width,
            height: 91,
            child:  Center(
              child: Text(text),
              ),
          ),
        );
  }

}