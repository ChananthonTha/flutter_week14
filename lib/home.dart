import 'package:flutter/material.dart';

import 'contact.dart';
import 'gridview_card_page.dart';
import 'list_view_menu.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("search");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("สวัสดี,ชนันธร",
                style: Theme.of(context).textTheme.displaySmall),
            Text('$_count', style: Theme.of(context).textTheme.displayLarge),
            IconButton(
              onPressed: () {
                setState(() {
                  _count++;
                  debugPrint("count: $_count");
                });
              },
              icon: Icon(Icons.add, color: Colors.indigo, size: 55),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Chananthon.Tha"),
              accountEmail: Text("koonzee14@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.android)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Grid View'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GridViewCardPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('List View'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewMenuPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('ติดต่อเรา'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('ประวัติวส่วนตัว'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
