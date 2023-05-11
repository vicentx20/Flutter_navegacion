import 'package:flutter/material.dart';
import 'screens/primary.dart';
import 'screens/secondary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitamos debug
      debugShowCheckedModeBanner: false,
      //Configurar tema
      //La pantalla inicial
      initialRoute: "/primary",
      //Las rutas del proyecto
      routes: {
        "/primary": (BuildContext context) => Primary(),
        "/secondary": (BuildContext context) => Secondary(),
      },
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.pink,
          //configurar texto
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.pink, fontSize: 30),
          )),
      //Pagina inicial
      //home: BotonFlotante(),
    );
  }
}
