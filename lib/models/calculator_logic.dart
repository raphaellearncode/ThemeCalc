import 'dart:math';

enum Flag { RESULT, FIRST_OPERAND, SECOND_OPERAND, OPERATOR }

class Logic {
  String newText;
  String oldText;
  var display = '0';
  String operator;

  double oldValue;
  double newValue;
  double total;

  Flag flag = Flag.RESULT;

  //setting main display text result:
  void setText(double value, int pattern) {
    display =
        value.toStringAsFixed(value.truncateToDouble() == value ? 0 : pattern);
    // display = value.toString().replaceAll(',', '.');
  }

  //parsing calculated value:
  double parser() {
    return double.parse(display);
  }

  //check operand status and return parsed String to double
  void checkFlag() {
    if (flag == Flag.RESULT || flag == Flag.FIRST_OPERAND) {
      total = oldValue;
      oldValue = parser();
      flag = Flag.FIRST_OPERAND;
    } else {
      total = newValue;
      newValue = parser();
      flag = Flag.SECOND_OPERAND;
    }
  }

  //check digit status and store operand as a oldText
  void setFlag() {
    if (flag == Flag.FIRST_OPERAND || flag == Flag.SECOND_OPERAND) {
      oldText = display;
    } else {
      oldText = "";
    }
  }

  void clear() {
    display = '0';
    oldValue = 0;
    newValue = 0;
    total = 0;
    flag = Flag.RESULT;
  }

  void delete() {
    int start = 0;
    int end = display.toString().length - 1;

    if (display.toString().length > 0) {
      newText = display.substring(start, end);
      display = newText;
    }
    if (display.toString().length == 0) {
      display = '0';
    }
    flag = Flag.RESULT;
  }

  void onDecimal(String buttonText) {
    newText = buttonText;
    oldText = display;

    try {
      if (flag == Flag.RESULT ||
          flag == Flag.FIRST_OPERAND ||
          flag == Flag.SECOND_OPERAND) {
        if (display.toString().contains(".") ||
            display.toString().contains(",")) {
          oldText = display.toString().replaceAll(",", ".");
        } else {
          display = (oldText + newText).replaceAll(",", ".");
        }
      }
      if (flag == Flag.OPERATOR) {
        if (display == "0") {
          display = (oldText + newText).replaceAll(",", ".");
        } else {
          display = ("0" + newText).replaceAll(",", ".");
        }
      }
      checkFlag();
    } catch (e) {
      display = "0";
    }
  }

  void onPlusMinus() {
    total = parser();

    if (total == 0) {
      clear();
    } else {
      total = total * (-1);
      setText(total, 20);
    }

    checkFlag();
  }

  void onNumbers(int buttonText) {
    newText = buttonText.toString();
//    display = newText;
//    print(newText);
    try {
      setFlag();
      if (oldText == "0") {
        display = newText;
      } else {
        display = oldText + newText;
      }
      // print(newText);

      checkFlag();
    } catch (e) {
      print('error');
    }
  }

  void onOperator(String operatorButton) {
    if (flag == Flag.RESULT) {
      operator = operatorButton;
    }
    if (flag == Flag.SECOND_OPERAND) {
      switch (operator) {
        case "+":
          oldValue += newValue;
          break;
        case "-":
          oldValue -= newValue;
          break;
        case "*":
          oldValue *= newValue;
          break;
        case "/":
          oldValue /= newValue;
          break;
      }
      total = oldValue;
      newValue = 0;
      setText(oldValue, 20);
    }
    operator = operatorButton;
    flag = Flag.OPERATOR;
  }

  void onEqual() {
    try {
      switch (operator) {
        case "+":
          oldValue += newValue;
          break;
        case "-":
          oldValue -= newValue;
          break;
        case "*":
          oldValue *= newValue;
          break;
        case "/":
          oldValue /= newValue;
          break;
        case "=":
          oldValue = total;
          break;
      }
      total = oldValue;
      newValue = 0;
      setText(oldValue, 20);

      flag = Flag.RESULT;
    } catch (e) {
      display = "0";
    }
  }

  void onPercent() {
    if (flag == Flag.RESULT) {
      operator = operator;
    }
    if (flag == Flag.FIRST_OPERAND) {
      oldValue = (oldValue / 100);
    }
    if (flag == Flag.SECOND_OPERAND) {
      oldValue *= newValue / 100;
    }
    total = oldValue;
    newValue = 0;
    setText(oldValue, 20);

    flag = Flag.RESULT;
  } //TODO check operatop = operator is it correct ???

  void onPow() {
    try {
      total = parser();
      total = pow(total, 2);
      setText(total, 20);
      flag = Flag.RESULT;
      checkFlag();
    } catch (e) {
      display = '0';
    }
  }

  void onSqrt() {
    try {
      total = parser();

      total = sqrt(total);
      setText(total, 20);
    } catch (e) {
      display = '0';
    }

    checkFlag();
  }

  void onBodyCalculation(double value, int pattern) {
    setFlag();
    total = value;
    display = total
        .toStringAsFixed(total.truncateToDouble() == value ? 0 : pattern)
        .replaceAll(',', '.');
    checkFlag();
    total = oldValue;
    newValue = 0;

    // flag = Flag.RESULT;
  }

  // DecimalFormat df;
}

/*

public static void onPercent(View v, TextView display,DecimalFormat nf){
        if (flag == Flag.RESULT) {
            operator = ((Button) v).getText().toString();
        }
        if (flag == Flag.FIRST_OPERAND){
            oldValue = (oldValue / 100);
        }
        if (flag == Flag.SECOND_OPERAND){
            oldValue *= newValue / 100;
        }
        total = oldValue;
        newValue = 0;
        setTxt(display,oldValue,nf);

        flag = Flag.RESULT;
    }

    public static void onSqrt(TextView display, DecimalFormat nf){//nie musi byc arg View
        try{

            total = parser(display);

            total = Math.sqrt(total);
            setTxt(display,total,nf);

        }catch(Exception ex){
            display.setText("0");
        }

        checkFlag(display);
    }

    public static void onPow(TextView display,DecimalFormat nf){
        try{
            total = parser(display);
            total = Math.pow(total, 2);
            setTxt(display,total,nf);
            flag = Flag.RESULT;
            checkFlag(display);
        }catch(Exception ex){

            display.setText("0");
        }
    }

 */
