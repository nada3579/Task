import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = "home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 218, 224),
      appBar: AppBar(
        title: Text(
          'TODO APP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 103, 65, 86),
        actions: [
          Icon(
            Icons.calendar_month_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Card(
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write your todo item',
                          contentPadding: EdgeInsets.symmetric(horizontal: 6)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    label: Text(
                      'Add',
                      style: TextStyle(
                        color: Color.fromARGB(255, 103, 65, 86),
                      ),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 103, 65, 86),
                    ),
                    onPressed: () {
                      setState(() {
                        todos.add(controller.text);
                        controller.clear();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          for (final String val in todos) _todoItem(val),
        ],
      ),
    );
  }

  Widget _todoItem(String value) {
    return Card(
      elevation: 5,
      shadowColor: Color.fromARGB(255, 189, 144, 159),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(value), Text('TODO SUB TITLE')],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Pencil.svg',
                  color: Color.fromARGB(255, 103, 65, 86),
                ),
                const SizedBox(
                  width: 4,
                ),
                SvgPicture.asset(
                  'assets/images/Trash.svg',
                  color: Color.fromARGB(255, 103, 65, 86),
                ),
                const SizedBox(
                  width: 4,
                ),
                SvgPicture.asset(
                  'assets/images/CheckCircle.svg',
                  color: Color.fromARGB(255, 103, 65, 86),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
