import 'package:firebase_getx_order_app/main.dart';
import 'package:flutter/material.dart';

class ListProductWidget extends StatefulWidget {
  const ListProductWidget({Key? key}) : super(key: key);

  @override
  State<ListProductWidget> createState() => _ListProductWidgetState();
}

class _ListProductWidgetState extends State<ListProductWidget> {
  List<Widget> boxes = [];
  @override
  void initState() {
    for (var i = 0; i < 6; i++) {
      boxes.add(
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: 150,
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
                      width: 100,
                    ),
                    ListTile(
                      title: Column(
                        children: [
                          Text(
                            "Saka 19 lt Damacana",
                            textAlign: TextAlign.center,
                            style: constants.quicksantGrey(12),
                          ),
                          Divider()
                        ],
                      ),
                      subtitle: Text(
                        textAlign: TextAlign.center,
                        "40.50 TL",
                        style: constants.quicksantMainColor(18),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFF31B0FF),
                      ),
                      child: Center(
                          child: Text(
                        "Sepete Ekle",
                        style: constants.quicksantwhite(14),
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
      child: Column(
        children: <Widget>[
          Container(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Damacana Su",
                          style: constants.quicksantMainColorBold(16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(),
                      ),
                      Container(
                        height: 270,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: boxes.length,
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: boxes[index],
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
