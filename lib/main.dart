

import 'package:flutter/material.dart';
import 'package:vehicletrackingapplogin/SignUp.dart';

import 'login.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
  ));
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding:  const EdgeInsets.symmetric(horizontal:30, vertical: 50 ),
          child:  Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              const Column(
                  children:<Widget>[
                    Text(
                      "WelCome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Vehicle Tracking System",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,

                     ),)
                  ],
              ),

                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/background.png"),
                    ),
                        ),
                ),

                   Column(
                     children: <Widget>[
                       MaterialButton(
                         minWidth:200.0,
                         height: 60,
                         onPressed: () {
                           Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage()));
                         } ,
                         shape: RoundedRectangleBorder(
                             side:const BorderSide(
                               color: Colors.black,
                             ),
                            borderRadius:BorderRadius.circular(50)

                         ),
                       child: const Text(
                         "Login",
                        style:TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                       ),
                       ),
                        const SizedBox(height: 20),
                       MaterialButton(
                          minWidth:200.0,
                           height: 60,
                           onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) => const SignUpPage()));
                           },
                            color: const Color(0xff0095FF),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(50),
                             ),
                             child: const Text(
                               "SignUp",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w600,
                                 fontSize: 18,
                               ),
                             ),
                           ),
                   ]
                  )
             ],
          ),

        ),
      ),
    );

  }
}

