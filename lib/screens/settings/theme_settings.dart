import 'package:simple_calc_with_themes/my_imports.dart';
import 'package:simple_calc_with_themes/providers/data_loader.dart';

class ThemeSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double boxSize = MediaQuery.of(context).size.width / 3;
    Loader _themeChanger = Provider.of<Loader>(context);
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      shrinkWrap: true,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ThemeItem(
                accentColor: special_btn_one_font,
                fontColor: bottom_one_selected,
                btnColor: bottom_one_unselected,
                btnMainColor: operator_btn_one_fill,
                size: boxSize,
                gradient: kGradientOne,
                boxShadow: kBoxShadow,
                themeName: 'ThemeOne',
                onTap: () {
                  _themeChanger.setCustomTheme(0);
                },
              ),
            ),
          ],
        ), //theme one
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ThemeItem(
                accentColor: bottom_two_selected,
                fontColor: numeric_btn_two_fill,
                btnColor: special_btn_two_fill,
                btnMainColor: operator_btn_two_fill,
                size: boxSize,
                gradient: kGradientTwo,
                boxShadow: kBoxShadow,
                themeName: 'ThemeTwo',
                onTap: () {
                  _themeChanger.setCustomTheme(1);
                },
              ),
            ),
          ],
        ), //theme two
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ThemeItem(
                accentColor: bottom_three_selected,
                fontColor: special_btn_three_font,
                btnColor: numeric_btn_three_fill,
                btnMainColor: bottom_three_unselected,
                size: boxSize,
                gradient: kGradientThree,
                boxShadow: kBoxShadow,
                themeName: 'ThemeThree',
                onTap: () {
                  _themeChanger.setCustomTheme(2);
                },
              ),
            ),
          ],
        ), //theme three
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ThemeItem(
                accentColor: special_btn_four_font,
                fontColor: special_btn_four_fill,
                btnColor: bottom_four_unselected,
                btnMainColor: bottom_three_unselected,
                size: boxSize,
                gradient: kGradientFour,
                boxShadow: kBoxShadow,
                themeName: 'ThemeFour',
                onTap: () {
                  _themeChanger.setCustomTheme(3);
                },
              ),
            ),
          ],
        ), //theme four
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ThemeItem(
                accentColor: bottom_five_selected,
                fontColor: bottom_five_unselected,
                btnColor: btn_five_border,
                btnMainColor: numeric_btn_five_fill,
                size: boxSize,
                gradient: kGradientFive,
                boxShadow: kBoxShadow,
                themeName: 'ThemeFive',
                onTap: () {
                  _themeChanger.setCustomTheme(4);
                },
              ),
            ),
          ],
        ), //theme five
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ThemeItem(
                accentColor: bottom_six_selected,
                fontColor: bottom_six_unselected,
                btnColor: btn_five_border,
                btnMainColor: bcg_six_light,
                size: boxSize,
                gradient: kGradientSix,
                boxShadow: kBoxShadow,
                themeName: 'ThemeSix',
                onTap: () {
                  _themeChanger.setCustomTheme(5);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ThemeItem extends StatelessWidget {
  final Gradient gradient;
  final String themeName;
  final BoxShadow boxShadow;
  final double size;
  final Function onTap;
  final Color accentColor, fontColor, btnMainColor, btnColor, txtColor;

  ThemeItem(
      {this.gradient,
      this.boxShadow,
      this.themeName,
      this.size = 150,
      this.onTap,
      this.accentColor,
      this.fontColor,
      this.btnMainColor,
      this.btnColor,
      this.txtColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        width: size,
        height: size,
        decoration: BoxDecoration(
          gradient: gradient,
          boxShadow: <BoxShadow>[boxShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 7,
                  backgroundColor: accentColor,
                ),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: fontColor,
                ),
                Container(
                  width: 15,
                  height: 15,
                  color: btnMainColor,
                ),
                Container(
                  width: 15,
                  height: 15,
                  color: btnColor,
                ),
//                CircleAvatar(
//                  radius: 7,
//                  backgroundColor: btnMainColor,
//                ),
//                CircleAvatar(
//                  radius: 7,
//                  backgroundColor: btnColor,
//                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                themeName,
                style: TextStyle(
                    color: accentColor, fontSize: 20, letterSpacing: 3),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
