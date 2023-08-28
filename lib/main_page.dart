import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final String pageName = widget.title.replaceAll("/", "");
    // To remove / from router name and show it in appbar title.
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are on $pageName Page',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
