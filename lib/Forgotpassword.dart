import 'package:demoflutter_application_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
final Forgotkey = GlobalKey<FormState>(); 
bool passwordVisible=false;   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar
(  backgroundColor: Color.fromARGB(255, 62, 4, 110),
         title: Text("Create A New Password"),      
        centerTitle: true,  
       ), 
      body: Center(
        
        child:Form(
          
           key: Forgotkey,
          
          
          child: ListView(
          
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
                      return 'Please enter valid email id ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Email Id ',
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
                  
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid password';
                    }
                  
                  },
                  decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Password',
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
                  child: Text("Submit"),
                   onPressed: () {
               if (Forgotkey.currentState!.validate()) {
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
          
          
          ))
        
        
        ),










    );
  }
}
