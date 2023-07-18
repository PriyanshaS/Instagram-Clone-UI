import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/main_screen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
    body: SafeArea(
      child: Column(
        
        children: [
          Expanded(
            flex: 1,
            child: 
          Center(
            child: Column(
              children: [
                Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Image.asset('assets/images/logo.png' , height: 50, width: 430,),
          ),
                Text('Sign up to see photos and pictures from your friends',
                style: TextStyle(color: Colors.white , fontSize: 13),),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15) ,color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook_rounded , color: Color.fromARGB(255, 2, 35, 63),),
                      SizedBox(width: 10,),
                      Text('Log in with facebook' ,style:TextStyle(color: Colors.white) ,),
                    ],
                  ),
                ),
              ],
              
            ),
            
          )),
                          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 1, width: 170, color: Colors.grey,),
              Text(' OR ' , style: TextStyle(color: Colors.grey),),
              Container(height: 1, width: 170, color: Colors.grey,)
            ],
          ),
                                    SizedBox(height: 40,),

          Expanded(
            flex: 3,
            child:Column(
            children: [
               Container(
            height: 50,
            width: 340,
            child: TextField(
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
          SizedBox(height: 30,),
           Container(
            height: 50,
            width: 340,
            child: TextField(
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
              SizedBox(height: 20,),
           Container(
            height: 50,
            width: 340,
            child: TextField(
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
              SizedBox(height: 20,),
           Container(
            height: 50,
            width: 340,
            child: TextField(
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
          SizedBox(height: 20,),
           Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15) ,color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen(),));
                        },
                        
                        child: Text('Register' ,style:TextStyle(color: Colors.white) ,)),
                      
                    ],
                  ),
                  
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('By signing up you agree to our Terms and Policy'
                  , style: TextStyle(color: Colors.white , fontSize: 13),),
                )
            ],
          )),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Have an account?' , style: TextStyle(color: Colors.white),),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));
              },
              child: Text(' Log in' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
            )],
          ))
        ],
      ),
    ),
    );
  }
}