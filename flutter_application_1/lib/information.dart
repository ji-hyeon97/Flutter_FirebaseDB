import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

//앱 화면에 보여질 디자인 위젯

class Information extends StatefulWidget {
  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  void initState() {
    super.initState();
  }
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //발판을 만듬
      appBar: AppBar(
        title: Text('옵토웰 비염패치'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () async {
          final f = FirebaseFirestore.instance;
          await f.collection('단국대학교 병원').doc('비염 패치').set({'date': controller3.value.text,'wavelength': int.parse(controller4.value.text),
          'laser_power': int.parse(controller5.value.text),'swept_time': int.parse(controller6.value.text),'cnt_cyto_control': int.parse(controller7.value.text),
          'cnt_cyto_experi': int.parse(controller8.value.text)});
          print('구글 파이어 베이스로 데이터베이스 전송 성공');
        },
        child: Container(
          padding: EdgeInsets.all(40.0),
        child: Column(
          //세로로 배치
          children: [
            TextField(
              controller: controller3,
              decoration: InputDecoration(labelText: 'Enter date'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller4,
              decoration: InputDecoration(labelText: 'Enter wavelength'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller5,
              decoration: InputDecoration(labelText: 'Enter laser_power'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller6,
              decoration: InputDecoration(labelText: 'Enter swept_time'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller7,
              decoration: InputDecoration(labelText: 'cnt_cyto_control'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller8,
              decoration: InputDecoration(labelText: 'cnt_cyto_experi'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 40.0),
            ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      onPrimary: Colors.greenAccent,
                      minimumSize: Size(100, 55)),
                  onPressed: (){},                  
                  child: Text("SAVE"),
                )),
          ], // 배열 : 세로로 배치될 위젯들
        ),
      ),
      )
      )
    );
  }
}

