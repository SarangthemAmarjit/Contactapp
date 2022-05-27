import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  final String name;
  final String number;
  const Newpage({Key? key, required this.name, required this.number})
      : super(key: key);

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.perm_contact_cal_sharp,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(widget.number),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
