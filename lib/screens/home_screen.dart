import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/core.dart';
import 'package:profile_app/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarClr,
        centerTitle: true,
        title: Text("Welcome to Flutter intership",style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      body:
      Center(
      child: MaterialButton(
          height: 40,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          color: Colors.black,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfileScreen();
            }));
          },
          child: Container(
            width: 107,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("View Profile",style: TextStyle(color: Colors.white),),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
          )),
      ),
    );
  }
}
