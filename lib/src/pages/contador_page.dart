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
          title: Text('Contador de Taps'),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              'Numero de Taps:',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        floatingActionButtonLocation:  FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones(){
    return Row(
          children: [
             SizedBox(width: 30),
             FloatingActionButton(
              child: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  _conteo = 0;
                });
              },
            ),
            Expanded(child: SizedBox()),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                if (_conteo > 0)
                  setState(() {
                    _conteo--;
                  });
              },
            ),
            SizedBox(width: 5.0),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _conteo++;
                });
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
