import 'package:flutter/material.dart';
import 'information.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '경소톤',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  //Textfield의 입력값을 읽기
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('노량진 고시촌'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        ),
        body: Builder(
          builder:(context){
            return SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Center(
                  child: Image(
                    image: AssetImage('assets/카카오 영상.gif'),
                    width: 170.0,
                    height: 190.0,
                  ),
                ),
                Form(
                    child: Theme(
                        data: ThemeData(
                            primaryColor: Colors.teal,
                            inputDecorationTheme: InputDecorationTheme(
                                labelStyle: TextStyle(
                                    color: Colors.teal, fontSize: 15.0))),
                        child: Container(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              TextField(
                                controller: controller,
                                decoration:
                                    InputDecoration(labelText: 'Enter "ID"'),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 20.0),
                              TextField(
                                controller: controller2,
                                decoration: InputDecoration(
                                    labelText: 'Enter "Password"'),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(height: 40.0),
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.blueAccent,
                                      onPrimary: Colors.greenAccent,  
                                      minimumSize: Size(100, 55)                                                          
                                    ),                                 
                                    onPressed: () {
                                      if(controller.text =='모시공' && controller2.text=='1234'){
                                        Navigator.push(context, 
                                        MaterialPageRoute(builder: (context) => Information()));
                                      }
                                      else{
                                        showSnackBar(context);        
                                      }
                                    },
                                    child: Text("Login"),
                                  )),
                              Image(
                                image: AssetImage('assets/카카오 로그인.png'),
                                width: 200.0,
                                height: 180.0,
                              ),
                            ],
                          ),
                        )))
              ],
            ),
          );
          },
    ),);          
  }
}

void showSnackBar(BuildContext  context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: 
    Text("로그인 정보를 다시 확인하세요",
    textAlign: TextAlign.center,),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
    ));
  
}
