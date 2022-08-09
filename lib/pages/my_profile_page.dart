import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/utils/shared_global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfilePage extends StatefulWidget {

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  final SharedGlobal _sharedGlobal = SharedGlobal();

  // String fullName = "";
  // String address = "";
  // bool darkMode = false;
  // int gender = 1;

  @override
  initState(){
    super.initState();
    // getDataShared();

  }

  // getDataShared() async{
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   fullName = _prefs.getString("fullName") ?? "-";
  //   address = _prefs.getString("address") ?? "-";
  //   darkMode = _prefs.getBool("darkMode") ?? false;
  //   gender = _prefs.getInt("gender") ?? 1;
  //   setState((){});
  // }

  @override
  Widget build(BuildContext context) {

    // print(_sharedGlobal.fullName);
    // _sharedGlobal.fullName = "Elvis Barrionuevo";
    // print(_sharedGlobal.fullName);


    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mi información",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(_sharedGlobal.fullName),
              subtitle: Text("Nombre Completo"),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(_sharedGlobal.address),
              subtitle: Text("Dirección"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(_sharedGlobal.darkMode.toString()),
              subtitle: Text("Modo Oscuro"),
            ),
            ListTile(
              leading: Icon(Icons.male),
              title: Text(_sharedGlobal.gender.toString()),
              subtitle: Text("Género"),
            ),
          ],
        ),
      ),
    );
  }
}
