import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/addStoreItem.scrn.dart';

import 'package:skyconnect_starter/screens/Subjects/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/Terms/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/Users/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class storeItem extends StatefulWidget {
  const storeItem({super.key});

  @override
  State<storeItem> createState() => _storeItemState();
}

class _storeItemState extends State<storeItem> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(
              top: Insets().appPadding,
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Store Items",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            SizedBox(
                width: Responsive.isDesktop(context)
                    ? 360
                    : MediaQuery.of(context).size.width,
                child: tile3(
                  icon: Icons.inventory_rounded,
                  link: addStoreItem(),
                  linkTitle: "New Store Item",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Store Items", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Item",
        ),
        downloadBar(results: "7"),
        Expanded(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context) ? Insets().appPadding : 13,
                right: Responsive.isDesktop(context) ? Insets().appPadding : 13,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              padding: EdgeInsets.only(
                  left: 15, right: 15, bottom: Insets().appPadding),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      headingTextStyle:
                          TextStyle(color: Palette().primaryColor),
                      horizontalMargin: 0,
                      columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      columns: [
                        DataColumn(
                            label: Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "No.",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 120 : 150,
                          child: HeadingText(
                            size: 14,
                            value: "Store Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 120 : 150,
                          child: HeadingText(
                            size: 14,
                            value: "Store Item Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 150 : 150,
                          child: HeadingText(
                            size: 14,
                            value: "Store Item Code",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? null : null,
                          child: HeadingText(
                            size: 14,
                            value: "Quantity",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 100 : 100,
                          child: HeadingText(
                            size: 14,
                            value: "Unit Price",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 80 : 80,
                          child: HeadingText(
                            size: 14,
                            value: "Tax",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? null : null,
                          child: HeadingText(
                            size: 14,
                            value: "Batch No.",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 150 : 150,
                          child: HeadingText(
                            size: 14,
                            value: "Item Category Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 150 : 150,
                          child: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                      ],
                      rows: []),
                ),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
