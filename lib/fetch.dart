import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
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
      appBar: AppBar(
        title: Text('Customer Details List'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: vdetails.length,
            itemBuilder: (context, index) {
              final item = vdetails[index];
              return Container(
                child: Card(
                  margin: EdgeInsets.fromLTRB(80, 10, 80, 5),
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green.shade100,
                        Colors.cyan,
                      ],
                    )),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('First Name:'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(item['name'])
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Last Name:'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(item['last'])
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
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
