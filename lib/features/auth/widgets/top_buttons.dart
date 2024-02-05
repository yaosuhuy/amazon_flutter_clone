import 'package:first_application/features/auth/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(text: 'Your orders', onTap: (){},),
            AccountButton(text: 'Turn seller', onTap: (){},),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(text: 'Log out', onTap: (){},),
            AccountButton(text: 'Your wishlist', onTap: (){},),
          ],
        ),
      ],
    );
  }
}
