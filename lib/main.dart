import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text('get similar photo'
        ,style:TextStyle(
            fontSize: 30,
          ),),
        backgroundColor: Colors.green,


      ),
body:ImagesApp() ,
    ),
  ));
}
class ImagesApp extends StatefulWidget {
  const ImagesApp({super.key});

  @override
  State<ImagesApp> createState() => _ImagesAppState();
}

class _ImagesAppState extends State<ImagesApp> {
  int leftphoto=5;
  int rightphoto=2;
 void changphoto(){
   rightphoto=Random().nextInt(6)+1;
   leftphoto=Random().nextInt(6)+1;
 }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            leftphoto==rightphoto?'Congratulations.':
            'TRY AGIN',style: TextStyle(
              fontSize: 43,
              color: Colors.black
          ),
          ),
          Row(
            children: [
              Expanded(

                child: TextButton(
                    onPressed: (){
                      setState(() {
                        changphoto();
                      });
                    },
                    child: Image.asset('images/img-$leftphoto.jpg')
                ),
              ),
              Expanded(
                  child: TextButton
                    (onPressed: (){
                    setState(() {
                      changphoto();
                    });
                  },
                      child: Image.asset('images/img-$rightphoto.jpg')
                  )
              )
            ],)
        ]
    );
  }
}


