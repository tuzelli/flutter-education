import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  State<StatefulExample> createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  @override
  void initState() {
    ///
    super.initState();
    setState(() {});

    ///
  }

  @override
  void dispose() {
    ///
    super.dispose();
  }

  //Scaffold
  //AppBar

  //Text
  //SizedBox
  //Container
  //Padding
  //Image
  //GestureDetector

  //Column
  //row
  //Stack

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            print("ontap");
          },
          onDoubleTap: () {
            print("ondoubletap");
          },
          child: Icon(Icons.arrow_left),
        ),
        title: Text(
          "Ana Sayfa",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          ),
          maxLines: 1,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("object");
            },
            icon: Icon(Icons.notification_add),
          ),
        ],
      ),

      body: Stack(
        children: [
          Container(
            height: 300,
            width: 200,
            color: Colors.red,
            child: Center(child: Text("SizedBox")),
          ),

          Image.network(
            "https://www.bakarafarm.com/upload/makale/ciftlik-nedir42398608.jpg",
            height: size.height * 0.1,
            width: 200,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
