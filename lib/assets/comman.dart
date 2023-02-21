import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:postgres/postgres.dart';


class AppCommon{
  static var connection;
}
showLoAlert(BuildContext context1) {
  showDialog(
      context: context1,
      builder: (BuildContext context2) {
        return AlertDialog(
          title: Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context2,
                    MaterialPageRoute(builder: (context1) => MyHomePage(title: 'MyHomePage',)),
                  );
                },
                child: Text("Yes")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context2);
                },
                child: Text("No")),
          ],
        );
      });
}

// Future operation() async {
//   var connection = PostgreSQLConnection(
//       "192.168.1.90", // hostURL
//       5432, // port
//       "leave_database", // databaseName
//       username: "postgres",
//       password: "AdvEnt4pgSQL",
//       useSSL: false);
// // if(connection.isClosed == false)
// //        await connection.query("INSERT INTO ROLE(ROLEID, ROLENAME) VALUES(1, 'Test')");
//   try {
//     await connection.open();
//     if(connection.isClosed == false)
//       //  await 
//       //   connection.query('''INSERT INTO ROLE(ROLE_ID, ROLE_NAME) VALUES(3, 'intern') ''' 
//       //   );
//     //  await
//     //  connection.query("UPDATE ROLE SET ROLE_NAME='HR' WHERE ROLE_ID=2");
      
// //  await
// //  connection.query("SELECT * FROM  PUBLIC.ROLE WHERE ROLE_ID>1");
// // await
// // connection.query('DELETE FROM ROLE WHERE ROLE_ID>2');

// //  await 
// //         connection.query('''INSERT INTO DEPARTMENT(DEP_ID,DEPNAME) VALUES(3, 'INTERN') ''' 
// //         );

//   // await 
//   //        connection.query('''INSERT INTO PROJECTINFO(PROJECT_ID,PROJECTNAME) VALUES('PL', 'LEAVEAPPLICATION') ''' 
//   //        );
// //  await 
// //         connection.query('''INSERT INTO EMPPROJECTINFO(EMPPROJECT_ID,EMAIL_ID,PROJECT_ID) VALUES( 1,'tithiamin2109@gmail.com', 'LEAVEAPPLICATION') ''' 
// //         );

// // await
// // connection.query('''INSERT INTO EMPLOYEE(EMAIL_ID,ROLE_ID,DEP_ID,EMP_CODE,FIRSTNAME,LASTNAME,PHONENUMBER,ISANACTIVE) VALUES('TITHI@GMAIL.COM',1,2,003,'TIHTI','RAHUL',6666568555,'Y')   ''');


// //  await 
// //          connection.query('''INSERT INTO PROJECTINFO(PROJECT_ID,PROJECTNAME) VALUES('PL', 'LEAVEAPPLICATION') ''' 
// //          );
// //  
// //  await
// //  connection.query('''INSERT INTO EMPPROJECTINFO(EMPPROJECT_ID,PROJECT_ID,EMAIL_ID) VALUES(1,'PL','TITHI')''');
// //   if(connection.isClosed == false)
// // await connection.query("INSERT INTO DEPARTMENT(DEP_ID DEPNAME) VALUES(1,'Software Engineer')");
//     print("Connected");
//   } catch (e) {
//     print("error");
//     print(e.toString());
//   }
// }

