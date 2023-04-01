import 'package:flutter/material.dart';
import 'package:flutter_material_design/notifiers/app_state_notifier.dart';
import 'package:flutter_material_design/src/spacing/app_spacing.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AppStateNotifier appStateNotifier;
  int _selectedNavigationIndex = 0;

  void _switchTheme() {
    appStateNotifier.updateTheme(!appStateNotifier.isDarkMode);
  }

  void onSelectNavigation(int index) {
    setState(() {
      _selectedNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    appStateNotifier = Provider.of<AppStateNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Row(
            children: [
              Text("M2"),
              Switch(
                  value: appStateNotifier.isM3,
                  onChanged: appStateNotifier.updateM3),
              Text("M3"),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.xlg),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: AppSpacing.md,
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Image.network(
                    "https://images.unsplash.com/photo-1598795181079-722e46984658?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80"),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Cat"),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Submit"))
          ],
        ),
      ),
      bottomNavigationBar: appStateNotifier.isM3
          ? NavigationBar(
              onDestinationSelected: onSelectNavigation,
              selectedIndex: _selectedNavigationIndex,
              destinations: const [
                NavigationDestination(
                  selectedIcon: Icon(Icons.home_sharp),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.message_sharp),
                  icon: Icon(Icons.message_outlined),
                  label: 'Chat',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.person_sharp),
                  icon: Icon(Icons.person_outline_sharp),
                  label: 'Profile',
                ),
              ],
            )
          : BottomNavigationBar(
              currentIndex: _selectedNavigationIndex,
              onTap: onSelectNavigation,
              items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    label: 'Chat',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _switchTheme,
        tooltip: 'Increment',
        child: Icon(
            appStateNotifier.isDarkMode ? Icons.dark_mode : Icons.light_mode),
      ),
    );
  }
}
