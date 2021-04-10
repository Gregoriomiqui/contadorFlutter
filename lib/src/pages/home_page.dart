import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _estiloTexto = new TextStyle(fontSize: 25.0);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador de Taps'),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              'Número de Taps:',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: _refresh,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _agregar() =>  setState(() => _conteo++ ); 

  void _sustraer() => {
    if (_conteo > 0) setState(() => _conteo-- )
  };

  void _refresh() => setState(() => _conteo = 0 );
  
}
