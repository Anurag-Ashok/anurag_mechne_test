import 'package:anurag_mechne_test/pages/tabs/tab1.dart';
import 'package:anurag_mechne_test/pages/tabs/tab2.dart';
import 'package:anurag_mechne_test/pages/tabs/tab3.dart';
import 'package:anurag_mechne_test/pages/widgets/drawer.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: const drawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Builder(
                builder: (context) => // Ensure Scaffold is in context
                    IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer())),
            actions: const [
              Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              )
            ],
            bottom: const TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.pink,
                isScrollable: true,
                labelColor: Colors.pink,
                tabs: [
                  Tab(
                    child: Text('Salads and Soup'),
                  ),
                  Tab(
                    text: 'From The Barnyard',
                  ),
                  Tab(
                    text: 'From The Farmers',
                  )
                ]),
          ),
          body: const TabBarView(
            children: [tab1(), tab2(), tab3()],
          )),
    );
  }
}
