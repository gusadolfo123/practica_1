import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static final name = "login_page";

  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: size.height * 0.3, child: Container()),
                  SizedBox(height: 20),
                  Container(
                    width: size.width * 0.9,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'ejemplo@correo.com',
                              labelText: 'Correo electrónico',
                              counterText: "snapshot.data",
                              errorText: "snapshot.error"),
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'ejemplo@correo.com',
                              labelText: 'Correo electrónico',
                              counterText: "snapshot.data",
                              errorText: "snapshot.error"),
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[200],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Text("Sign Up"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: size.height * 0.3, child: Container()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
