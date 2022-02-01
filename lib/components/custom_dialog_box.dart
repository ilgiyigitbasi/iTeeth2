
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
   const CustomDialogBox({Key? key}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 20,top: 45
              + 20, right: 20,bottom: 20
          ),
          margin: const EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(color: Colors.black,offset: Offset(0,10),
                    blurRadius: 10
                ),
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Randevu Ekle',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
              const SizedBox(height: 15,),
              Form(child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Randevu Adı'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: InputDatePickerFormField(
                      firstDate:  DateTime.now(), lastDate:  DateTime.utc(2025),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: const Color.fromRGBO(1, 24, 38, 1),
                      child: const Text("Kaydet", style: TextStyle(color: Colors.white),),
                      onPressed: () {

                        }
                      ,
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
        const Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Color.fromRGBO(1, 24, 38, 1),
            radius: 45,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                child: Icon(Icons.add_circle, color: Colors.white, size: 48,)
            ),
          ),
        ),
      ],
    );
  }
}