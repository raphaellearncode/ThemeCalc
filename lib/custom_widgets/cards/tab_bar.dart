import 'dart:ui';
import '../../my_imports.dart';

//class CustomTabBar extends StatelessWidget {
//  final TabController tabController;
//  final ValueNotifier pageNotifier;
//  final int currentTab;
//  final List<Tab> tabs;
//  final List<Widget> pages;
//
//  CustomTabBar({
//    this.tabController,
//    this.pageNotifier,
//    this.tabs,
//    this.currentTab,
//    this.pages,
//  });
//  @override
//  Widget build(BuildContext context) {
//    return NestedScrollView(
//      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//        return <Widget>[
//          SliverPersistentHeader(
//            delegate: _SliverAppBarDelegate(
//              TabBar(
//                labelPadding: EdgeInsets.only(top: 0),
//                controller: tabController,
//                labelColor: Colors.white,
//                unselectedLabelColor: kOperatorsFontColor,
//                indicatorColor: kOrangeColor,
//                labelStyle: kTitleTextStyle,
//                tabs: tabs,
//              ),
//            ),
//            pinned: true,
//          )
//        ];
//      },
//      body: SafeArea(
//        child: Padding(
//            padding: EdgeInsets.only(top: 25, bottom: 25),
//            child: TabBarView(controller: tabController, children: pages)),
//      ),
//    );
//  }
//}
//
//class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//  _SliverAppBarDelegate(this._tabBar);
//
//  final TabBar _tabBar;
//
//  @override
//  double get minExtent => _tabBar.preferredSize.height;
//  @override
//  double get maxExtent => _tabBar.preferredSize.height;
//
//  @override
//  Widget build(
//      BuildContext context, double shrinkOffset, bool overlapsContent) {
//    return ClipRect(
//      child: BackdropFilter(
//        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//        child: PreferredSize(
//          preferredSize: Size.fromHeight(100.0),
//          child: Container(
//            color: kFrost,
//            child: _tabBar,
//          ),
//        ),
//      ),
//    );
//  }
//
//  @override
//  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//    return false;
//  }
//}

class CustomTabBarView extends StatelessWidget {
  final TabController tabController;
  final ValueNotifier pageNotifier;
  final int currentTab;
  final List<Tab> tabs;
  final List<Widget> pages;

  CustomTabBarView({
    this.tabController,
    this.pageNotifier,
    this.tabs,
    this.currentTab,
    this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTransparent,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height,
                color: kFrost,
                child: TabBar(
                  labelPadding: EdgeInsets.only(top: 0),
                  controller: tabController,
                  labelColor: Theme.of(context).hintColor,
                  unselectedLabelColor: Theme.of(context).hoverColor,
                  indicatorColor: Theme.of(context).splashColor,
                  labelStyle: kTitleTextStyle,
                  tabs: tabs,
                ),
              ),
            ),
          )),
      body: TabBarView(controller: tabController, children: pages),
    );
  }
}
