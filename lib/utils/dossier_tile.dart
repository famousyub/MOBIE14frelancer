import 'package:flutter/material.dart';
import 'package:prolab/app/models/dossier.dart';
import 'package:prolab/app/models/dossier_data.dart';



class DossierTile extends StatelessWidget {
  final Dossier task;
  final DossiersData tasksData;

  const DossierTile({Key? key, required this.task, required this.tasksData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          activeColor: Colors.green,
          value: task.done,
          onChanged: (checkbox) {
            tasksData.updateTask(task);
          },
        ),
        title: Text(
          task.title,
          style: TextStyle(
            decoration:
                task.done ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            tasksData.deleteTask(task);
          },
        ),
      ),
    );
  }
}