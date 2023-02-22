import 'package:flutter/material.dart';

class Signupfree extends StatefulWidget {
  const Signupfree({Key? key}) : super(key: key);

  @override
  State<Signupfree> createState() => _SignupfreeState();
}

class _SignupfreeState extends State<Signupfree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create account",style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text("What's your email?",
                  style: TextStyle(fontSize: 37, color: Colors.white,fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
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
              const SizedBox(
                height: 5,
              ),
              const Text(
                "You'll need to confirm this email later.",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1.0,
                child: Center(
                    child: SizedBox(
                      width: 100,
                      child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        padding: const EdgeInsets.all(16.8),
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
                    )),
              )
            ],
          )),
    );
  }
}
