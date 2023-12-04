import 'package:flutter/material.dart';

class cartButton extends StatefulWidget {
  const cartButton({super.key});

  @override
  State<cartButton> createState() => _cartButtonState();
}

class _cartButtonState extends State<cartButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      width: 140,
      height: 40,
      child: Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.remove,
                color: Colors.white,
              )),
          Text('0',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
