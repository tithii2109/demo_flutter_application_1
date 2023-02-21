// import 'package:flutter/material.dart';
// import 'package:flutter_leave/main.dart';
import 'package:postgres/postgres.dart';

import 'comman.dart';
// import 'package:flutter_leave/services/pgadmin.dart';

Future operation(email, password) async {
  AppCommon.connection = PostgreSQLConnection(
      "192.168.1.99", // hostURL
      5432, // port
      "leave_database", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: false);

  await AppCommon.connection.open();
  final data = <String, dynamic>{
    "email": email,
    "password": password,
  };

  // await connection.close();

  if (AppCommon.connection.isClosed == false) print("Connected");

  await AppCommon.connection.execute(
      "INSERT INTO LOGIN (email, pwd) VALUES (@email, @password)",
      substitutionValues: data);
}

Future Regester(Firstname, Lastname, Emailid, Phonenumber, Password) async {
  AppCommon.connection = PostgreSQLConnection(
      "192.168.1.99", // hostURL
      5432, // port
      "leave_database", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: false);

  await AppCommon.connection.open();
  final data = <String, dynamic>{
    "Firstname": Firstname,
    "Lastname": Lastname,
    "Emailid": Emailid,
    "Phonenumber": Phonenumber,
    "Password": Password,
  };
  if (AppCommon.connection.isClosed == false) print("Connected");

  await AppCommon.connection.execute(
      "INSERT INTO REGESTER (Firstname, Lastname, Emailid, Phonenumber, Password) VALUES (@Firstname, @Lastname, @Emailid, @Phonenumber, @Password)",
      substitutionValues: data);
}

Future suleave(
    Fromdate, Todate, Numdays, Reason, Contactname, Contactnumber) async {
  AppCommon.connection = PostgreSQLConnection(
      "192.168.1.99", // hostURL
      5432, // port
      "leave_database", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: false);

  await AppCommon.connection.open();
  final data = <String, dynamic>{
    "Fromdate": Fromdate,
    "Todate": Todate,
    "Numdays": Numdays,
    "Reason": Reason,
    "Contactname": Contactname,
    "Contactnumber": Contactnumber,
  };
  if (AppCommon.connection.isClosed == false) print("Connected");

  await AppCommon.connection.execute(
      "INSERT INTO LEAVEINFO (Fromdate, Todate, Numdays, Reason, Contactname, Contactnumber) VALUES (@Fromdate, @Todate, @Numdays, @Reason, @Contactname, @Contactnumber)",
      substitutionValues: data);
   
}
