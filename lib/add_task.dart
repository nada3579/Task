import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class addTask extends StatelessWidget {
  const addTask({super.key});
  static const String routeName = "addtask";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 218, 224),
      appBar: AppBar(
        title: Text(
          'Add Task',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 103, 65, 86),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 29,
              width: 356,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 103, 65, 86),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 29,
              width: 356,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Detail',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 103, 65, 86),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Color.fromARGB(255, 103, 65, 86),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
