import 'package:anurag_mechne_test/pages/widgets/button.dart';
import 'package:flutter/material.dart';

class tab1 extends StatefulWidget {
  const tab1({super.key});

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                    leading: const Icon(Icons.list),
                    trailing: Image.network(
                        "https://bpb-us-e1.wpmucdn.com/sites.psu.edu/dist/3/29639/files/2015/10/265204-chicken-soup.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chinees Soupe'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('₹ 30'), Text('15 Calories')],
                          ),
                        )
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('gsdxjhadxcvdhcxvahs,vagxvbas cxcgdfwuyxv'),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: cartButton()),
                        ],
                      ),
                    )),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              )
            ],
          );
        });
  }
}
