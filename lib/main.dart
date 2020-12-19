// Ali Filiz Mobil Programlama Vize Ödevi  main.dart
import 'package:flutter/material.dart';
import 'uyeOl.dart';
import 'sifremiUnuttum.dart';
import 'anasayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => loginPage(),
        'uye': (context) => uyeOl(),
        'sifremiunuttum': (context) => sifremiUnuttum(),
        'anasayfa': (context) => anaSayfa()
      },
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String userName;
  String password;
  final _degerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Form(
        key: _degerKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    userName = value;
                  }),
              SizedBox(height: 20.0), // SizedBox
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  password = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text("üye ol"),
                    onPressed: () {
                      Navigator.pushNamed(context, 'uye');
                    },
                  ),
                  MaterialButton(
                      child: Text("şifremi Unuttum"),
                      onPressed: () {
                        Navigator.pushNamed(context, 'sifremiunuttum');
                      }),
                ],
              ),
              RaisedButton(
                child: Text("Giriş"),
                onPressed: () {
                  _degerKey.currentState.save();
                  debugPrint("userName : $userName,password : $password");

                  if (userName == "demo" && password == "demo") {
                    debugPrint("Giriş Başarılı");
                    Navigator.pushNamed(context, 'anasayfa');
                  } else {
                    debugPrint("Kullanıcı Adı ya da şifre Hatalı");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
