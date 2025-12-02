import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget{
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<TodoListPage> {
  bool isLoading = true;
  List items = [];


  @override
  void initState() {
    super.initState();
    fetchTodo()
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<void> fetchTodo() async {
    final response = await ToDoService.fetchTodo();
    if (response != null) {
      setState(() {
        items = response;
      });
    } else {
      showErrMessage(context, message: 'Something Went Wrong');
    }
    setState(() {
      isLoading = false;
    });
  }

  Future<void> navigateToAddPage(Map item) async {
    final route = MaterialPageRoute(
      builder: (context) => AddToDoPage(todo: item),
    );
    await Navigator.push(context, route);
    setState(() {
      isLoading = true;
    });
    fetchTodo();
  }

    Future<void> deleteById(String id) async {
    final isSucces = await ToDoService.deleteById(id);
    if (isSucces) {
      final filtered = items.where((element) => element['id'] != id).toList();
      setState(() {
        items = filtered;
      });
    } else {
      showErrMessage(context, message: 'Deletion Failed');
    }
  }
}