import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main(){
  runApp(MaterialApp(theme : ThemeData(
    scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
  ),home: myapp()));
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return homepage();
  }
}
