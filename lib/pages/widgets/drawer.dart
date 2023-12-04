import 'package:anurag_mechne_test/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<drawer> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green,
          ), //BoxDecoration
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            accountName: Text(
              "User Name",
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text("User email"),
            currentAccountPictureSize: Size.square(50),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 165, 255, 137),
              child: Text(
                "A",
                style: TextStyle(fontSize: 30.0, color: Colors.blue),
              ), //Text
            ), //circleAvatar
          ), //UserAccountDrawerHeader
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('LogOut'),
          onTap: () {
            _auth.signOut();

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          },
        )
      ],
    ));
  }
}
