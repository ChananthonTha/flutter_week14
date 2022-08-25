import 'package:flutter/material.dart';

class Menu{
  final String? title;
  final IconData? icon;
  final Color? bkColor;

  Menu({required this.title,required this.icon,required this.bkColor});
}

List<Menu> menus = [
  Menu(title: "MENU-1", icon: Icons.person, bkColor: Colors.orangeAccent),
  Menu(title: "MENU-2", icon: Icons.wallet, bkColor: Colors.indigo),
  Menu(title: "MENU-3", icon: Icons.abc_sharp, bkColor: Colors.red),
];

class GridViewCardPage extends StatelessWidget {
  const GridViewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Menu"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(6, (index) {
            return Card(
              color: menus[index].bkColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(menus[index].icon, size: 65, color: Colors.white),
                    Text(menus[index].title!, style: TextStyle(color: Colors.white)),
                  ],
                ),
                onTap: () {},
              ),
            );
          }),
        ),
      ),
    );
  }
}