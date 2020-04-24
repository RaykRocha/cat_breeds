import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Dialogs {
  contactDialog(BuildContext context) {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins', fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w600);
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 24,
            backgroundColor: Color(0xffb6b2df),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
            title: CircleAvatar(
              radius: 40,
              child: ClipOval(child: Image.asset('assets/me.jpg')),
            ),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                Text(
                  'Rayk Rocha dos Santos',
                  style: baseTextStyle,
                ),
                Container(height: 4.0),
                Row(
            children: <Widget>[
              Text(
                  'RM81723',
                  style: baseTextStyle
                ),
                 Container(width: 20.0),
              Icon(FontAwesome.github, size: 22, color: Colors.black87),
              Container(width: 8.0),
              Text('/RaykRocha',style: baseTextStyle),
            ],
          ),
                
                 FlatButton(
                child: Text('OK',style: TextStyle(fontSize: 18, color: Colors.blue),),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ],
            )),
          );
        });
  }
}
