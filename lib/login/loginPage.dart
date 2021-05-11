import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _imageAnimationController;
  Animation<double> _imageAnimation;
  @override
  void initState() {
    _imageAnimationController = AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _imageAnimation = new CurvedAnimation(
        parent: _imageAnimationController, curve: Curves.bounceOut);
    _imageAnimation.addListener(() => this.setState(() {}));
    _imageAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,

      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Image(
          //   image: NetworkImage(
          //       "https://portal.tanimfits.com.ng/assets/img/gallery/logo-icon.png"),
          //   fit: BoxFit.cover,
          //   color: Colors.black54,
          //   colorBlendMode: BlendMode.darken,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _imageAnimation.value * 100,
              ),
              Image(
                  width: _imageAnimation.value * 100,
                  height: _imageAnimation.value * 100,
                  image: NetworkImage(
                      "https://portal.tanimfits.com.ng/assets/img/gallery/logo-icon.png")),
              Form(
                child: Theme(
                  data: ThemeData(
                      brightness: Brightness.light,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 20.0))),
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email or Phone Number",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: "Enter Password"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        MaterialButton(
                          minWidth: 100.0,
                          height: 40.0,
                          onPressed: () => {},
                          color: Colors.teal,
                          child: Text("Login"),
                          textColor: Colors.white,
                          splashColor: Colors.redAccent,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
