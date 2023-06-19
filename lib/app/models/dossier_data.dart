import 'package:flutter/cupertino.dart';

import 'package:prolab/app/models/dossier.dart';
import 'package:prolab/app/models/dossier_data.dart';
import 'package:prolab/service/database_service.dart';
class DossiersData extends ChangeNotifier {
  List<Dossier> tasks = [];

  void addTask(String taskTitle) async {
    Dossier task = await DatabaseServices.addTask(taskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Dossier task) {
    task.toggle();
    DatabaseServices.updateTask(task.id);
    notifyListeners();
  }

  void deleteTask(Dossier task) {
    tasks.remove(task);
    DatabaseServices.deleteTask(task.id);
    notifyListeners();
  }
}