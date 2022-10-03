
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/controllers/user.dart';
import 'package:flutter_web_admin_dashboard/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';


class MyLogin extends StatelessWidget {
  MyLogin({Key? key}) : super(key: key);

  var txtUserNameController = TextEditingController();
  var txtUserPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.txtGry,
        // appBar: AppBar(
        //   title: const Text("Provider Login"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("omnific.jpeg",height:100,width: 100,),
                const Center(
                    child: Text("Login Page",
                        style: TextStyle(fontSize: 30, color: Colors.orangeAccent)
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 30,left: 15,right: 15),
                  child: TextField(
                    controller: txtUserNameController,
              decoration: InputDecoration(
                    label: Text("Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 30,left: 15,right: 15),
                  child: TextField(
                    controller: txtUserPwdController,
                    obscuringCharacter: '*',
                    obscureText: true,
                    decoration: InputDecoration( counterStyle: TextStyle(color: Colors.cyan),
                      label: Text("Password"),
                      hintText: "Enter username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30,left: 15,right: 15),
                  child: TextButton(
                      onPressed: () {
                        Provider.of<User>(context, listen: false).signIn(
                            txtUserNameController.text.toString(),
                            txtUserPwdController.text.toString());
                        Get.to(() => HomePage());
                      },
                      child: const Text("Login")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}