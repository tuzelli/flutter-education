import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venhancer_education/202/farm_page.dart';
import 'package:venhancer_education/303/utils/sample_enum.dart';
import 'package:venhancer_education/303/view_model/user_view_model.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final userVM = context.watch<UserVM>();

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/ciftlik.jpg",
            height: size.height,
            fit: BoxFit.fill,
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Çiftliğime Hoşgeldiniz",
                      style: TextStyle(
                        fontSize: 28,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      """Çiftliğinize devam etmek için lütfen giriş yapa basınız!""",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0, top: 20),
                    child: SizedBox(
                      width: size.width - 32,
                      child: ElevatedButton(
                        onPressed: () {
                          AppColor color = AppColor.blue;

                          color.printHex();

                          userVM.fetchUser(context);

                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => FarmPage()),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(111),
                          ),
                        ),
                        child: Text(
                          userVM.isLoading ? "Yukleniyor" : "Giriş Yap",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppColors {
  static const Color primaryColor = Color(0xff00008F);
}
