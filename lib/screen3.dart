import 'package:flutter/material.dart';
import 'package:secondproject/student.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  List<Student> computerStudents = [
    Student('Camily', 'camily@utm.edu.my'), 
    Student('Solihin', 'solihin@utm.edu.my')
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
        actions: [
          IconButton(
            onPressed: () {
              //declare
              final nameController = TextEditingController();
              final emailController = TextEditingController();

              //create a popup form
              AlertDialog alertDialog = AlertDialog(
                title: Text('Add Student'),
                content: SizedBox(
                  width: 200,
                  height: 200,
                  child: Column(
                    children: [
                      TextField(
                        controller: nameController,
                      ),
                      TextField(
                        controller: emailController,
                      ),
                    ],
                  ),
                ),
                
                actions: [
                  TextButton(
                      onPressed: () {
                        //code add student
                        computerStudents.add( Student(nameController.text, emailController.text) );
                        setState(() {
                          //refresh screen
                        });
                        //close popup
                        Navigator.pop(context);
                      },
                      child: Text('Ok'))
                ],
              );
              showDialog(
                  context: context,
                  builder: (context) {
                    return alertDialog;
                  });
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: computerStudents.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(computerStudents[index].name),
              subtitle: Text(computerStudents[index].email),
              trailing: IconButton(
                  onPressed: () {
                    //delete
                    computerStudents.removeAt(index);
                    setState(() {
                      //refresh screen
                    });
                  },
                  icon: Icon(Icons.clear)),
            );
          }),
    );
  }
}
