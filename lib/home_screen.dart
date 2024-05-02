// import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Screensize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(),
      body: SafeArea(
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.add_box))
                  ],
                ),
                Container(
                  height: Screensize.height * .3,
                  width: double.infinity,
                  color: Colors.redAccent,
                  alignment: Alignment.center,
                  child: Text("Flutter is awesome",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white)),
                ),
                Container(
                  height: Screensize.height * .3,
                  width: double.infinity,
                  color: Colors.black54,
                  alignment: Alignment.center,
                  child: Text("Create Your QR-Code",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white)),
                ),
                Container(
                  height: Screensize.height * .3,
                  width: double.infinity,
                  color: Colors.redAccent,
                  alignment: Alignment.center,
                  child: Text("About Us",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white)),
                ),
              ]))),
    );
  }
}
