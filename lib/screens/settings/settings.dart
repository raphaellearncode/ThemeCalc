import 'package:simple_calc_with_themes/custom_widgets/cards/tab_bar.dart';
import 'package:simple_calc_with_themes/my_imports.dart';
import 'package:simple_calc_with_themes/screens/settings/theme_settings.dart';
import 'package:simple_calc_with_themes/screens/settings/about_settings.dart';

class SettingsPageRoute extends MaterialPageRoute {
  SettingsPageRoute()
      : super(builder: (BuildContext context) => new Settings());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new Settings());
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final ValueNotifier _currentPageNotifier =
      ValueNotifier<int>(0); //page counter

  int _currentTab = 0;

  List<Widget> _chartTabs = [ThemeSettings(), About()];

  List<Tab> _tabsTitle = [
    Tab(
      text: 'Themes',
    ),
    Tab(
      text: 'About',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentPageNotifier.value = 0;
    _tabController = TabController(
        vsync: this, length: 2, initialIndex: _currentPageNotifier.value);

    _currentTab = _tabController?.index;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTabBarView(
      tabController: _tabController,
      pageNotifier: _currentPageNotifier,
      currentTab: _currentTab,
      tabs: _tabsTitle,
      pages: _chartTabs,
    );
  }
}
