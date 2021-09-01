import 'package:flutter/material.dart';

//앱 화면에 보여질 디자인 위젯
class Information extends StatefulWidget {
  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //발판을 만듬
      appBar: AppBar(
        title: Text('단국대학교 병원'),
        centerTitle: true,
      ),
      body: Center(
        //중앙에 배치 + 자식위젯 가짐
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
              controller: controller4,
              decoration: InputDecoration(labelText: 'Enter laser_power'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller4,
              decoration: InputDecoration(labelText: 'Enter swept_time'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller4,
              decoration: InputDecoration(labelText: 'cnt_cyto_control'),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller4,
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
                  onPressed: () {},
                  child: Text("SAVE"),
                )),
          ], // 배열 : 세로로 배치될 위젯들
        ),
      ),
    );
  }
}
