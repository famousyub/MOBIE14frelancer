import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prolab/app/models/dossier.dart';

import 'globals.dart';

class DatabaseServices {
  static Future<Dossier> addTask(String title) async {
    Map data = {
      "title": title,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + '/doosier/add');

    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Dossier task = Dossier.fromMap(responseMap);

    return task;
  }

  static Future<List<Dossier>> getTasks() async {
    var url = Uri.parse(baseURL+'/doosier');
    http.Response response = await http.get(
      url,
      headers: headers,
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Dossier> tasks = [];
    for (Map taskMap in responseList) {
      Dossier task = Dossier.fromMap(taskMap);
      tasks.add(task);
    }
    return tasks;
  }

  static Future<http.Response> updateTask(int id) async {
    var url = Uri.parse(baseURL + '/doosier/update/$id');
    http.Response response = await http.put(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> deleteTask(int id) async {
    var url = Uri.parse(baseURL + '/doosier/delete/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}