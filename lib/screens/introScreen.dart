import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';


class IntroOverboardPage extends StatefulWidget {
  static const routeName = '/IntroOverboardPage';


  @override
  _IntroOverboardPageState createState() => _IntroOverboardPageState();
}

class _IntroOverboardPageState extends State<IntroOverboardPage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// -----------------------------------------------
    /// Build main content with Scaffold widget.
    /// -----------------------------------------------
    return Scaffold(
      key: _globalKey,

      /// -----------------------------------------------
      /// Build Into with OverBoard widget.
      /// -----------------------------------------------
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        finishCallback: () {
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Finish clicked"),
          ));
        },
      ),
    );
  }

  /// -----------------------------------------------
  /// making list of PageModel needed to pass in OverBoard constructor.
  /// -----------------------------------------------
  final pages = [
    PageModel(
        color: const Color(0xFF0097A7),
        imageAssetPath: 'assets/images/back.jpg',
        title: 'Tutors',
        body: 'Help.Learn.Support',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'assets/images/back.jpg',
        title: 'Screen 2',
        body: 'See the increase in productivity & output',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/back.jpg',
        title: 'Screen 3',
        body: 'Connect with the people from different places',
        doAnimateImage: true),
    PageModel.withChild(
        child: Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child: Image.asset('assets/images/back.jpg', width: 300.0, height: 300.0),
        ),
        color: const Color(0xFF5886d6),
        doAnimateChild: false)
  ];
}