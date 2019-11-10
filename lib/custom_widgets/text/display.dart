import 'package:simple_calc_with_themes/my_imports.dart';

class DisplayScroll extends StatefulWidget {
  final Axis direction;
  final Duration animationDuration, backDuration, pauseDuration;
  final String displayText;
  final double textSize;

  DisplayScroll({
    this.textSize = 90,
    this.displayText = '',
    this.direction: Axis.horizontal,
    this.animationDuration: const Duration(seconds: 4),
    this.backDuration: const Duration(seconds: 4),
    this.pauseDuration: const Duration(seconds: 4),
  });

  @override
  _DisplayScrollState createState() => _DisplayScrollState();
}

class _DisplayScrollState extends State<DisplayScroll> {
  ScrollController scrollController;

  void scroll() async {
    scrollController = ScrollController(initialScrollOffset: 0.0);

    while (true) {
      await Future.delayed(widget.pauseDuration);

      // Future.delayed(widget.pauseDuration, () => {});

      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: widget.backDuration, curve: Curves.easeOut);

      // await Future.delayed(widget.pauseDuration);

      await scrollController.animateTo(0.0,
          duration: widget.animationDuration, curve: Curves.easeOut);
    }
  }

  @override
  void initState() {
    //scroll(); //TODO error on rotate position is not empty ???
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FrostCard(
      paddingRight: 10,
      safeAreaTop: false,
      marginLeft: 15,
      topLeftRadius: 20,
      bottomLeftRadius: 20,
      cardColor: kFrost,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
        ),
        SingleChildScrollView(
          //padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            widget.displayText,
            maxLines: 1,
            style: TextStyle(
              fontSize: widget.textSize,
              fontFamily: 'Calc Pro',
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.end,
          ),
          scrollDirection: widget.direction,
          controller: scrollController,
          reverse: true,
          dragStartBehavior: DragStartBehavior.start,
        ),
      ],
    );
  }
}
