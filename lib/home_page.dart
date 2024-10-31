
import 'package:flutter/material.dart';
import 'package:flutter_tabbar_example/camera_page.dart';
import 'package:flutter_tabbar_example/contact_page.dart';
import 'package:flutter_tabbar_example/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // numbers of tab
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.add),
            ],
            backgroundColor: Colors.blue,
            title: Text("Tab Bar Example", style: TextStyle(
              color: Colors.white,
            ),),
           bottom: TabBar(
             indicatorColor: Colors.white ,
             labelColor: Colors.white,
             tabs: [
               Tab(
                 icon: Icon(Icons.contacts,color: Colors.white,),
                 text: "Contact",
               ),
               Tab(
                 icon: Icon(Icons.camera,color: Colors.white,),
                 text: "Camera",
               ),
               Tab(
                 icon: Icon(Icons.settings,color: Colors.white,),
                 text: "Setting",
               )


             ],
           ),
          ),

          body: TabBarView(
            children: [
              ContactPage(),
              CameraPage(),
              SettingsPage()
            ],
          ),

        )
    );
  }
}


