import 'package:flutter/material.dart';

const List<String> pickupPoints = <String>[
  'From',
  'Pune',
  'Mumbai',
  'Nashik',
  'Hyderabad',
  'indore'
];
const List<String> droppingPoints = <String>[
  'To',
  'Pune',
  'Mumbai',
  'Nashik',
  'Hyderabad',
  'indore'
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class CardItem {
  final String title;
  final String subtitle;
  final Color? color;
  final String? urlImage;
  final double? height;
  final double? width;
  const CardItem(
      {required this.title,
      required this.subtitle,
      required this.color,
      this.urlImage,
      this.height,
      this.width});
}

class _HomePageState extends State<HomePage> {
  DateTime selectedDate = DateTime.now();

  List<CardItem> items = [
    CardItem(
        height: 70,
        width: 100,
        urlImage:
            'https://s3.rdbuz.com/images/FIRST/first_26th_sep_2022_ravi/tile-360X300.png',
        color: Colors.black,
        title: 'Save up to Rs 300\n on bus tickets',
        subtitle: 'Valid till: 31 Jan'),
    CardItem(
        height: 70,
        width: 100,
        urlImage:
            'https://s3.rdbuz.com/images/FIRST/first_26th_sep_2022_ravi/tile-360X300.png',
        color: Colors.black,
        title: 'Save up to Rs 300\n on bus tickets',
        subtitle: 'Valid till: 31 Jan')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.orange.shade200,
            const Color.fromARGB(255, 235, 85, 135),
          ])),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Bus Tickets',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 310,
                        child: Column(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Image(
                                        height: 25,
                                        width: 24,
                                        image: AssetImage(
                                            'assets/images/buslogo.png')),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    DropDownMenu(),
                                  ],
                                )),
                            SizedBox(
                              height: 1,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Image(
                                        height: 25,
                                        width: 24,
                                        image: AssetImage(
                                            'assets/images/buslogo.png')),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    DropDownMenuex(),
                                  ],
                                )),
                            SizedBox(
                              height: 1,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    onPressed: () async {
                                      final DateTime? dateTime =
                                          await showDatePicker(
                                              context: context,
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(3000));
                                      if (dateTime != null) {
                                        setState(() {
                                          selectedDate = dateTime;
                                        });
                                      }
                                    },
                                    child: SizedBox(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Image(
                                              height: 18,
                                              width: 24,
                                              image: AssetImage(
                                                  'assets/images/calender.png')),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Date\n${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 200,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.pink.shade300,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {},
                                  child: Text(
                                    'Search Buses',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
                            child: Card(
                              color: Colors.pink.shade100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Offers',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 157, 0),
                            child: Text('get best deals with great offers'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 130,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) => SizedBox(
                                width: 12,
                              ),
                              itemCount: 2,
                              itemBuilder: (context, index) =>
                                  buildCard(item: items[index]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 260, 0),
                            child: Card(
                              color: Colors.pink.shade100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Top Destinations',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    onPressed: () {},
                                    child: Text(
                                      'Pune',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    onPressed: () {},
                                    child: Text(
                                      'Hyderabad',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    onPressed: () {},
                                    child: Text(
                                      'Mumbai',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    onPressed: () {},
                                    child: Text(
                                      'Indore',
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({required CardItem item}) => Container(
        width: 250,
        // height: 200,
        //  color: Colors.white,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.network(
                  item.urlImage.toString(),
                  height: item.height,
                  width: item.width,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(item.subtitle)
                  ],
                ),
              ],
            ),
          ],
        ),
      );
}

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String dropdownvalue = pickupPoints.first;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownMenu(
        initialSelection: pickupPoints.first,
        onSelected: (value) {
          setState(() {
            dropdownvalue = value!.toString();
          });
        },
        dropdownMenuEntries:
            pickupPoints.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}

class DropDownMenuex extends StatefulWidget {
  const DropDownMenuex({super.key});

  @override
  State<DropDownMenuex> createState() => _DropDownMenuexState();
}

class _DropDownMenuexState extends State<DropDownMenuex> {
  String droppingPointValue = droppingPoints.first;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownMenu(
        initialSelection: droppingPoints.first,
        onSelected: (value) {
          setState(() {
            droppingPointValue = value!.toString();
          });
        },
        dropdownMenuEntries:
            droppingPoints.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}
