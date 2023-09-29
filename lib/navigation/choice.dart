import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String? title;
  final IconData? icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'ホーム'),
  Choice(title: 'キャラクター情報'),
  Choice(title: 'シーズン情報'),
  Choice(title: '最新アップデート情報'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key? key, this.choice}) : super(key: key);

  final Choice? choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headlineSmall;
    return const Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
