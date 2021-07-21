import 'package:flutter/material.dart';
import 'package:hackathon_cp/shared/Themes/app_collors.dart';
import 'package:hackathon_cp/shared/Themes/text_styles.dart';
import 'package:hackathon_cp/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      text: "Faça o seu\nLogin\n",
                      style: TextStyles.loginTitle,
                      children: [
                        TextSpan(
                          text: "Olá, seja bem vindo de novo!",
                          style: TextStyles.loginSub,
                        )
                      ],
                    ),
                  ),
                ),

                //dá um espacinho
                Divider(
                  height: 25,
                  color: Colors.transparent,
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 16.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.white,
                      hintText: 'Login',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 25,
                  color: Colors.transparent,
                ),
                //
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextField(
                    autofocus: false,
                    obscureText: true,
                    style: TextStyle(fontSize: 16.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.white,
                      hintText: 'Senha',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 25,
                  color: Colors.transparent,
                ),

                ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width * 0.75, 50),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF49F3BA),
                      ),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => {Navigator.pushNamed(context, "/home")}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
