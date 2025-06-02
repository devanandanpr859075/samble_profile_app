import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/core.dart';
import 'package:profile_app/profile%20Widget/profile%20widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isloding =true;
  @override
  void initState() {

    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        _isloding=false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appbarClr,
        centerTitle: true,
        title: const Text(
          "MY PROFILE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body:_isloding ? Center(child: CupertinoActivityIndicator(),): Column(
        children: [
          const SizedBox(height: 50),
          const Center(
            child: CircleAvatar(
              radius: 65,
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-psd/3d-icon-social-media-app_23-2150049569.jpg?ga=GA1.1.913137626.1733670628&semt=ais_items_boosted&w=740",
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          InfoRow(label: "name ", value: "Devanandan"),
          SizedBox(
            height: 15,
          ),
          InfoRow(label: "Number", value: "000376254"),
          SizedBox(
            height: 15,
          ),
          InfoRow(label: "Email", value: "Devanandan@gmail.com"),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 150,
            child: MaterialButton(
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey.shade200,
                      ),
                      Text("Go back",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
