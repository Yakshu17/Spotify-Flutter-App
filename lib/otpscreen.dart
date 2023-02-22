import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({Key? key}) : super(key: key);

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              Container(padding: const EdgeInsets.only(right:110),
                  child: const Text("Enter your code",
                    style: TextStyle(fontSize: 35,
                        color: Colors.white,fontWeight: FontWeight.bold),)),
              SizedBox(height:7,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.92,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "",
                      hintStyle: TextStyle(
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
              SizedBox(height: 12,),
              Container(padding: EdgeInsets.only(left: 16),
                  child: Text("We sent an SMS with a 6-digit code to your \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t phone number.", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              const SizedBox(height: 10,),
              SizedBox(
                width: 130,
                child: OutlinedButton(
                  onPressed: () {


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
            SizedBox(height: 20,),
            TextButton(onPressed:(){},

              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
