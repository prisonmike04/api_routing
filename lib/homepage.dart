import 'dart:convert';
import 'package:apli_backend/second.dart';
import 'package:apli_backend/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textController = TextEditingController();
  //late List<String> messages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              hintText: 'Enter your message here',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String name = _textController.text;

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GenerateUsers(input: name)));
            },
            child: const Text('Send Message'),
          ),
        ],
      ),
    );
  }
}
