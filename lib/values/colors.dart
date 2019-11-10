import 'package:flutter/material.dart';

final kFrost = Colors.grey.shade400.withOpacity(0.2);
const kTransparent = Colors.transparent;

//#######  THEME ONE START ############
//gradient for settings:
const kGradientOne = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [0.0, 1.0],
  colors: [bcg_one_light, bcg_one_dark],
);
//background colors:
const bcg_one_light = Color(0xFF293538);
const bcg_one_dark = Color(0xFF1C262A);

//bottom bar items:
const bottom_one_selected = Color(0xFFffffff);
const bottom_one_unselected = Color(0xFF9E9E9E);
//buttons:
const btn_one_border = Color(0xFF1C262A);
//special buttons:
const special_btn_one_fill = Color(0xFF293840);
const special_btn_one_font = Color(0xFF60D58C);
//numeric buttons:
const numeric_btn_one_fill = Color(0xFF384750);
// repeat white for font color -> const bottom_main_selected = Color(0xFFffffff);
//operator buttons:
const operator_btn_one_fill = Color(0xFF293D51);
// repeat from unselected for font color -> const bottom_main_unselected = Color(0xFF9E9E9E);
//display font color:
// repeat white for font color -> const bottom_main_selected = Color(0xFFffffff);
//#######   THEME ONE END ############

//#######  THEME TWO START ############
//gradient for settings:
const kGradientTwo = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [0.0, 1.0],
  colors: [bcg_two_light, bcg_two_dark],
);
//background colors:
const bcg_two_light = Color(0xFF435574);
const bcg_two_dark = Color(0xFF3E3F57);
//paint gradient:
const paint_two_light = Color(0xFF716DA6);
const paint_two_dark = Color(0xFF442D3F);
//bottom bar items:
const bottom_two_selected = Color(0xFFF7CBE1);
const bottom_two_unselected = Color(0xFFA29A9D);
//buttons:
//repeat from -> border color const btn_one_border = Color(0xFF1C262A);
//special buttons:
const special_btn_two_fill = Color(0xFF605C64);
// repeat from ->  const numeric_btn_one_fill = Color(0xFFA29A9D);
//numeric buttons:
const numeric_btn_two_fill = Color(0xFFA29A9D);
const numeric_btn_two_font = Color(0xFF25004A);
// repeat white for font color -> const bottom_main_selected = Color(0xFFffffff);
//operator buttons:
const operator_btn_two_fill = Color(0xFF554853);
const operator_btn_two_font = Color(0xFF9E9E9E);
//display font color:
// repeat from -> const bottom_one_selected = Color(0xFFF7CBE1);
//#######   THEME TWO END ############

//#######   THEME THREE START ############
//gradient for settings:
const kGradientThree = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [0.0, 1.0],
  colors: [bcg_three_light, bcg_three_dark],
);
//background colors:
const bcg_three_light = Color(0xFFA3CCF4);
const bcg_three_dark = Color(0xFF6389DF);
//paint gradient:
const paint_three_light = Color(0xFFFEEAE2);
const paint_three_dark = Color(0xFFA29A9D);
//bottom bar items:
const bottom_three_selected = Color(0xFFC8FF15);
const bottom_three_unselected = Color(0xFF605C64);
//buttons:
//repeat from -> const bottom_two_unselected = Color(0xFF605C64);
//special buttons:
const special_btn_three_fill = Color(0xFFC7BAB1);
const special_btn_three_font = Color(0xFF002456);
//numeric buttons:
const numeric_btn_three_fill = Color(0xFF6389DF);
//font color repeat from -> const bottom_two_selected = Color(0xFFC8FF15);
// repeat white for font color -> const bottom_main_selected = Color(0xFFffffff);
//operator buttons:
const operator_btn_three_fill = Color(0xFF1F2B6C);
//font color repeat from -> const special_btn_two_fill = Color(0xFFC7BAB1);
//display font color:
// repeat from -> const bottom_two_selected = Color(0xFFC8FF15);

//#######   THEME THREE END ############

//#######   THEME FOUR START  ############
//gradient for settings:
const kGradientFour = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [0.0, 1.0],
  colors: [bcg_four_light, bcg_four_dark],
);
//background colors:
const bcg_four_light = Color(0xFFF9DF7B);
const bcg_four_dark = Color(0xFFF9AB00);
//paint gradient:
//repeat from theme ONE BACKGROUND COLOR:
//const paint_three_light = Color(0xFFFEEAE2);
//const paint_three_dark = Color(0xFFA29A9D);
//bottom bar items:
const bottom_four_selected = Color(0xFF281230);
const bottom_four_unselected = Color(0xFFA29A9D);
//buttons:
const btn_four_border = Color(0xFF281230);
//special buttons:
const special_btn_four_fill = Color(0xFF4E3467);
const special_btn_four_font = Color(0xFFFDF400);
//numeric buttons:
const numeric_btn_four_fill = Color(0xFF714D69);
//font color repeat from -> const operator_btn_three_fill = Color(0xFF968089);
//operator buttons:
const operator_btn_four_fill = Color(0xFF968089);
//font color repeat from -> const btn_three_border = Color(0xFF281230);
//display font color:
// repeat from -> const btn_three_border = Color(0xFF281230);

//#######   THEME FOUR END ############

//#######   THEME FIVE START ############
//gradient for settings:
const kGradientFive = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [0.0, 1.0],
  colors: [bcg_five_light, bcg_five_dark],
);
//background colors:
const bcg_five_light = Color(0xFFF7CBE1);
const bcg_five_dark = Color(0xFFF36172);
//paint gradient:
//paint light repeat from ->  const bcg_four_dark = Color(0xFFF36172);
const paint_five_dark = Color(0xFF5C0E19);
//bottom bar items:
const bottom_five_selected = Color(0xFFF6FCEB);
const bottom_five_unselected = Color(0xFFAD6280);
//buttons:
const btn_five_border = Color(0xFF3D1A1A);
//special buttons:
const special_btn_five_fill = Color(0xFFFF7173);
//font color repeat from -> const bottom_four_selected = Color(0xFFF6FCEB);
//numeric buttons:
const numeric_btn_five_fill = Color(0xFFD6DFC2);
//font color repeat from -> const btn_four_border = Color(0xFF3D1A1A);
//operator buttons:
const operator_btn_five_fill = Color(0xFFFF7DAA);
//font color repeat from -> const btn_four_border = Color(0xFF3D1A1A);
//display font color:
// repeat from -> const bottom_four_selected = Color(0xFFF6FCEB);

//#######   THEME FIVE END ############

//#######   THEME SIX START ############
//gradient for settings:
const kGradientSix = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [0.0, 1.0],
  colors: [bcg_six_light, bcg_six_dark],
);
//background colors:
const bcg_six_light = Color(0xFFE0E6E9);
const bcg_six_dark = Color(0xFF959EB6);
//paint gradient:
//repeat from background five gradient
//bottom bar items:
const bottom_six_selected = Color(0xFFFF6E20);
const bottom_six_unselected = Color(0xFF605C64);
//buttons:
const btn_six_border = Color(0xFF160027);
//special buttons:
//fill color repeat from -> const bottom_five_selected = Color(0xFFFF6E20);
//font color repeat from -> const bottom_main_selected = Color(0xFFffffff);
//numeric buttons:
const numeric_btn_six_fill = Color(0xFFE0E6E9);
const numeric_btn_six_font = Color(0xFF281230);
//operator buttons:
const operator_btn_six_fill = Color(0xFF3F3F4A);
const highLightColor = Color(0xFFcad9f4); //99a8c1
//font color repeat from -> const bottom_main_selected = Color(0xFFffffff);
//display font color:
// repeat from -> const numeric_btn_five_font = Color(0xFF281230);

//#######   THEME SIX END ############
