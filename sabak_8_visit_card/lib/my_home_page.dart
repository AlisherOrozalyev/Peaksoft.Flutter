import 'package:flutter/material.dart';
import 'package:sabak_8_visit_card/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String phoneNumber ='';
  String email ='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Тапшырма 4'),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const FlutterLogo(
              size: 200,
             ),
             const Text(
              'Peaksoft Hause',
             style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w400
             ),
             ),
             const Text(
              'Flutter Developer',
             style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w400,
             ),
             ),
             const Divider(
              indent: 50.0,
              endIndent: 50.0,
              height: 1,
              thickness: 3,
             ),
             const SizedBox(height: 20,),
             TextFormField(
              onChanged: (number) {
                phoneNumber = number;
              },
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.add_call),
                hintText: 'Сиздин телефон номериниз'
              ),
             ),
              const SizedBox(
              height: 20,
             ),
             TextFormField(
              onChanged: (menJazganemail){
                email = menJazganemail;
              },
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                hintText: 'Сиздин электрондук почтаныз'
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if(phoneNumber.isEmpty && email.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Телефон номеринизди жана Почтанызды жазыныз'),
                        ),
                        );
                  }else{
                    Navigator.push(
                     context,
                     MaterialPageRoute(
                      builder:(context) => SecondPage(
                        userNumber:phoneNumber,
                        userEmail: email,
                        image:   const FlutterLogo(),
                        )
                      ),
                    );
                  }
                },
                child:  const Text('Жонотуу'),
              ),
            ],
          ),
        ),
    );
  }
}