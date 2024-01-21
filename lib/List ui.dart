import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_ui(),
  ));
}

class List_ui extends StatelessWidget {
  List_ui({super.key});
  var places = [
    'https://media.istockphoto.com/id/898467608/photo/the-india-gate-in-delhi.webp?s=1024x1024&w=is&k=20&c=RQ-Qi7KqzmC4XWsWibcy7--3lHyNb0hJWyAZkDCXxNM=',
    'https://images.unsplash.com/photo-1538332576228-eb5b4c4de6f5?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmlubGFuZHxlbnwwfHwwfHx8MA%3D%3D',
    'https://media.istockphoto.com/id/155392163/photo/big-ben-and-the-parliament-in-london-at-sunset.jpg?s=1024x1024&w=is&k=20&c=SLm2ITIvUECehxwSdIdimj51FaGBk2And9i8L79ma-Q=',
    'https://media.istockphoto.com/id/155378722/photo/toronto-city-skyline-at-night-in-canada.jpg?s=1024x1024&w=is&k=20&c=SYjZjYnLRj5chLgCaZf7Y0N5CF-5MS5Nqcb9BmLAyuU=',
    'https://media.istockphoto.com/id/1451754987/photo/new-york-city-skyline-at-sunset-with-brooklyn-bridge-and-lower-manhattan.jpg?s=1024x1024&w=is&k=20&c=-GOe3HWCm3lfHM4ZdlGxShwsku2xEkSTxiB54EdWo90='
  ];
  var name = ['Delhi', 'Fineland', 'London', 'Vancouver', 'New york'];
  var Cname = ['India', 'Europe', 'Uk', 'Canada', 'USA'];
  var Population = [
    'Population:32.9 mill',
    'Population:5.54 mill',
    'Population: 8.8 mill',
    'Population: 2.6 mill',
    'Population:10.64 mill'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Center(
              child: Text(
                "Cities Around World",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )),
        body: ListView.separated(
          itemBuilder: ((context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      height: 128,
                      width: 168,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              '${places[index]}',
                            ),
                            fit: BoxFit.cover),
                      ),
                    )),
                Positioned(
                  left: 200,
                  top: 29,
                  child: Text(
                    name[index],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 68,
                  child: Text(
                    Cname[index],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(left: 200, top: 88, child: Text(Population[index]))
              ],
            );
          }),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: places.length,
        ));
  }
}
