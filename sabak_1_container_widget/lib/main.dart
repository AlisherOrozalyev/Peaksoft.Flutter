import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Бул коп виджет бере турган функция
      body: Column // column Бул элементтерди вертикально жайгаштырат, столба сыяктуу
      (mainAxisAlignment: MainAxisAlignment.center, // mainaxisaligment ортолоштурганга жардам берет
        children: [
          Row // row Бул элементтерди горизантально жайгаштырат
          (mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(    //Контейнер № 1
              child: Center(child:  Text("home",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80, // height бул контейнердин вертикаль размери
              width: 200, // Width бул контейнердин горизанталь размери
              decoration: BoxDecoration( //decoration бул крнтейнердин тусун берет
                
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10) //borderradius контейнердин радиусун кескени жардам берет
              ),
            ),
            SizedBox(width: 30,), // sizedbox бул 2 контейнердин аралыктарын кесип берет 
            Container(   //Контейнер №2
              child: Center(child: Text("heart",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 219, 109, 12),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
           
          ],
          ),
          SizedBox(height: 30,) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(   //Контейнер № 3

              child: Center(child: Text("camera",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 10, 199, 23),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(width: 40,),
            Container(   //Контейнер № 4
              child: Center(child: Text("star",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 206, 17, 86),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            ],
          ),
          SizedBox(height: 30,)
          ,Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
Container(    //Контейнер № 1
              child: Center(child: Text("shaker",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 154, 69, 15),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(width: 40,),
            Container(   //Контейнер №2
              child: Center(child: Text("bolt",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 81, 26, 233),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
           
          ],
          ),
          SizedBox(height: 30,) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(   //Контейнер № 3

              child: Center(child: Text("phone",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 207, 14, 213),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(width: 40,),
            Container(   //Контейнер № 4
              child: Center(child: Text("sms",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 22, 177, 191),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],),SizedBox(height: 30,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(    //Контейнер № 1
              child: Center(child: Text("book",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 233, 216, 24),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(width: 40,),
            Container(   //Контейнер №2
              child: Center(child: Text("setting",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 222, 24, 24),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
           
          ],
          ),
          SizedBox(height: 30,) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(   //Контейнер № 3

              child: Center(child: Text("microfon",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 233, 47, 187),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(width: 40,),
            Container(   //Контейнер № 4
              child: Center(child: Text("file",style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              ),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 21, 192, 89),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],)
        ],
      ),
    ); 
  }
}

