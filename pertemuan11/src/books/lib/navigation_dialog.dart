import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Tryo'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Change Color'),
            onPressed: () {
              _showColorDialog(context);
            }),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("Very important question"),
            content: const Text('Please chooose a color'),
            actions: <Widget>[
              TextButton(
                child: const Text('Brown'),
                onPressed: () {
                  color = Colors.brown;
                  Navigator.pop(context, color);
                },
              ),
              TextButton(
                child: const Text('Cyan'),
                onPressed: () {
                  color = Colors.cyan;
                  Navigator.pop(context, color);
                },
              ),
              TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = const Color.fromARGB(255, 158, 231, 41);
                  Navigator.pop(context, color);
                },
              )
            ],
          );
        });
    setState(() {});
  }
}
