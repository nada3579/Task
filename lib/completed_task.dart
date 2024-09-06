import 'package:flutter/material.dart';

class completedTask extends StatelessWidget {
  const completedTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 218, 224),
      appBar: AppBar(
        title: Text(
          'Completed Task',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 103, 65, 86),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: ListView(
          children: [
            _todoItem(),
            _todoItem(),
            _todoItem(),
          ],
        ),
      ),
    );
  }

  Widget _todoItem() {
    return Container(
      height: 80,
      child: Card(
        elevation: 5,
        shadowColor: Color.fromARGB(255, 189, 144, 159),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TODO TITLE',
                style: TextStyle(
                    color: Color.fromARGB(255, 103, 65, 86),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                'TODO SUB TITLE',
                style: TextStyle(color: Colors.black, fontSize: 11),
              )
            ],
          ),
        ),
      ),
    );
  }
}
