import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Fiel Focus hi ',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('A ocurrido un error 404'),
          content: Text('¡Alerta! ¡Alerta!'),
          actions: [
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void exitApp() {
    Navigator.of(context).pop();
  }

  void goToHome() {
    // Implement your home navigation logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Primera app con Flutter'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250.0,
              width: 350.0,
              child: Image.asset('assets/img1.jpg'),
            ),
            SizedBox(height: 16.0),
            Container(
              alignment: Alignment.center,
              child: Text(
                'MESSI CON LA COPA DEL MUNDO',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Messi junto a su equipo de selección lograron levantar la copa del mundo, lo cual solo los mejores clubes han logrado. Es un hito histórico para el fútbol.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: goToHome,
            tooltip: 'Inicio',
            child: Icon(Icons.home),
            backgroundColor: Colors.blue,
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: showAlert,
            tooltip: 'Alerta',
            child: Icon(Icons.warning),
            backgroundColor: Colors.orange,
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: exitApp,
            tooltip: 'Salir',
            child: Icon(Icons.exit_to_app),
            backgroundColor: Colors.green,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
