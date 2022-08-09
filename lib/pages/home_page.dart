import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/utils/shared_global.dart';
import 'package:flutter_codigo_sp/widgets/my_drawer_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SharedGlobal _sharedGlobal = SharedGlobal();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  bool isDarkMode = false;
  int gender = 1;

  // saveSharedPreferences() async{
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   _prefs.setString("fullName", _fullNameController.text);
  //   _prefs.setString("address", _addressController.text);
  //   _prefs.setBool("darkMode", isDarkMode);
  //   _prefs.setInt("gender", gender);
  //   print("Guardando en shared preferences...");
  // }

  save2() {
    _sharedGlobal.fullName = _fullNameController.text;
    _sharedGlobal.address = _addressController.text;
    _sharedGlobal.darkMode = isDarkMode;
    _sharedGlobal.gender = gender;
  }



  // getDataSharedPreferences() async{
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   String fullName = _prefs.getString("fullName") ?? "-";
  //   String address = _prefs.getString("address") ?? "-";
  //   bool darkMode = _prefs.getBool("darkMode") ?? false;
  //   int gender = _prefs.getInt("gender") ?? 1;
  //   print(fullName);
  //   print(address);
  //   print(darkMode);
  //   print(gender);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences App"),
      ),
      drawer: MyDrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Configuracion general",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  hintText: "Nombre completo",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: "Direccion actual",
                ),
              ),
              // Switch(
              //   value: false,
              //   onChanged: (bool value) {},
              // ),
              SwitchListTile(
                title: Text("Modo oscuro"),
                value: isDarkMode,
                onChanged: (bool value) {
                  isDarkMode = value;
                  setState(() {});
                },
              ),
              RadioListTile(
                value: 1,
                groupValue: gender,
                onChanged: (int? value) {
                  gender = value!;
                  setState(() {});
                },
                title: Text("Masculino"),
              ),
              RadioListTile(
                value: 2,
                groupValue: gender,
                onChanged: (int? value) {
                  gender = value!;
                  setState(() {});
                },
                title: Text("Femenino"),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    save2();
                    // saveSharedPreferences();
                    // getDataSharedPreferences();
                    _fullNameController.clear();
                    _addressController.clear();
                  },
                  icon: Icon(Icons.save),
                  label: Text("Guardar data"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    primary: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
