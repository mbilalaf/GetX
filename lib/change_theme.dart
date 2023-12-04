import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen_page.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text(
          'GetX Change Theme',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text('GetX Dialog Alert'),
                subtitle: const Text('GetX Dialog Box Alert With GetX'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delet Chat',
                    titlePadding: const EdgeInsets.only(top: 16),
                    middleText: 'Are you sure you want to delete chat?',
                    contentPadding: const EdgeInsets.only(
                      top: 16,
                      right: 16,
                      left: 16,
                    ),
                    confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'No',
                      ),
                    ),
                    cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Yes',
                      ),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('GetX Dialog Alert'),
                subtitle: const Text('GetX Dialog Box Alert With GetX'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.deepPurple.shade300,
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Icons.light_mode,
                              color: Colors.white,
                            ),
                            title: const Text(
                              'Light Theme',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              Get.changeTheme(
                                ThemeData.light(),
                              );
                            },
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.dark_mode,
                              color: Colors.white,
                            ),
                            title: const Text(
                              'Dark Theme',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              Get.changeTheme(
                                ThemeData.dark(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  child: const Text(
                    'Home Page',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
