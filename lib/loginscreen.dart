import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/homescreen.dart';


class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final auth=FirebaseAuth.instance;
  final emailController=TextEditingController();
  final passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15,),
            Container(padding: const EdgeInsets.only(right:60),
                child: const Text("Email or username",style: TextStyle(fontSize: 37,color: Colors.white,fontWeight: FontWeight.bold),)),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.95,
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: emailController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade600,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.white, width: 10),
                  )),
            ),
          ),
            const SizedBox(height: 20,),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Container(padding: const EdgeInsets.only(left:1),
                  child: const
                  Text("Password",style: TextStyle(fontSize: 37,color: Colors.white,fontWeight: FontWeight.bold),)),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.95,
                child: TextFormField(keyboardType: TextInputType.number,
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade600,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.white, width: 10),

                      )),

                ),
              )

            ],
          ),
         const SizedBox(height: 30,),
            SizedBox(
              width: 110,
              child: OutlinedButton(
                onPressed: () {
                  auth.signInWithEmailAndPassword(
                      email:emailController.text.toString()
                      , password: passController.text.toString()).then((value) {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Homescreen()));
                    emailController.clear();
                    passController.clear();
                      }).then((value){
                    print("Login Successfully");
                  }).onError((error, stackTrace){
                    print(error.toString());
                  });


                },
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.all(15.9),
                    backgroundColor: Colors.grey,
                    maximumSize:const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    )),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black26),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

