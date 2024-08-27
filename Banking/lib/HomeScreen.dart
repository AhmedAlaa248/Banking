import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color appBarItemsColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new, color: appBarItemsColor,),
        backgroundColor: Colors.black,
        title: Center(child: Text("Prediction Screen", style: TextStyle(color: appBarItemsColor),)),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.logout_rounded), color: appBarItemsColor,)
        ],
      )
    );
  }
}
