import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
kanna
class MainApp extends StatelessWidget {
  const MainApp({super.key});
fichifilla
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Your Text Here', style: TextStyle(fontSize: 24)),
              SizedBox(height: 24),
              ...List.generate(6, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0, // Shadow handled by Container
                    ),
                    child: Text('Button ${index + 1}'),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
