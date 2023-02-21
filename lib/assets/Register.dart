import 'package:demoflutter_application_1/dashboard.dart';
import 'package:demoflutter_application_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

import 'data.dart';

class Register extends StatefulWidget {const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register>{
final Registerkey = GlobalKey<FormState>();
final frnm= TextEditingController();
final lsnm= TextEditingController();
final eid= TextEditingController();
final phone= TextEditingController();
final pswd= TextEditingController();
final cpswd  = TextEditingController();

bool passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar
(  backgroundColor: Color.fromARGB(255, 29, 90, 4),
         title: Text("Register Yourself"),      
        centerTitle: true,  
       ), 
body: Center(
  child:Form(
      key: Registerkey,
    child:ListView(
      children: <Widget>[
Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(
                  
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid First Name';
                    }
                    return null;
                  },
                  controller: frnm,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'First Name',
                ),
              ),

 ),

Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(
                   
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Last Name';
                    }
                    return null;
                  },
                   controller: lsnm,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Last Name',
                ),
              ),

 ),
Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(
                   
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Email id';
                    }
                    return null;
                  },
                      controller: eid,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email id',
                ),
              ),

 ),
Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(       
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Contact Number';
                    }
                    return null;
                  },
                      controller: phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.contact_phone),
                      labelText: 'contact Number',
                ),
              ),

 ),
Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(
                   obscureText: passwordVisible,
                  controller: pswd,
                   
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid password';
                    }
            
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Password',
                     prefixIcon: Icon(Icons.lock),
                     helperStyle:TextStyle(color:Color.fromARGB(255, 19, 121, 50)),
                   suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ? Icons.visibility
                         : Icons.visibility_off),
                     onPressed: () {
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                   ),
                   alignLabelWithHint: false,
                   filled: true,
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
               
                     
              ),

 ),
Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(
                   controller:cpswd,
                    validator: (value) {
                    if (value == null || value.isEmpty) 
                      return 'Please enter valid Confirm password';
                    if (value != pswd.text)
                    return "Password Doesnot Match";
                    
                  },
                  
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'ConfirmPassword',
                     prefixIcon: Icon(Icons.lock),
                     helperStyle:TextStyle(color:Colors.green),
                   suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ? Icons.visibility
                         : Icons.visibility_off),
                     onPressed: () {
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                   ),
                   alignLabelWithHint: false,
                   filled: true,
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
               
                     
              ),
              

 ),
Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  child: Text("Create Account"),
                   onPressed: () {
               if (Registerkey.currentState!.validate()) {
                 Regester(frnm.text, lsnm.text, eid.text, phone.text, pswd.text);
                Navigator.push(
                            context,
                            MaterialPageRoute(
                               
                                builder: (context) => const MyHomePage(title: 'MyHomepage',)
                                ),
                          );
                        }
                      },
                ),
              ),
      ]

    ) 
  
  )

),
    );
  }
}