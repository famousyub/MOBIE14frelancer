import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prolab/app/models/MetaLabo.dart';
import 'package:prolab/app/modules/metalabo/metaabo_controller.dart';


class METAListView extends StatelessWidget {
  final MetaLaboController productController = Get.put(MetaLaboController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('metalabos List'),
      ),
      body: Obx(() {
        if (productController.metalabos.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: productController.metalabos.length,
            itemBuilder: (context, index) {
              final product = productController.metalabos[index];
              return ListTile(
                title: Text(product.nom),
                subtitle: Text('adress: \$${product.adresse}'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => productController.deleteLabo(product.id),
                ),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final MetaLabo? newProduct = await showDialog(
            context: context,
            builder: (context) => MeataLaboDialog(),
          );
          if (newProduct != null) {
            await productController.addLabo(newProduct);
          }
        },
      ),
    );
  }
}

class MeataLaboDialog extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add meta'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Product Name'),
          ),
          TextField(
            controller: priceController,
            decoration: InputDecoration(labelText: 'Product Price'),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          child: Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        ElevatedButton(
          child: Text('Add'),
          onPressed: () {
            final String name = nameController.text.trim();
            final String addresse = priceController.text.trim();
           
              final newProduct =
                  MetaLabo( id:0,adresse: name, nom: addresse,codebiologistecnam:"m",enteteAfour: "8",fax: "k",mail: "m",commentaire: "8",matriculefiscale: "k",nomBiologiste: "m",nomlabo: "8",piedAfour: "k",tel: "m",textmail: "8",useradd: "k",ville: "tunis");

              Navigator.of(context).pop(newProduct);
            
          },
        ),
      ],
    );
  }
}
