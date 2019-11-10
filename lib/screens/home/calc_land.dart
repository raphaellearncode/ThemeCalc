import 'package:simple_calc_with_themes/custom_widgets/buttons/calc_buttons.dart';
import 'package:simple_calc_with_themes/custom_widgets/text/display.dart';
import 'package:simple_calc_with_themes/models/calculator_logic.dart';
import 'package:simple_calc_with_themes/my_imports.dart';

class LandscapeCalc extends StatefulWidget {
  @override
  _LandscapeCalcState createState() => _LandscapeCalcState();
}

class _LandscapeCalcState extends State<LandscapeCalc> {
  int buttonText;
  double _btnSize = 25, _btnPadding = 5.0;

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
            DisplayScroll(
              textSize: 50,
              displayText: logic.display.toString(),
              direction: Axis.horizontal,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ), //display column

        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcBtn(
                  topLeft: 30,
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'sin',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO sin method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'sinh',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO sinh method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: '%',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onPercent();
                      },
                    );
                  },
                ),
                //spec
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: '7',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  topRight: 30,
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'C',
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'cos',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO cos method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'cosh',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO cosh method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'x²',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onPow();
                      },
                    );
                  },
                ),
                //spec
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'tan',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO tan method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'tanh',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO tanh method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: '√',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        logic.onSqrt();
                      },
                    );
                  },
                ),
                //spec
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'e',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO e method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'in',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO in method
                      },
                    );
                  },
                ),
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
                  text: 'log',
                  color: Theme.of(context).indicatorColor,
                  textColor: Theme.of(context).hintColor,
                  flex: 1,
                  onPress: () {
                    setState(
                      () {
                        //TODO log method
                      },
                    );
                  },
                ),
                //spec
                CalcBtn(
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
                  padding: _btnPadding,
                  fontSize: _btnSize,
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
