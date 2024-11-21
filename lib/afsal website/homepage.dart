import 'package:flutter/material.dart';

import 'largescreen.dart';




class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<495) {
        return Scaffold();
      }else{
        return LargeScreen();
      }
    });
  }
}
