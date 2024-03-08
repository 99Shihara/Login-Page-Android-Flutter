import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
   const SignUpPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        leading: IconButton(
          onPressed:() {
            Navigator.pop(context);
          },

          icon: const Icon(Icons.arrow_back_ios,
            size: 20,
            color:Colors.black,
        ),
        ),
      ),
          body :SingleChildScrollView(
         child: Container(
           padding: const EdgeInsets.symmetric(horizontal: 40),
           height: MediaQuery.of(context).size.height-50,
           width: double.infinity,
           child:  Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                const Column(
                 children: <Widget>[
                   Text("SignUp",
                   style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   SizedBox(height: 20,),
                   Text("create an account",
                      style: TextStyle(
                         fontSize: 15,
                          fontWeight: FontWeight.bold,
                           color: Colors.grey,
                      ),
                   ),
                 ],
                ),//column

                Column(
                 children: <Widget>[
                  inputFile(lable: "User Name"),
                  inputFile(lable: "Email"),
                  inputFile(lable: "Password",obscureText:true),
                  inputFile(lable:"Confirm Password",obscureText: true),
                ],
                ),

             Container(
               padding:  const EdgeInsets.only(top: 3,left: 3),
               decoration:
               BoxDecoration(
                 borderRadius:  BorderRadius.circular(50),
                 border:  const Border(
                   bottom: BorderSide(color: Colors.black),
                   top: BorderSide(color: Colors.black),
                   left: BorderSide(color: Colors.black),
                   right: BorderSide(color: Colors.black),

                 ),
               ),
               child: MaterialButton(
                 minWidth: double.infinity,
                 height: 60,
                 onPressed: () {},
                 color:  const Color(0xff0095FF),
                 elevation: 0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(50),
                 ),


                 child:const Text(
                   "SignUp",style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 18,
                   color: Colors.white,
                  ),
                 ),
                ),
             ),

               const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                Text("Already have an account?"),

               Text(" Login",
                 style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize: 18,
                 ),
                 ),
                ],
               )


              ],


           ),

    ),
    ),
    );
}

}

Widget inputFile({lable,obscureText=false})
{
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
          lable,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          )
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal:10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )
        ),
      ),
      const SizedBox(height: 10,)
    ],

  );
}
