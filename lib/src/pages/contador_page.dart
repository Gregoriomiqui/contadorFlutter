import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25.0);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador stateeful'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Numero de Taps:', style: _estiloTexto,),
             Text( '$_conteo' , style: _estiloTexto,),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
    //  floatingActionButtonLocation:  FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle_rounded),
        onPressed: () {
          setState((){
            _conteo++;
          });
        },
      )
    );
  }
  
}
