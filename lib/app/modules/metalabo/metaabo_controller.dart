import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:prolab/app/models/MetaLabo.dart';
import 'dart:convert';



class MetaLaboController extends GetxController {
  var metalabos = <MetaLabo>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchLabos();
  }

  Future<void> fetchLabos() async {
    final response =
        await http.get(Uri.parse('http://localhost:8083/api/v1/metalabo-all'));
    if (response.statusCode == 200) {
      final List responseData = json.decode(response.body);
     // metalabos.value =
      for(Map meta_ in responseData){
        //responseData.map((data) =>
        MetaLabo me_ =   MetaLabo.fromMap(meta_);
        metalabos.add(me_);
      }
          
    } else {
      throw Exception('Failed to fetch metalabos');
    }
  }

  Future<void> addLabo(MetaLabo metalabo) async {

     Map data = {
      "adresse": metalabo.adresse,
       "nomBiologiste" : metalabo.nomBiologiste,
        "nomlabo" : metalabo.nomlabo,
           "nom":metalabo.nom,
	   	 
	
	
	  "ville":metalabo.ville,
	
	  "tel":metalabo.tel,
	
	  "fax":metalabo.fax,
	
	  "commentaire" :metalabo.commentaire,
	
	  "matriculefiscale":metalabo.matriculefiscale,
	
	  "useradd":metalabo.useradd,
	
	
	  "enteteAfour":metalabo.enteteAfour,
	  "piedAfour":metalabo.piedAfour,
	
	  "codebiologistecnam":metalabo.codebiologistecnam,
	
	  "mail":metalabo.mail,
	
	  "textmail":metalabo.textmail
    };

    final response = await http.post(
      Uri.parse('http://localhost:8083/api/v1/metalabo-create'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    if (response.statusCode == 201) {
      metalabos.add(metalabo);
    } else {
      throw Exception('Failed to add metalabo');
    }
  }

  Future<void> updateLabo(MetaLabo metalabo) async {

  
       Map data = {
        "id":metalabo.id,
      "adresse": metalabo.adresse,
       "nomBiologiste" : metalabo.nomBiologiste,
        "nomlabo" : metalabo.nomlabo,
           "nom":metalabo.nom,
	   	
	
	
	  "ville":metalabo.ville,
	
	  "tel":metalabo.tel,
	
	  "fax":metalabo.fax,
	
	  "commentaire" :metalabo.commentaire,
	
	  "matriculefiscale":metalabo.matriculefiscale,
	
	  "useradd":metalabo.useradd,
	
	
	  "enteteAfour":metalabo.enteteAfour,
	  "piedAfour":metalabo.piedAfour,
	
	  "codebiologistecnam":metalabo.codebiologistecnam,
	
	  "mail":metalabo.mail,
	
	  "textmail":metalabo.textmail
    };

    final response = await http.put(
      Uri.parse('http://localhost:8083/api/metalabo/${metalabo.id}'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    if (response.statusCode == 200) {
      metalabos[metalabos.indexWhere((p) => p.id == metalabo.id)] = metalabo;
    } else {
      throw Exception('Failed to update labo');
    }
  }

  Future<void> deleteLabo(int id) async {
    final response =
        await http.delete(Uri.parse('http://localhost:8083/api/metalabo/$id'));
    if (response.statusCode == 200) {
      metalabos.removeWhere((product) => product.id == id);
    } else {
      throw Exception('Failed to delete labo');
    }
  }
}
