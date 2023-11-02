import 'package:desarrolla_t/widget_page.dart';
import 'package:flutter/material.dart';

import 'package:desarrolla_t/editProfile_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(child: Costado()),
        appBar: AppBar(
          title: const Text('Perfil'),
          actions: <Widget>[
            Builder(builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.add),
                selectedIcon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ModifyProfile()),
                  );
                },
              );
            }),
          ],
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 90,
                    backgroundImage: NetworkImage(
                        'https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2016/09/569465-whatsapp-que-tus-contactos-ponen-rana-perfil.jpg?tf=3840x'),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            '@elBuenPancho',
            style: TextStyle(fontSize: 30),
          ),
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Nombre:',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Pancho Benitez',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Fecha de nacimiento',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      '15 de diciembre',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Correo',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'panchitoloco@gmail.com',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text('No veo el texto'),
          )
        ]));
  }
}
