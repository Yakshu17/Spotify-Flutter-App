import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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
            Container(padding: const EdgeInsets.only(right:67),
                child: const Text("Email or username",style: TextStyle(fontSize: 37,color: Colors.white,fontWeight: FontWeight.bold),)),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.95,
            child: TextFormField(
              keyboardType: TextInputType.text,
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
                child: TextFormField(keyboardType: TextInputType.text,
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
         SizedBox(height: 30,),
            OutlinedButton(
              onPressed: () {},
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
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),

    );
  }
}

