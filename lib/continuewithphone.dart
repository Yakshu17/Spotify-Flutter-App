import 'package:flutter/material.dart';
import 'otpscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Continuewithphone extends StatefulWidget {
  const Continuewithphone({Key? key}) : super(key: key);

  @override
  State<Continuewithphone> createState() => _ContinuewithphoneState();
}

class _ContinuewithphoneState extends State<Continuewithphone> {
  final auth=FirebaseAuth.instance;
  final phoneController=TextEditingController();
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
            Container(padding: const EdgeInsets.only(right: 38),
                child: const Text("Enter phone number",
                  style: TextStyle(fontSize: 35,
                      color: Colors.white,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 3,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.92,
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Phone number",
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
            const SizedBox(height: 7,),
            Container(padding: const EdgeInsets.only(left: 16),
                child: const Text("We'll send you a code by SMS to confirm your phone number.", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 15,),
            const Text("We may occasionally send you service-based messages.", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 70,),
            SizedBox(
              width: 130,
              child: OutlinedButton(
                onPressed: () {
                  print("Verifiaction code sended to your ${phoneController.text.toString()}");
                auth.verifyPhoneNumber(
                  phoneNumber: phoneController.text,
                    verificationCompleted:(_){},
                    verificationFailed:(e){
                      print("Verification Failed -  ${e.toString()}");
                    },
                    codeSent: (String verfication_id,int? token){
                  print("Verifiaction code sended to your ${phoneController.text.toString()}");
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Otpscreen(verificationid: verfication_id,)));
                  phoneController.clear();
                  },
                    codeAutoRetrievalTimeout:(e){
                      print("Session is out of time ${e.toString()}");
                  });

                  print("Successful");

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
            )
          ],
        ),
      ),
    );
  }
}
