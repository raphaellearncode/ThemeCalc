import 'my_imports.dart';
import 'package:simple_calc_with_themes/screens/home/home.dart';
import 'package:simple_calc_with_themes/screens/settings/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MultiProvider(providers: [
      ChangeNotifierProvider(
        builder: (context) => Loader(),
      ),
      ChangeNotifierProvider(
        builder: (context) => Prefs(),
      ),
    ], child: MaterialAppWithTheme());
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<Loader>(context);
    return MaterialApp(
        title: 'CalcTheme', theme: theme.getTheme(), home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  List<Widget> _layouts = [
    Home(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.7],
          colors: [
            // bcg_one_light, bcg_one_dark
            Theme.of(context).primaryColorLight,
            Theme.of(context).primaryColorDark
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: kTransparent,
        body: Center(
          child: _layouts.elementAt(_currentPage),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.calculator,
                  size: 25,
                ),
                title: Text('Home'),
                backgroundColor: kTransparent),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.cog,
                  size: 25,
                ),
                title: Text('Settings'),
                backgroundColor: kTransparent),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.school),
//              title: Text('School'),
//            ),
          ],
          currentIndex: _currentPage,
          selectedItemColor: Theme.of(context).splashColor,
          unselectedItemColor: Theme.of(context).hoverColor,
          onTap: _onItemTapped,
          backgroundColor: Theme.of(context).bottomAppBarColor,
          elevation: 0,
        ),
      ),
    );
  }
}
