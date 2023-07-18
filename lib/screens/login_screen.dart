


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/screens/main_screen.dart';
import 'package:instagram_clone/screens/register_screen.dart';

class Login extends StatelessWidget {
   Login({super.key});
  final _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('English', style: TextStyle(color: Colors.grey , fontSize:14),) ,
      backgroundColor: Colors.black, centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Image.asset('assets/images/logo.png' ,height: 60,
              width: 200, ),
            ),
          ),
          Container(
            height: 50,
            width: 340,
            child: TextField(
              
              controller: _usernameController,
              decoration:InputDecoration(
                hintText:'Phone number , email or username' ,
                hintStyle: TextStyle(color: Colors.white24),
                filled: true,
                fillColor: Colors.grey.shade700,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
           Container(
            height: 50,
            width: 340,
            child: TextField(
              
              controller: _usernameController,
              decoration:InputDecoration(
                hintText:'Password' ,
                hintStyle: TextStyle(color: Colors.white24),
                filled: true,
                fillColor: Colors.grey.shade700,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen(),));
            },
            child: Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(child: Text('Login' ,style: TextStyle(color: Colors.white),)),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Forgot your login credentials?' , style: TextStyle(color: Colors.white , fontSize: 12),),
            Text(' Get help logging in' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 12),)],
          ),
          SizedBox(height: 250,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Don't have an account? " , style: TextStyle(color: Colors.white),),
            InkWell(
              onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register(),));
              },
              child: Text('Sign up' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),))
          ],)
        ],
      ),
    );
  }
}