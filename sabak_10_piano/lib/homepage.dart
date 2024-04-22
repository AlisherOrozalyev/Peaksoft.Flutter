import 'package:flutter/material.dart';
import 'package:sabak_10_piano/components/piano_keys.dart';
import 'package:audioplayers/audioplayers.dart';
class HulophoneView extends StatefulWidget {
  const HulophoneView({super.key});

  @override
  State<HulophoneView> createState() => _HulophoneViewState();
}

class _HulophoneViewState extends State<HulophoneView> {
  final audioplayers = AudioPlayer ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('Flutter Sylophone',
          style: TextStyle(
            color: Colors.white),
            ),
          ),
      ),
      body:  Column(
        children: [

       Pianokeys(
        color: Colors.blue, 
        text: 'Do',
         onTap: (){
          audioplayers.play(AssetSource('nota1.mp3'),);
         }),

        Pianokeys(
        color: Colors.green, 
        text: 'Re', 
        onTap: () { 
          audioplayers.play(AssetSource('nota2.mp3'));
         },),

        Pianokeys(
        color: Colors.orange,
         text: 'Mi',
          onTap: () { 
            audioplayers.play(AssetSource('nota3.mp3'));
           },),

        Pianokeys(
        color: Colors.brown,
         text: 'So',
          onTap: () { 
            audioplayers.play(AssetSource('nota4.mp3'));
           },),

         Pianokeys(
        color: Colors.yellow, 
        text: 'Fa',
         onTap: () { 
          audioplayers.play(AssetSource('nota5.mp3'));
          },),

        Pianokeys(
        color: Colors.indigo,
         text: 'La',
          onTap: () { 
            audioplayers.play(AssetSource('nota6.mp3'));
           },),

        Pianokeys(
        color: Colors.purple, 
        text: 'Si',
         onTap: () { 
          audioplayers.play(AssetSource('nota7.mp3'));
          },),

      ],
      ),
    );
  }
}

