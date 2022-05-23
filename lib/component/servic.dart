import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class service extends StatelessWidget {
  final int index;
  const service({ Key? key, required this.index }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 150,
    //     width: double.infinity,
    //     child: Card(
          return Card(
          child:Container(
            width: double.infinity,
            child: CustomScrollView(
              
              primary: true,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.all(0.1),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 4,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              //go to tab bar
                            },
                            // child: Container(
                              
                            //   width: double.infinity,
                            //   padding: const EdgeInsets.all(1),
                            //   child: Center(child: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),),
                            //   color: Colors.blueGrey,
                              
                              
                            // ),
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
        );
    
  }
}