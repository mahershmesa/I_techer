// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class select extends StatefulWidget {
//   const select({ Key? key }) : super(key: key);

//   @override
//   State<select> createState() => _selectState();
// }

// class _selectState extends State<select> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber.shade300,
//       floatingActionButton: SpeedDial(
//         animatedIcon:AnimatedIcons.menu_close,
//         icon: Icons.share,
//         backgroundColor: Colors.black,
//         spacing: 12,
//         spaceBetweenChildren: 12,
//         closeManually: true,
//         onOpen: ()=>showToast("opened"),
//         onClose: () => showToast("closed"),
//         overlayOpacity: 0.4,
//         children:[
//           SpeedDialChild(
//             child: Icon(Icons.mail),
            
//            // backgroundColor: Colors.black,
//             label: "Mail",
//             onTap: ()=>showToast("mail"),
//           ),
//           SpeedDialChild(
//             child: Icon(Icons.copy),
//            // backgroundColor: Colors.black,
//             label: "Copy",
//           ),
//         ]
//       ),
//     );



//   }
// }

// Future showToast(String message)async{
//   await Fluttertoast.cancel();

//   Fluttertoast.showToast(msg:message,fontSize: 18);

// }

// /////////////////////////////////////////////
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techerr/component/button.dart';
import 'package:techerr/pages/tab_bar.dart';

class Select extends StatelessWidget {
  const Select({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
    slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('AndroidCoding.in'),
                background: Image.network('https://picsum.photos/250?image=9',fit: BoxFit.cover,),
                collapseMode: CollapseMode.pin,
              ),
            ),

            SliverFillRemaining(
              child: CustomScrollView(
                primary: true,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(10),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            //go to tab bar maher
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => TabBarSliverAppbar()//هبد
                                  ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            child: Center(child: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),),
                            color: Colors.blueGrey,
                            
                            
                          ),
                        ),
                        GestureDetector(
                          onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) =>buttom()//هبد
                                  ));},/////////////////////////////
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            child: Center(child: const Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                            color: Colors.blueGrey,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(child: const Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          color: Colors.blueGrey,
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(child: const Text("About",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          color: Colors.blueGrey,
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(child: const Text("More",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          color: Colors.blueGrey,
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          color: Colors.blueGrey,
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      );
    
  }
}
  