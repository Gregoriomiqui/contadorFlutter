import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Numero de clicks:', style: estiloTexto,),
             Text('0', style: estiloTexto,),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_circle_rounded
        ),
        onPressed: () {
          print("hola");
        },
      )
    );
  }
}
