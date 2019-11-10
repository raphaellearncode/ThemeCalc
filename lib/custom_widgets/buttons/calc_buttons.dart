import 'package:simple_calc_with_themes/my_imports.dart';

class CalcBtn extends StatelessWidget {
  final String text;
  final String fontFamily;
  final Color color;
  final Color textColor;
  final Color splashColor;
  final int flex;
  final double topLeft, topRight, bottomLeft, bottomRight;
  final Function onPress;
  final double fontSize;
  final double padding;

  CalcBtn(
      {this.text,
      this.fontSize = 40.0,
      this.fontFamily = 'Calc Pro',
      this.color,
      this.textColor,
      this.splashColor,
      this.flex,
      this.topLeft = 0.0,
      this.topRight = 0.0,
      this.bottomLeft = 0.0,
      this.bottomRight = 0.0,
      this.onPress,
      this.padding = 10});

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: Material(
        color: Colors.transparent,
        child: Ink(
          //  padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).highlightColor,
                width: 0.5,
                style: BorderStyle.solid),
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
            ),
          ),
          child: InkWell(
            //This keeps the splash effect within the circle
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
            ),
//          splashColor: color,
//          highlightColor: color,
            //borderRadius: BorderRadius.circular(100.0),
            onTap: onPress,
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: fontSize,
                      color: textColor,
                      fontFamily: fontFamily),
                ),
              ),
            ),
          ),
        ),
      ),
      flex: flex,
    );
  }
}
