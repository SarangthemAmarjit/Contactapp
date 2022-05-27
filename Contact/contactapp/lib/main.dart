import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'newpage.dart';
import 'Contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CONTACT APP',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const Contactapp(),
    );
  }
}

class Contactapp extends StatefulWidget {
  const Contactapp({Key? key}) : super(key: key);

  @override
  State<Contactapp> createState() => _ContactappState();
}

class _ContactappState extends State<Contactapp> {
  String name1 = '';
  String number1 = '';

  TextEditingController _namefieldcontroller = TextEditingController();
  TextEditingController _phonfieldcontroller = TextEditingController();

  void _alert() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () {},
                    child: Text("CANCEL")),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        name1 = _namefieldcontroller.text;
                        number1 = _phonfieldcontroller.text;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Newpage(
                                      name: name1,
                                      number: number1,
                                    )));
                      },
                      child: Text("ADD")),
                )
              ],
            ),
          ],
          title: Text("Add new contact"),
          content: Container(
            height: 150,
            child: Column(
              children: [
                TextField(
                    controller: _namefieldcontroller,
                    decoration: InputDecoration(
                      hintText: 'Name',
                    )),
                TextFormField(
                  controller: _phonfieldcontroller,
                  decoration: InputDecoration(hintText: 'Phone Number'),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact App")),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: () {},
                          child: Text("CANCEL")),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            onPressed: () {
                              name1 = _namefieldcontroller.text;
                              number1 = _phonfieldcontroller.text;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Newpage(
                                            name: name1,
                                            number: number1,
                                          )));
                            },
                            child: Text("ADD")),
                      )
                    ],
                  ),
                ],
                title: Text("Add new contact"),
                content: Container(
                  height: 150,
                  child: Column(
                    children: [
                      TextField(
                          controller: _namefieldcontroller,
                          decoration: InputDecoration(
                            hintText: 'Name',
                          )),
                      TextFormField(
                        controller: _phonfieldcontroller,
                        decoration: InputDecoration(hintText: 'Phone Number'),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
