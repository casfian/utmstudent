import 'package:flutter/material.dart';
import 'package:secondproject/screen2.dart';
import 'package:secondproject/screen3.dart';
import 'package:secondproject/student.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen1'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Screen1'),
              onTap: () {
                MaterialPageRoute route = MaterialPageRoute(builder: (context) => Screen1() );
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: Text('Screen2'),
            ),
            ListTile(
              title: Text('Screen3'),
              onTap: () {
                MaterialPageRoute route = MaterialPageRoute(builder: (context) => Screen3() );
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
          child: Column(
            children: [
              Image.network(
                  'https://world.uz/files/malayziyada-oqish1_502149oj.jpg'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Borang Flutter',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text('Name'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {
                      Student studentInfo =
                          Student(nameController.text, emailController.text);

                      //code
                      MaterialPageRoute route = MaterialPageRoute(
                          builder: (context) => Screen2(passObj: studentInfo));
                      Navigator.push(context, route);
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
