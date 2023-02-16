import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../utils/screen_navigator.dart';
import '../home_parents.dart';

class SwichAccounts extends StatelessWidget {
  const SwichAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(color: ConstantColors.bgColor),
            child: GestureDetector(
              onTap: () {
                nextScreenPush(
                  context,
                  HomeParents(),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: IconButton(
                      onPressed: () {
                        onPressed:
                        () {
                          nextScreenPush(
                            context,
                            HomeParents(),
                          );
                        };
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Accounts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
              leading: Image.asset(
                'assets/images/about.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'About',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () => null,
            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
