import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/pages/my_profile_page.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/1629236/pexels-photo-1629236.jpeg",
                ),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/762080/pexels-photo-762080.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    ),
                  ),
                  Text(
                    "Verónica Téllez",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Administrador",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfilePage()));
            },
            leading: Icon(
              Icons.person,
              color: Colors.black.withOpacity(0.6),
            ),
            title: Text("Mi perfil"),
          ),
          ListTile(
            leading: Icon(
              Icons.file_copy,
              color: Colors.black.withOpacity(0.6),
            ),
            title: Text("Portafolio general"),
          ),
          ListTile(
            leading: Icon(
              Icons.lock,
              color: Colors.black.withOpacity(0.6),
            ),
            title: Text("Cambiar Contraseña"),
          ),
          Divider(
            indent: 12,
            endIndent: 12,
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.black.withOpacity(0.6),
            ),
            title: Text("Salir del app"),
          ),
        ],
      ),
    );
  }
}
