import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("ชนันธร ถนอมเงิน"),
            Text("เบอร์โทร : 0941827793 , 0636378746"),
            Text("Email : koonzee14@gmail.com"),
            Text("Facebook : Chananton Thanomngoen"),
            Text("Line : zeezaa14"),
          ],
        ),
      ),
    );
  }
}
