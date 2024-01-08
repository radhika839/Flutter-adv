import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Fetch extends StatefulWidget {
  const Fetch({super.key});

  @override
  State<Fetch> createState() => _FetchState();
}

class _FetchState extends State<Fetch> {
  List vdetails = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: vdetails.length,
            itemBuilder: (context, index) {
              final item = vdetails[index];
              return Column(
                children: [
                  Image.memory(item['front']),
                ],
              );
            }));
  }

  Future<void> fetchData() async {
    const url = 'http://192.168.1.4:8000/api/view?search=';
    final uri = Uri.parse(url);
    print(uri);
    final response = await http.get(uri);
    print(response);
    print(response.body);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final result = json['vdetails'];
      setState(() {
        vdetails = result;
      });
    }
  }
}
