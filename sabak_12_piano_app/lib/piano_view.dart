import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoView extends StatelessWidget { 
 
   PianoView({super.key});
  final player = AudioPlayer();
  
  @override
  Widget build(BuildContext context) {
  

    List<String> notesKey = [
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7',
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7'
    ];
    
    final List<String> notes =[
       'notes1',
      'notes2',
      'notes3',
      'notes4',
      'notes5',
      'notes6',
      'notes7',
      'notes7',
      'notes6',
      'notes5',
      'notes4',
      'notes3',
      'notes2',
      'notes1'
    ];
    
    
    return  Scaffold(
appBar: myAppbar(),
body: Column(
  children: [
    Expanded(
      child: Container(),
      ),
  Expanded(
    flex: 4,
    // Stack бул виджетти колдонуп контейнердин устуно дагы бир контейнер койсо болот,жана позиясын озгортсо болот
    child: Stack(
      children: [
        //Listwiev Бул виджет вертикально же горизантально озубуз канча контейнер кааласак ощончо тусконго жарадам берет
        ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 14,
        itemBuilder: (context,index){
        return InkWell(
          // SplashColor Бул виджет контейнерди басканда тус берет
          splashColor: const Color.fromARGB(255, 254, 183, 60),
          onTap: () async{
           await player.play(
            AssetSource('${notes[index]}.mp3'));
            
          },
          child: Container(
            // margin бул декорациянын же контейнерлердин ортосундагы боштонтукту кылса болот
            margin: const EdgeInsets.all(2),
                width: 50,
                height: 200,
               
                decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(5),
                ),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(notesKey[index],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline
                  ),
                ),
                const SizedBox(height: 10),
              ],
             ),
           ),
        );
        }
       ),
       // Positioned Бул контейнерди ар тарапка жылдырганы жардам берет
        Positioned(
          left: 34,
          // inkWell бул виджет контейнерди торт тараптан кысып берет
          child:InkWell(
            
            onTap: () {
              player.play(AssetSource('notes2.mp3'));
            },
            child: Container(
              
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[0],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ), 
          Positioned(
          left: 88,
          child:
          InkWell( onTap: () {
            player.play(AssetSource('notes3.mp3'));
          },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[1],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
          Positioned(
          left: 196,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes4.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[3],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
          Positioned(
          left: 250,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes5.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[4],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
           Positioned(
          left: 304,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes6.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[5],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
           Positioned(
          left: 412,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes7.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[6],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
          Positioned(
          left: 466,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes1.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[7],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
          Positioned(
          left: 573,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes2.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[8],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),
          Positioned(
          left: 627,
          child:InkWell(
            onTap: () {
              player.play(AssetSource('notes3.mp3'));
            },
            child: Container(
              width: 40,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )),
                child: 
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notesKey[9],
                    style: const TextStyle(
                      color: Colors.white)),
                  ],
                ),
            ),
          ),
          ),

       ] 
    ),
    )
   ],
  ),
 );
}

















  AppBar myAppbar() {
    return AppBar(
backgroundColor: Colors.black,
title: const Center(
  child: 
  Text('Piano View App',
  style: TextStyle(
    color: Colors.white),
      ),
     ),
    );
  }
}