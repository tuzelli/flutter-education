enum Days { pazartesi, sali }

enum AppColor {
  red(0xFF123),
  red1(0xFF123),
  red2(0xFF123),
  red3(0xFF123),
  blue(0xff1ad);

  final int hex;
  const AppColor(this.hex);

  void printHex() {
    print(hex);
  }
}
