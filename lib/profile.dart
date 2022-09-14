import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติส่วนตัว"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("นาย ชนันธร ถนอมเงิน (C)"),
            Text("วันเกิด : 14 มีนาคม 2546"),
            Text("อายุ : 19"),
            Text("จบ ม.3 : โรงเรียนวัดแหลมหิน"),
            Text("จบ ปวช.3 : วิทยาลัยเทคนิคตราด"),
            Text("กำลังศึกษาชันปวส. 2 : วิทยาลัยเทคนิคตราด"),
            Text("เบอร์โทร : 0941827793 , 0636378746"),
            Text("Email : koonzee14@gmail.com"),
            Text("งานอดิเรก : นอนหลับ ฟังเพลง ดูอนิเมะ"),
          ],
        ),
      ),
    );
  }
}


