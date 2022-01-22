import 'package:flutter/material.dart';

import '../constants.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  get nameController => null;

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 24, 38, 1),
      body: Stack(
        children: [
          Positioned(
            top:0,
              child: Container(
                width: size.width,
                height: size.height * 0.6,
                child:  Center(
                  child: Image.asset('assets/logo3.png', height: 200 )
                ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.4,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(238,238,238,1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 65),
                    child: TextField(
                        controller: nameController,
                        style: const TextStyle(color: Color.fromRGBO(1, 24, 38, 1)),
                        decoration: const InputDecoration(
                          labelText: 'Kullanıcı Adı',
                          labelStyle: TextStyle(color: Color.fromRGBO(1, 24, 38, 1), fontSize: 12),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(1, 24, 38, 0.8)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(1, 24, 38, 0.8))),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color:Color.fromRGBO(1, 24, 38, 1)),
                          ),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 65, right: 65),
                    child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        style: const TextStyle(color: Color.fromRGBO(1, 24, 38, 1), fontFamily: 'Poppins', fontSize: 12),
                        decoration: const InputDecoration(
                          labelText: 'Şifre',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Color.fromRGBO(1, 24, 38, 1)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(1, 24, 38, 1))),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(1, 24, 38, 1)),
                          ),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 35),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(1, 24, 38, 1),
                        ) ,
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                              home_view);
                        },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Giriş Yap',
                          style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// alignment: Alignment.center,
// margin: const EdgeInsets.only(bottom: 45),
// padding: const EdgeInsets.all(10),
// child: const Text(
// 'Welcome',
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.w500,
// fontSize: 30),
// )),
// Container(
// padding: const EdgeInsets.all(5),
// child: TextField(
// controller: nameController,
// style: const TextStyle(color: Colors.white),
// decoration: const InputDecoration(
// labelText: 'Kullanıcı Adı',
// labelStyle: TextStyle(color: Colors.white),
// enabledBorder: UnderlineInputBorder(
// borderSide: BorderSide(color: Colors.white),
// ),
// focusedBorder: UnderlineInputBorder(
// borderSide: BorderSide(color: Colors.white)),
// border: UnderlineInputBorder(
// borderSide: BorderSide(color: Colors.white),
// ),
// )),
// ),
// Container(
// padding: const EdgeInsets.all(5),
// child: TextField(
// obscureText: true,
// controller: passwordController,
// style: const TextStyle(color: Colors.white),
// decoration: const InputDecoration(
// labelText: 'Şifre',
// labelStyle: TextStyle(color: Colors.white),
// enabledBorder: UnderlineInputBorder(
// borderSide: BorderSide(color: Colors.white),
// ),
// focusedBorder: UnderlineInputBorder(
// borderSide: BorderSide(color: Colors.white)),
// border: UnderlineInputBorder(
// borderSide: BorderSide(color: Colors.white),
// ),
// )),
// ),
// Container(
// margin: const EdgeInsets.only(top: 45),
// child: IconButton(
// iconSize: 48,
// color: Colors.white,
// onPressed: () {
// Navigator.of(context).pushNamedAndRemoveUntil(
// home_view, (Route<dynamic> route) => false);
// },
// icon: const Icon(Icons.arrow_forward_ios_outlined),
// ),
// ),
// ],
// ),
const TextStyle h1 = TextStyle(color: Colors.white, fontSize: 20);
