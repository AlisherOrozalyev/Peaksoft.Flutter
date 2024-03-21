import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
   
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
int san = 0;
  @override
  Widget build (BuildContext context) { 
    return Scaffold(
  backgroundColor: Colors.black,
  appBar: AppBar(
    backgroundColor: Colors.grey,
    leading: const Icon (Icons.sort),
    actions: [
      IconButton(
        onPressed: () {},
      icon: const Icon (Icons.settings),
       ),
    ],
  ),
  body:  Center(
    child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Text(
    san.toString(),
    style: const TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  ),
  const SizedBox(height: 20),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton.icon(
        onPressed: () {
          setState(() {
            san++;
          });
        },
        icon: const Icon(Icons.add),
        label: const Text('increment'),
        ),
       
       ElevatedButton.icon(
        onPressed: () {
          setState(() {
            san--;
          });
        },
        icon: const Icon(Icons.remove),
        label: const Text('Decrement'),
        ) 
    ],
  ),
],
    ),
  ),
  );
  }
}
 