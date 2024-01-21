import 'package:classwrk1_flutter/tourismui/cities.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Tourism(),
  ));
}

class Tourism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 78, 9, 143),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: cities
                .map((e) => Card(
                      shape: RoundedRectangleBorder(),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(e["Profilepic"]))),
                        child: ListTile(
                          title: Text(
                            e["name"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    const Color.fromARGB(255, 247, 244, 244)),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

void citydetails(BuildContext context, id) {
  Navigator.pushNamed(context, "citydetails", arguments: id);
}
