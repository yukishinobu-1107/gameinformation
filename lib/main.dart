import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gameinformation/season/seasonDetail.dart';

import 'character/characterDetail.dart';
import 'home/home.dart';
import 'navigation/choice.dart';
import 'newUpdate/newUpdateDetail.dart';

void main() => runApp(const TabbedAppBarSample());

class TabbedAppBarSample extends StatelessWidget {
  const TabbedAppBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text('Apex Legends情報サイト'),
            bottom: TabBar(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.red;
                  }
                  return null;
                },
              ),
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: [
              Home(),
              CharacterDetail(),
              SeasonDetail(),
              NewUpdateDetail(),
            ],
            // children: choices.map((Choice choice) {
            //   return Padding(
            //     padding: const EdgeInsets.all(5.0),
            //     child: ChoiceCard(choice: choice),
            //   );
            // }).toList(),
          ),
        ),
      ),
    );
  }
}
