import 'package:simple_calc_with_themes/my_imports.dart';

class Loader extends ChangeNotifier {
  Prefs _prefs = Prefs();

  ThemeData _themeData;

  int _currentTheme = 0;

  Loader() {
    initialState();
  }

  Future<void> initialState() async {
    try {
      _currentTheme = await _prefs.restoreInt('theme', _currentTheme);
      setCustomTheme(_currentTheme);
    } catch (e) {
      print('theme load error');
    }
    return _themeData;
  }

  getTheme() {
    return _themeData;
  }

  setCustomTheme(int theme) {
    switch (theme) {
      case 0:
        ThemeData themeOne = ThemeData(
          primaryColor: bottom_one_selected, //display color
          primaryColorLight: bcg_one_light, //background light
          primaryColorDark: bcg_one_dark, //background dark
          highlightColor: btn_one_border, //btn border color
          accentColor: special_btn_one_font, //special btn font color
          backgroundColor: special_btn_one_fill, //special btn fill color
          indicatorColor: numeric_btn_one_fill, //numeric btn fill color
          hintColor: bottom_one_selected, //numeric btn font color
          bottomAppBarColor: operator_btn_one_fill, //operator btn fill color
          cardColor: bottom_one_unselected, //operator btn font color
          splashColor: special_btn_one_font, // menu item bottom selected
          hoverColor: bottom_one_unselected, // menu item bottom unselected
          textTheme: TextTheme(
            headline:
                TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Rjd'),
            body1: TextStyle(
                color: Colors.yellowAccent, fontSize: 20, fontFamily: 'Rjd'),
          ),
        );

        _themeData = themeOne;
        break;
      case 1:
        ThemeData themeTwo = ThemeData(
            primaryColor: bottom_two_selected, //display color
            primaryColorLight: bcg_two_light, //background light
            primaryColorDark: bcg_two_dark, //background dark
            highlightColor: btn_one_border, //btn border color
            accentColor: numeric_btn_two_fill, //special btn font color
            backgroundColor: special_btn_two_fill, //special btn fill color
            indicatorColor: numeric_btn_two_fill, //numeric btn fill color
            hintColor: bottom_two_selected, //numeric btn font color
            bottomAppBarColor: operator_btn_two_fill, //operator btn fill color
            cardColor: bottom_two_unselected, //operator btn font color
            splashColor: bottom_two_selected, // menu item bottom selected
            hoverColor: bottom_two_unselected, // menu item bottom unselected
            textTheme: TextTheme(
              headline: TextStyle(
                  color: Colors.yellowAccent, fontSize: 30, fontFamily: 'Rjd'),
              body1: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Rjd'),
            ));
        _themeData = themeTwo;
        break;
      case 2:
        ThemeData themeThree = ThemeData(
            primaryColor: bottom_three_selected, //display color
            primaryColorLight: bcg_three_light, //background light
            primaryColorDark: bcg_three_dark, //background dark
            highlightColor: bottom_three_unselected, //btn border color
            accentColor: operator_btn_three_fill, //special btn font color
            backgroundColor: special_btn_three_fill, //special btn fill color
            indicatorColor: numeric_btn_three_fill, //numeric btn fill color
            hintColor: bottom_three_selected, //numeric btn font color
            bottomAppBarColor:
                operator_btn_three_fill, //operator btn fill color
            splashColor: bottom_three_selected, // menu item bottom selected
            hoverColor: bottom_three_unselected, // menu item bottom unselected
            textTheme: TextTheme(
              headline: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontFamily: 'Rjd'),
              body1: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Rjd'),
            ));
        _themeData = themeThree;
        break;
      case 3:
        ThemeData themeFour = ThemeData(
            buttonColor: bcg_two_light, //bubbles light
            canvasColor: bcg_two_dark, //bubbles dark
            primaryColor: bottom_four_selected, //display color
            primaryColorLight: bcg_four_light, //background light
            primaryColorDark: bcg_four_dark, //background dark
            highlightColor: btn_four_border, //btn border color
            accentColor: special_btn_four_font, //special btn font color
            backgroundColor: special_btn_four_fill, //special btn fill color
            indicatorColor: numeric_btn_four_fill, //numeric btn fill color
            hintColor: bottom_four_unselected, //numeric btn font color
            bottomAppBarColor: operator_btn_four_fill, //operator btn fill color
            cardColor: bottom_four_selected, //operator btn font color
            splashColor: bottom_four_selected, // menu item bottom selected
            hoverColor: bottom_four_unselected, // menu item bottom unselected
            textTheme: TextTheme(
              headline: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'Rjd'),
              body1: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Rjd'),
            ));
        _themeData = themeFour;
        break;
      case 4:
        ThemeData themeFive = ThemeData(
            buttonColor: bcg_five_dark, //bubbles light
            canvasColor: paint_five_dark, //bubbles dark
            primaryColor: bottom_five_selected, //display color
            primaryColorLight: bcg_five_light, //background light
            primaryColorDark: bcg_five_dark, //background dark
            highlightColor: btn_five_border, //btn border color
            accentColor: bottom_five_selected, //special btn font color
            backgroundColor: special_btn_five_fill, //special btn fill color
            indicatorColor: numeric_btn_five_fill, //numeric btn fill color
            hintColor: bottom_five_selected, //numeric btn font color
            bottomAppBarColor: operator_btn_five_fill, //operator btn fill color
            cardColor: bottom_five_unselected, //operator btn font color
            splashColor: bottom_five_selected, // menu item bottom selected
            hoverColor: bottom_five_unselected, // menu item bottom unselected
            textTheme: TextTheme(
              headline: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'Rjd'),
              body1: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Rjd'),
            ));
        _themeData = themeFive;
        break;
      case 5:
        ThemeData themeSix = ThemeData(
            buttonColor: bcg_six_light, //bubbles light
            canvasColor: bcg_six_dark, //bubbles dark
            primaryColor: bottom_six_selected, //display color
            primaryColorLight: bcg_six_light, //background light
            primaryColorDark: bcg_six_dark, //background dark
            highlightColor: btn_six_border, //btn border color
            accentColor: bottom_one_selected, //special btn font color
            backgroundColor: bottom_six_selected, //special btn fill color
            indicatorColor: numeric_btn_six_fill, //numeric btn fill color
            hintColor: bottom_six_selected, //numeric btn font color
            bottomAppBarColor: operator_btn_six_fill, //operator btn fill color
            cardColor: bottom_one_selected, //operator btn font color
            splashColor: bottom_six_selected, // menu item bottom selected
            hoverColor: bottom_six_unselected, // menu item bottom unselected
            textTheme: TextTheme(
              headline: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'Rjd'),
              body1: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Rjd'),
            ));
        _themeData = themeSix;
        break;
    }
    _currentTheme = theme;
    _prefs.storeInt('theme', theme);
    notifyListeners();
  }
}
