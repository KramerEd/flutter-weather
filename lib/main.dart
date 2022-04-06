// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather App",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings))
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _weatherDescription(),
                Divider(),
                _temprature(),
                Divider(),
                _tempratureForecast(),
                Divider(),
                _footerRatings()
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://images.unsplash.com/photo-1490008446666-6c0841b7c060?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    // ignore: prefer_const_literals_to_create_immutables
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        "Tuesday - May 22",
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        "Lorem ipsum dolor",
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _temprature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("15* Clear", style: TextStyle(color: Colors.deepPurple)),
            ],
          ),
          Row(
            children: [
              Text("Odeska oblast, Odessa",
                  style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      )
    ],
  );
}

Wrap _tempratureForecast() {
  return Wrap(
    spacing: 15.0,
    children: List.generate(
      8,
      (int index) => Chip(
        label: Text(
          "${index + 20}*C",
          style: TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)),
        backgroundColor: Colors.grey.shade100,
      ),
    ),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.black,
      ),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "Info with gismeteo.com",
        style: TextStyle(fontSize: 15),
      ),
      stars
    ],
  );
}
