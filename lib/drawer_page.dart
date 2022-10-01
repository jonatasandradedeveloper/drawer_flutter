import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Jonatas Andrade"),
              accountEmail: Text("jonatasandrade.develop@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("J.A"),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              trailing: const Icon(Icons.house),
              onTap: () {
                print("Tela Home");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Perfil"),
              trailing: const Icon(Icons.account_circle),
              onTap: () {
                print("Tela Perfil");
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: const Center(child: Text("Olá Mundo")),
    );
  }
}
