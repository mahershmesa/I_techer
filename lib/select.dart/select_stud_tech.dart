import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';

class select extends StatefulWidget {
  const select({ Key? key }) : super(key: key);

  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      floatingActionButton: SpeedDial(
        animatedIcon:AnimatedIcons.menu_close,
        icon: Icons.share,
        backgroundColor: Colors.black,
        spacing: 12,
        spaceBetweenChildren: 12,
        closeManually: true,
        onOpen: ()=>showToast("opened"),
        onClose: () => showToast("closed"),
        overlayOpacity: 0.4,
        children:[
          SpeedDialChild(
            child: Icon(Icons.mail),
            
           // backgroundColor: Colors.black,
            label: "Mail",
            onTap: ()=>showToast("mail"),
          ),
          SpeedDialChild(
            child: Icon(Icons.copy),
           // backgroundColor: Colors.black,
            label: "Copy",
          ),
        ]
      ),
    );



  }
}

Future showToast(String message)async{
  await Fluttertoast.cancel();

  Fluttertoast.showToast(msg:message,fontSize: 18);

}

/////////////////////////////////////////////
