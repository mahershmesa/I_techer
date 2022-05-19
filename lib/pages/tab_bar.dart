import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techerr/component/button.dart';

import '../main.dart';

class TabBarSliverAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  title: Text("maher"),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.map), text: 'Tab 1'),
                      Tab(icon: Icon(Icons.portrait), text: 'Tab 2'),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                buildImages(),
               // buildImages(),
              ],
            ),
          ),
        ),
      );

  Widget buildImages() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 2,
        itemBuilder: (context, index) => bottom(index: index),//go to bottom
      );
}