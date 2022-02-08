import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iTeeth/constants.dart';

class ButtonsMain extends StatelessWidget {
  const ButtonsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 24, 38, 1),
      body: Stack(
        children: [
          Positioned(
              top: 20,
              child: Container(
                height: size.height * 0.3,
                width: size.width,
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                  color: Colors.white,
                  iconSize: 25,
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
                height: size.height * 0.8,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.elliptical(350, 50),
                        topLeft: Radius.elliptical(350, 50))),
                child: Column(
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -50, 0),
                      child: Image.asset(
                        'assets/avatar.png',
                        height: 100,
                      ),
                    ),
                    Row(children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: Text(
                          'Hoş geldiniz!',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    Row(children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: Text(
                          'İlgi Yiğitbaşı',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 35, horizontal: 35),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    appointment_view);

                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(1, 24, 38, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(CupertinoIcons.alarm),
                                  Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: const Text(
                                        'Randevularım',
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    timer_view);

                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(1, 24, 38, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25, horizontal: 10),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            const Icon(CupertinoIcons.timer),
                                            Container(
                                                margin:
                                                const EdgeInsets.only(top: 8),
                                                child: const Text(
                                                  'Fırçalamaya',
                                                )),
                                            const Text(
                                              'Başla',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 35),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    diary_view);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(1, 24, 38, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        const Icon(CupertinoIcons.book),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(top: 8),
                                            child: const Text(
                                              'Fırçalama',
                                            )),
                                        const Text(
                                          'Günlüğüm',
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    information_view);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(1, 24, 38, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  const Icon(CupertinoIcons.info),
                                  Container(
                                    margin: const EdgeInsets.only(top:8),
                                    child: const Text(
                                      'Tedavimle İlgili',
                                    ),
                                  ),
                                  const Text('Bilmem Gerekenler', textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
