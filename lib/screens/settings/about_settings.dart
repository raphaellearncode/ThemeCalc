import 'package:simple_calc_with_themes/my_imports.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Logo(),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(' I ', style: kWrittenTxtStyle),
            Icon(
              FontAwesomeIcons.heart,
              size: 45,
              color: Colors.redAccent,
            ),
            Text('Flutter', style: kWrittenTxtStyle),
          ],
        ),
        FlutterLogo(
          size: MediaQuery.of(context).size.width / 2,
        )
      ],
    );
  }
}
