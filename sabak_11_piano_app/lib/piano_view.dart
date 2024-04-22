import 'package:flutter/material.dart';

class PianoView extends StatelessWidget {
  const PianoView({super.key});

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
      'f8',
      'f9',
      'f10',
      'f11',
      'f12',
      'f13',
      'f14'
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
    child: Stack(
      children: [
        ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 14,
        itemBuilder: (context,index){
        return InkWell(
          onTap: () {
            // ignore: avoid_print
            print(notesKey[index]);
          },
          child: Container(
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
        Positioned(
          left: 34,
          child:Container(
            width: 40,
            height: 100,
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
          Positioned(
          left: 88,
          child:Container(
            width: 40,
            height: 100,
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
          Positioned(
          left: 196,
          child:Container(
            width: 40,
            height: 100,
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
          Positioned(
          left: 250,
          child:Container(
            width: 40,
            height: 100,
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
           Positioned(
          left: 304,
          child:Container(
            width: 40,
            height: 100,
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
           Positioned(
          left: 412,
          child:Container(
            width: 40,
            height: 100,
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
          Positioned(
          left: 466,
          child:Container(
            width: 40,
            height: 100,
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
          Positioned(
          left: 573,
          child:Container(
            width: 40,
            height: 100,
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
          Positioned(
          left: 627,
          child:Container(
            width: 40,
            height: 100,
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