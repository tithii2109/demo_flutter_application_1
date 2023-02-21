// import 'package:demoflutter_application_1/assets/data.dart';
import 'package:demoflutter_application_1/assets/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../dashboard.dart';
import 'package:intl/intl.dart';

class Myleave extends StatefulWidget {
  const Myleave({super.key, required String title});
  @override
  State<Myleave> createState() => _MyleaveState();
}

class _MyleaveState extends State<Myleave> {
  final dtfrom = TextEditingController();
  final dtto = TextEditingController();
  final dtNu = TextEditingController();
  final dtRe = TextEditingController();
  final dtcna = TextEditingController();
  final dtcnu = TextEditingController();
  final Leavekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 179, 68, 64),
          title: Text("Leave Application"),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            key: Leavekey,
            child: ListView(
              children: <Widget>[



                 Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:25),
              child: TextFormField(
                
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid date';
                    }
                    return null;
                  },
                  
                  controller: dtfrom,
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'From Date',
                    //  prefixIcon: Icon(Icons.date_range),
                     suffix: IconButton(
                          icon: Icon(Icons.calendar_month_sharp),
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2123));
                            if (pickedDate != null) {
                              String formattedDate =
                                  DateFormat('dd-MMM-yyyy').format(pickedDate);
                              Colors.black;
                              setState(() {
                                dtfrom.text = formattedDate;
                              });}}
                   ),)
              ),
              
              
            ),
             Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'To Date';
                    }
                    return null;
                  },
                  controller: dtto,
                  

                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'To Date',
                    //  prefixIcon: Icon(Icons.date_range),
                    suffix: IconButton(
                          icon: Icon(Icons.calendar_month_sharp),
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2123));
                            if (pickedDate != null) {
                              String formattedDate =
                                  DateFormat('dd-MMM-yyyy').format(pickedDate);
                              Colors.black;
                              setState(() {
                                dtto.text = formattedDate;
                              });}})
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
                        return 'Please enter Number';
                      }
                      return null;
                    },
                    controller: dtNu,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_view_week),
                      labelText: 'Number Of Days',
                    ),
                  ),
                ),
                Padding(
                  // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Reason';
                      }
                      return null;
                    },
                    controller: dtRe,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.panorama_photosphere),
                      labelText: 'Reason',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                  ),
                ),
                Container(
                  child: Text(
                    'Contact During Leave',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                        return 'Please enter valid Contact Name';
                      }
                      return null;
                    },
                    controller: dtcna,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Contact Name',
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
                    controller: dtcnu,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.call_end_rounded),
                      labelText: 'Contact Number',
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      if (Leavekey.currentState!.validate()) {
                        suleave(dtfrom.text, dtto.text, dtNu.text, dtRe.text,
                            dtcna.text, dtcnu.text);

                        // Navigator.push(
                        //             context,
                        //             MaterialPageRoute(

                        //                 builder: (context) => const mydata(title: 'mydata',)
                        //                 ),
                        //           );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
