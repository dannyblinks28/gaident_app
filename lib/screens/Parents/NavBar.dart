import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:proprietor_app/screens/Parents/parentMenuPages/announcement.dart';
import 'package:proprietor_app/screens/Parents/parentMenuPages/switch_account.dart';

import '../../utils/screen_navigator.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/images/profile1.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mable Olu',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Primary 3A')
                  ],
                )
              ],
            ),
            SizedBox(height: 15),
            const Divider(
              height: 5,
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/images/navAtt.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Attendance',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/result.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Results',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/announce.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Announcement',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                nextScreenPush(
                  context,
                  Announcement(),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/assign.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Assignment',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/timetable.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Time-table',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/support.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Support',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () => null,
            ),
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
            const SizedBox(height: 10),
            const Divider(height: 10),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/images/switch.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Switch Account',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                nextScreenPush(
                  context,
                  SwichAccounts(),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/logout.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Log out',
                style: TextStyle(
                  fontSize: 16,
                  color: ConstantColors.errorColor,
                ),
              ),
              onTap: () => null,
            )
          ],
        ),
      ),
    );
  }
}