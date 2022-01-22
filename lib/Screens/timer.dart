import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kronometre'),
        backgroundColor: const Color.fromRGBO(1, 24, 38, 1),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        child: Column(
          children: [
            Column(
              children:  [
                const Text('00:00', style: TextStyle(fontSize: 75, fontWeight: FontWeight.w900),),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow), iconSize: 55,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.pause), iconSize: 55,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.stop), iconSize: 55,),
                  ],
                ),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(1, 24, 38, 1),
                  ) ,
                  onPressed: () {

                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Kaydet',
                      style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 1,
            ),
            Column(

              children: [
                Column(
                  children: const [
                    Align(alignment: Alignment.centerLeft,child: Text('02:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)),
                    Align(alignment: Alignment.centerLeft,child: Text('11/02/1991, 15:30', style: TextStyle( fontSize: 12),)),
                    Divider()
                  ],
                ),Column(
                  children: const [
                    Align(alignment: Alignment.centerLeft,child: Text('02:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)),
                    Align(alignment: Alignment.centerLeft,child: Text('11/02/1991, 15:30', style: TextStyle( fontSize: 12),)),
                    Divider()
                  ],
                ),Column(
                  children: const [
                    Align(alignment: Alignment.centerLeft,child: Text('02:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)),
                    Align(alignment: Alignment.centerLeft,child: Text('11/02/1991, 15:30', style: TextStyle( fontSize: 12),)),
                    Divider()
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}
