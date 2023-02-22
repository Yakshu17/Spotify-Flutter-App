import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify/continuewithphone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homescreen.dart';

class Otpscreen extends StatefulWidget {
  final verificationid;
  const Otpscreen({Key? key,required this.verificationid}) : super(key: key);

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  final auth=FirebaseAuth.instance;
  final otpController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(padding: const EdgeInsets.only(top: 40),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15,),
              Container(padding: const EdgeInsets.only(right:110),
                  child: const Text("Enter your code",
                    style: TextStyle(fontSize: 35,
                        color: Colors.white,fontWeight: FontWeight.bold),)),
              const SizedBox(height:7,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.92,
                child: TextFormField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "",
                      hintStyle: const TextStyle(
                          color: Colors.white
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade600,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.white, width: 10),
                      )),
                ),
              ),
              const SizedBox(height: 12,),
              Container(padding: const EdgeInsets.only(left: 16),
                  child: const Text("We sent an SMS with a 6-digit code to your \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t phone number.", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 10,),
              const SizedBox(height: 10,),
              SizedBox(
                width: 130,
                child: OutlinedButton(
                  onPressed: () async{
                 final authtoken =PhoneAuthProvider.credential(
                     verificationId: widget.verificationid,
                     smsCode: otpController.text.toString()
                 );
                 try{
                   await auth.signInWithCredential(authtoken);
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                 }
                 catch(e){
                   print(e.toString());

                 }

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
                    'Next',
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black26),
                  ),
                ),
              ),
            const SizedBox(height: 20,),
            TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Continuewithphone()));
            },

              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                   FaIcon(FontAwesomeIcons.edit,color: Colors.white),
                  SizedBox(width: 8,),
                  Text("Edit phone number",style: TextStyle(color: Colors.white,fontSize: 15),),
                ],
              ),


            ),
            ],
          ),
        ),
      ),
    );
  }
}
