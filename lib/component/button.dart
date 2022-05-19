import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  final int index;
  const bottom({ Key? key, required this.index }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
        width: 400,
        child: Card(
          
          child:Container(
            width: 400,
            child: CustomScrollView(
              
              primary: true,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.all(0.1),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 2,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              //go to tab bar
                            },
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              child: Center(child: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),),
                              color: Colors.blueGrey,
                              
                              
                            ),
                          ),
                          // Container(
                          //   padding: const EdgeInsets.all(2),
                          //   child: Center(child: const Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          //   color: Colors.blueGrey,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(2),
                          //   child: Center(child: const Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          //   color: Colors.blueGrey,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(2),
                          //   child: Center(child: const Text("About",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          //   color: Colors.blueGrey,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(2),
                          //   child: Center(child: const Text("More",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          //   color: Colors.blueGrey,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(2),
                          //   child: Center(child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          //   color: Colors.blueGrey,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(2),
                          //   child: Center(child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                          //   color: Colors.blueGrey,
                          // ),
                        ],
                      ),
                    ),
                  ],
            ),
          ),
        )
    );
  }
}