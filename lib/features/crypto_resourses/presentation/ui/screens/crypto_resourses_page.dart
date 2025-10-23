import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CryptoResoursesPage extends StatelessWidget {
  const CryptoResoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Crypto Resourses', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Text(
          'Crypto Resourses Data',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
