import 'package:simple_calc_with_themes/custom_widgets/buttons/calc_buttons.dart';
import 'package:simple_calc_with_themes/custom_widgets/text/display.dart';
import 'package:simple_calc_with_themes/models/calculator_logic.dart';
import 'package:simple_calc_with_themes/my_imports.dart';

class PortraitCalc extends StatefulWidget {
  @override
  _PortraitCalcState createState() => _PortraitCalcState();
}

class _PortraitCalcState extends State<PortraitCalc> {
  //int buttonText;

  Logic logic = Logic();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            DisplayScroll(
              textSize: 100,
              displayText: logic.display.toString(),
              direction: Axis.horizontal,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            )
          ],
        ), //display column

        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcBtn(
                  text: '7',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  topLeft: 30,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(7);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '8',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(8);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '9',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(9);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '&',
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.delete();
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: 'C',
                  topRight: 30,
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.clear();
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcBtn(
                  text: '4',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(4);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '5',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(5);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '6',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(6);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '/',
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 1,
                  onPress: () {
                    setState(() {
                      logic.onOperator('/');
                    });
                  },
                ),
                CalcBtn(
                  text: '*',
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 1,
                  onPress: () {
                    setState(() {
                      logic.onOperator('*');
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcBtn(
                  text: '1',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(1);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '2',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(2);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '3',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(3);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '-',
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 1,
                  onPress: () {
                    setState(() {
                      logic.onOperator('-');
                    });
                  },
                ),
                CalcBtn(
                  text: '+',
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 1,
                  onPress: () {
                    setState(() {
                      logic.onOperator('+');
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcBtn(
                  text: '.',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onDecimal('.');
                      },
                    );
                  },
//                      bottomLeft: 15.0,
                ),
                CalcBtn(
                  text: '0',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onNumbers(0);
                      },
                    );
                  },
                ),
                CalcBtn(
                  text: '+-',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(() {
                      logic.onPlusMinus();
                    });
                  },
                ),
                CalcBtn(
                  text: '=',
                  color: Theme.of(context).bottomAppBarColor,
                  textColor: Theme.of(context).cardColor,
                  flex: 2,
                  onPress: () {
                    setState(() {
                      logic.onEqual();
                    });
                  },
//                      bottomRight: 15.0,
                ),
              ],
            ),
          ],
        ), //keyboard column
      ],
    );
  }
}
