import 'package:get/get.dart';
import 'package:prolab/app/modules/authentifcation/views/authentification_view.dart';
import 'package:prolab/app/modules/dossier/views/dossier_view_picker.dart';
import 'package:prolab/app/modules/metalabo/metalaboview.dart';
import 'package:prolab/app/modules/mfolder/MyAppFolder.dart';
import 'package:prolab/app/modules/mydossier/AppDossier.dart';
import 'package:prolab/app/screens/biologist_screen.dart';
import 'package:prolab/app/screens/home_screen.dart';

import '../modules/authentifcation/bindings/authentifcation_binding.dart';

import '../modules/dossier/bindings/dossier_binding.dart';
import '../modules/dossier/views/dossier_view.dart';
import '../modules/etat/bindings/etat_binding.dart';
import '../modules/etat/views/etat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/parametrage/bindings/parametrage_binding.dart';
import '../modules/parametrage/views/parametrage_view.dart';
import '../modules/reglement/bindings/reglement_binding.dart';
import '../modules/reglement/views/reglement_view.dart';
import '../modules/tb/bindings/tb_binding.dart';
import '../modules/tb/views/tb_view.dart';

import 'package:prolab/app/screens/add_dossier_screen.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTIFCATION,
      page: () => const AuthentifcationView(),
      binding: AuthentifcationBinding(),
    ),
    GetPage(
      name: _Paths.TB,
      page: () => const TbView(),
      binding: TbBinding(),
    ),
    GetPage(
      name: _Paths.DOSSIER,
      page: () => const DossierView(),
      binding: DossierBinding(),
    ),
     GetPage(
      name: _Paths.METALABO,
      page: () =>  METAListView(),
      //binding: DossierBinding(),
    ),
     GetPage(
      name: _Paths.DOSSIERPICKER,
      page: () => const DossierPickerView(),
      binding: DossierBinding(),
    ),
    GetPage(
      name: _Paths.PARAMETRAGE,
      page: () => const ParametrageView(),
      binding: ParametrageBinding(),
    ),
    GetPage(
      name: _Paths.REGLEMENT,
      page: () => const ReglementView(),
      binding: ReglementBinding(),
    ),
    
     GetPage(
      name: _Paths.MDOSSIER,
      page: () => const MyAppDossier(),
    //  binding: ReglementBinding(),
    ),
     GetPage(
      name: _Paths.MFOLDER,
      page: () => const  MyAppFolder(),
    //  binding: ReglementBinding(),
    ),
    GetPage(
      name: _Paths.ETAT,
      page: () => const EtatView(),
      binding: EtatBinding(),
    ),
  ];
}
