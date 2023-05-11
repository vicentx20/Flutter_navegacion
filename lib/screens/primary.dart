import 'package:flutter/material.dart';
import 'package:flutternavegacion/screens/secondary.dart';

class Primary extends StatelessWidget {
  const Primary({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla primaria'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("primer pantalla"),
            ElevatedButton(
              child: Text("Ir a segunda pantalla"),
              onPressed: () {
                Navigator.pushNamed(context, "/secondary");
              },
            )
          ],
        ),
      ),
    );
  }
}
