import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SeondScreen extends StatefulWidget {
  String name;
  SeondScreen({required this.name});
  @override
  State<SeondScreen> createState() => _SeondScreenState();
}

class _SeondScreenState extends State<SeondScreen> {
  late List<String> aayushi;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.name)),
    );
  }
}

void fetchdata(String input) async {
  var url = 'https://randomuser.me/api/?results=$input';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final data = response.body;
  final body = jsonDecode(data);
  var aayushi = body["results"];
  // return aayushi;
  print(body["results"].length);
  print(body["results"]);
}
