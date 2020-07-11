import 'package:flutter/material.dart';


class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: double.infinity,
          width: double.infinity,
            child: Image(image: AssetImage("assets/kuizzo.jpg"),
            fit: BoxFit.fill,),
          );
  }
}