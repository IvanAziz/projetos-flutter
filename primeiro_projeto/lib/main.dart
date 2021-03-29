import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Frases do Dia",
        home: Home()
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String _titulo = "Frases do Dia";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Column(        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  "Gratidão não é pagamento, mas um reconhecimento que se demostra no dia a dia.",
                )
              )
            ),
            TextButton(
              onPressed: () => print("Nova Frase"), 
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  color: Colors.white,
                )
                ),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green),
              ),
              )              
        ]),
    );
  }
}

class HomeStatefull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeStatefullState();
}

class _HomeStatefullState extends State<HomeStatefull>{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}