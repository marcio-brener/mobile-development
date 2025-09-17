import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  // Lista de tarefas com datas
  final List<Map<String, dynamic>> _tasks = [
    {'title': 'Comprar pão', 'done': false, 'date': '20/09/2025'},
    {'title': 'Estudar Flutter', 'done': false, 'date': '21/09/2025'},
    {'title': 'Ligar para o João', 'done': false, 'date': '22/09/2025'},
    {'title': 'Exercícios', 'done': false, 'date': '23/09/2025'},
    {'title': 'Fazer almoço', 'done': false, 'date': '24/09/2025'},
  ];

  bool _showCompleted = false;

  @override
  Widget build(BuildContext context) {
    // Filtra tarefas dependendo do botão
    final displayedTasks = _showCompleted
        ? _tasks.where((task) => task['done']).toList()
        : _tasks;

    final uncompletedCount = _tasks.where((task) => !task['done']).length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Kindacode.com',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // Botão "View Completed Tasks"
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showCompleted = !_showCompleted;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  _showCompleted ? 'View All Tasks' : 'View Completed Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Texto de status
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You have $uncompletedCount uncompleted task${uncompletedCount != 1 ? 's' : ''}',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            // Lista de tarefas
            Expanded(
              child: displayedTasks.isEmpty
                  ? Center(
                      child: Text(
                        _showCompleted
                            ? 'No completed tasks'
                            : 'No tasks available',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: displayedTasks.length,
                      itemBuilder: (context, index) {
                        final task = displayedTasks[index];
                        return Card(
                          color: Colors.yellow[300],
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            title: Text(
                              task['title'],
                              style: TextStyle(
                                decoration: task['done']
                                    ? TextDecoration.lineThrough
                                    : null,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              '${task['date']}',
                              style: TextStyle(fontSize: 14),
                            ),
                            trailing: Checkbox(
                              value: task['done'],
                              onChanged: (value) {
                                setState(() {
                                  task['done'] = value!;
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {
          // Adicionar nova tarefa
          showDialog(
            context: context,
            builder: (context) {
              String newTask = '';
              String newDate = '';
              return AlertDialog(
                title: Text('Add New Task'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(hintText: 'Task title'),
                      onChanged: (value) {
                        newTask = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Date (DD/MM/YYYY)',
                      ),
                      onChanged: (value) {
                        newDate = value;
                      },
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (newTask.isNotEmpty && newDate.isNotEmpty) {
                        setState(() {
                          _tasks.add({
                            'title': newTask,
                            'done': false,
                            'date': newDate,
                          });
                        });
                      }
                      Navigator.of(context).pop();
                    },

                    child: Text('Add', style: TextStyle(color: Colors.black)),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
