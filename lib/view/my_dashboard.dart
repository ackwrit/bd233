import 'package:firstbd233/view/my_background.dart';
import 'package:flutter/material.dart';

class MyDashBord extends StatefulWidget {
  const MyDashBord({super.key});

  @override
  State<MyDashBord> createState() => _MyDashBordState();
}

class _MyDashBordState extends State<MyDashBord> {
  //variable
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.purple,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.6,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        onTap: (index){
          setState(() {
            indexPage = index;
          });

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Carte"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favoris"
          ),

        ],
      ),
      body: Stack(
        children: [
          MyBackGroundPage(),
          bodyPage()
        ],
      ),
    );
  }

  Widget bodyPage(){
    switch(indexPage){
      case 0 : return Center(child: Text("Afficher carte"));
      case 1 : return Center(child: Text("Afficher favoris"));
      default : return Text("Erreur");
    }
  }
}
