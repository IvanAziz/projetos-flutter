import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Frases do dia",
        home: Home()
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

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo principal")
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("Text 1"),
              Text("Text 2"),
            ],
          )
        )
      ),
    );
  }
}