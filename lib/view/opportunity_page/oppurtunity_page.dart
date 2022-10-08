import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';

class OppurtunityPage extends StatefulWidget {
  const OppurtunityPage({Key? key}) : super(key: key);

  @override
  _OppurtunityPageState createState() => _OppurtunityPageState();
}

List<Widget> boxes = [];

class _OppurtunityPageState extends State<OppurtunityPage> {
  var _constants = locator.get<Constants>();
  var _ct = locator.get<ColorsTheme>();
  @override
  void initState() {
    for (var i = 0; i < 9; i++) {
      boxes.add(
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 12,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/damacana.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 150,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFF31B0FF),
                      ),
                      child: Center(
                          child: Text(
                        textAlign: TextAlign.left,
                        "Tüm damacana ürünlerinde %50 indirim ",
                        style: _constants.quicksantwhite(14),
                      )),
                      padding: const EdgeInsets.all(12),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(verticalDirection: VerticalDirection.down, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Fırsatlar",
            style: _constants.quicksantMainColor(20),
          ),
        ),
        Divider(),
        Text(
          "Günlük kampanyalarımızı buradan inceleyebilirsiniz.",
          style: _constants.quicksantBlackThinColor(12),
        ),
        Divider(),
        Container(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 1,
                  ),
                  child: boxes[index],
                );
              }),
        ),
      ]),
    );
  }
}
