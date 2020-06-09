import 'package:flutter/material.dart';


class DetailScreen extends StatefulWidget {
  DetailScreen({this.description,this.image});

  final String description;
  final String image;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamerKit"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            Container(child: Image.asset(widget.image,)),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(widget.description,style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
