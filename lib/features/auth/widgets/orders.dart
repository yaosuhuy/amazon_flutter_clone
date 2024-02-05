import 'package:first_application/constants/global_variables.dart';
import 'package:first_application/features/auth/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary list
  List list = [
      'https://images.unsplash.com/photo-1624571404553-49e7dbfbc90e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d2luZG93cyUyMDExfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1624571404553-49e7dbfbc90e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d2luZG93cyUyMDExfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1624571404553-49e7dbfbc90e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d2luZG93cyUyMDExfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1624571404553-49e7dbfbc90e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d2luZG93cyUyMDExfGVufDB8fDB8fHww',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: const Text(
                'See All',
                style: TextStyle(color: Color.fromARGB(255, 6, 117, 112)),
              ),
            ),
          ],
        ),
        // display products
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        )
      ],
    );
  }
}
