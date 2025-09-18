import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venhancer_education/202/core_button.dart';
import 'package:venhancer_education/202/welcome_page.dart';

class FarmPage extends StatefulWidget {
  const FarmPage({super.key});

  @override
  State<FarmPage> createState() => _FarmPageState();
}

class _FarmPageState extends State<FarmPage> {
  int eggCount = 0;
  int chikenCount = 3;
  int totalMoney = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text("Ciftligim", style: TextStyle(color: Colors.white)),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 1),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/icons/egg.svg", height: 150),
                  Text("Yumurta: $eggCount"),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/icons/chicken.svg", height: 150),
                  Text("Tavuk: $chikenCount"),
                ],
              ),
            ],
          ),

          const Spacer(flex: 2),

          //banknot
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$totalMoney",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.green,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "\$",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoreButton(
                title: "Tavukları Hasat Et",
                callback: () {
                  setState(() {
                    eggCount = eggCount + chikenCount;
                  });
                },
              ),
              SizedBox(width: 8),
              CoreButton(
                title: "Tavuk Satın Al",
                callback: () {
                  //20 usd
                  if (totalMoney >= 20) {
                    chikenCount = chikenCount + 1;
                    totalMoney = totalMoney - 20;
                    setState(() {});
                  }
                },
              ),
            ],
          ),

          //yumurtalari sat button
          Center(
            child: GestureDetector(
              onTap: () {
                totalMoney = totalMoney + (eggCount * 10);
                eggCount = 0;
                setState(() {});
              },
              child: Container(
                width: size.width - 32,
                margin: EdgeInsets.only(top: 20, bottom: 40),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(111),
                ),
                child: Center(child: Text("Yumurtalari Sat")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
