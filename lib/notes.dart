import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<String> todos = [];
  TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: todoController,
              decoration: InputDecoration(
                labelText: 'Add a Todo',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: addTodo,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(todos[index]),
                  onDismissed: (direction) {
                    removeTodo(index);
                  },
                  child: ListTile(
                    title: Text(todos[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addTodo() {
    String todoText = todoController.text.trim();
    if (todoText.isNotEmpty) {
      setState(() {
        todos.add(todoText);
        todoController.clear();
      });
    }
  }

  void removeTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }
}
