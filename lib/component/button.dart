// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class bottom extends StatelessWidget {
//   final int index;
//   const bottom({ Key? key, required this.index }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//         width: 400,
//         child: Card(
          
//           child:Container(
//             width: 400,
//             child: CustomScrollView(
              
//               primary: true,
//                   slivers: <Widget>[
//                     SliverPadding(
//                       padding: const EdgeInsets.all(0.1),
//                       sliver: SliverGrid.count(
//                         crossAxisSpacing: 15,
//                         mainAxisSpacing: 15,
//                         crossAxisCount: 2,
//                         children: <Widget>[
//                           GestureDetector(
//                             onTap: (){
//                               //go to tab bar
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.all(2),
//                               child: Center(child: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),),
//                               color: Colors.blueGrey,
                              
                              
//                             ),
//                           ),
//                           // Container(
//                           //   padding: const EdgeInsets.all(2),
//                           //   child: Center(child: const Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
//                           //   color: Colors.blueGrey,
//                           // ),
//                           // Container(
//                           //   padding: const EdgeInsets.all(2),
//                           //   child: Center(child: const Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
//                           //   color: Colors.blueGrey,
//                           // ),
//                           // Container(
//                           //   padding: const EdgeInsets.all(2),
//                           //   child: Center(child: const Text("About",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
//                           //   color: Colors.blueGrey,
//                           // ),
//                           // Container(
//                           //   padding: const EdgeInsets.all(2),
//                           //   child: Center(child: const Text("More",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
//                           //   color: Colors.blueGrey,
//                           // ),
//                           // Container(
//                           //   padding: const EdgeInsets.all(2),
//                           //   child: Center(child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
//                           //   color: Colors.blueGrey,
//                           // ),
//                           // Container(
//                           //   padding: const EdgeInsets.all(2),
//                           //   child: Center(child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
//                           //   color: Colors.blueGrey,
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ],
//             ),
//           ),
//         )
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class buttom extends StatelessWidget {
  const buttom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Student",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                const Expanded(child: Center()),
                CircleAvatar(
                  child: Image.asset("assets/images/app_logo.jpg"),

                )
              ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                DropdownButton(
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      underline: Container(
                        color: Colors.white,
                      ),
                  items:  ["Featured", "Most Rated", "Recent", "Popular"].map<DropdownMenuItem>((e) => DropdownMenuItem(child: Text(e))).toList(),
                    
                  
                    ),
                    IconButton(icon: const Icon(Icons.sort), onPressed: () {}),

                ],
              ),
                const SizedBox(
                height: 10,
              ),
                Expanded(
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
                      .map((e) => FocusedMenuHolder(
                        menuWidth: MediaQuery.of(context).size.width*0.50,
                        blurSize: 5.0,
                        menuItemExtent: 45,
                        menuBoxDecoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(15.0))),
                        duration: const Duration(milliseconds: 100),
                        animateMenuItems: true,
                        blurBackgroundColor: Colors.black54,
                        bottomOffsetHeight: 100,
                        openWithTap: true,
                        menuItems: <FocusedMenuItem>[
                          FocusedMenuItem(title: const Text("Open"),trailingIcon: const Icon(Icons.open_in_new) ,onPressed: (){
                         //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                          }),
                          FocusedMenuItem(title: const Text("Share"),trailingIcon: const Icon(Icons.share) ,onPressed: (){}),
                          FocusedMenuItem(title: const Text("Favorite"),trailingIcon: const Icon(Icons.favorite_border) ,onPressed: (){}),
                          FocusedMenuItem(title: const Text("Delete",style: TextStyle(color: Colors.redAccent),),trailingIcon: Icon(Icons.delete,color: Colors.redAccent,) ,onPressed: (){}),
                        ],
                          onPressed: (){},
                        child: Card(
                              child: Column(
                                children: <Widget>[
                                  Image.asset("assets/images/image_$e.jpg"),
                                ],
                              ),
                            ),
                      ))
                      .toList(),
                                  ),
              ),
            ],
          ),
        )),
          bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 2"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 3"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 4"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 5"),
        ]
        ),
      ),
    );
  }
}
