import 'package:flutter/material.dart';
import 'package:prolab/app/models/dossier.dart';
import 'package:prolab/app/models/dossier_data.dart';
import 'package:prolab/app/screens/add_dossier_screen.dart';
import 'package:prolab/service/database_service.dart';
import 'package:provider/provider.dart';
import 'package:prolab/utils/dossier_tile.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Dossier>? tasks;

  getTasks() async {
    tasks = await DatabaseServices.getTasks();
    Provider.of<DossiersData>(context, listen: false).tasks = tasks!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return tasks == null
        ? const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'Todo Tasks (${Provider.of<DossiersData>(context).tasks.length})',
              ),
              centerTitle: true,
              backgroundColor: Colors.green,
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Consumer<DossiersData>(
                builder: (context, tasksData, child) {
                  return ListView.builder(
                      itemCount: tasksData.tasks.length,
                      itemBuilder: (context, index) {
                        Dossier task = tasksData.tasks[index];
                        return DossierTile (
                          task: task,
                          tasksData: tasksData,
                        );
                      });
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.add,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const AddTaskScreen();
                    });
              },
            ),
          );
  }
}