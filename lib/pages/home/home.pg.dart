import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool _menu = false;
  double _drawersize = 250;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              centerTitle: true,
              elevation: 0,
              title: Title(
                  color: Palette().textColor,
                  child: const Heading2(
                    value: "SkyShule",
                  )),
              backgroundColor: Palette().primaryColor,
            )
          : null,
      drawer: skyShuleDrawer(
        size: 305,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: size.width,
            height:
                Responsive.isDesktop(context) ? size.height : size.height + 900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!!Responsive.isDesktop(context))
                  AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      width: _drawersize,
                      child: skyShuleDrawer(
                        size: _drawersize,
                        onTap: (val) {
                          setState(() {
                            _drawersize = val;
                          });
                        },
                        menu: _menu,
                      )),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                              top: Insets().appGap,
                              bottom: Insets().appGap),
                          decoration:
                              BoxDecoration(color: Palette().primaryColorLight),
                          child: header(
                            onTap: (val) {
                              setState(() {
                                _drawersize = val[0];
                                _menu = val[1];
                              });
                            },
                          )),
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
                          value: "DASHBOARD",
                          fontWeight: FontWeight.w700,
                          color: Palette().primaryColor,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: Insets().appPadding,
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : 12,
                          right: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : 12,
                        ),
                        decoration: BoxDecoration(
                            color: Palette().primaryColorLight,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Column(children: [
                          Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (Responsive.isDesktop(context)) ...[
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Responsive.isDesktop(context)
                                            ? 0
                                            : Insets().appPadding,
                                        top: Insets().appPadding,
                                        bottom: Responsive.isDesktop(context)
                                            ? Insets().appPadding
                                            : 0),
                                    padding: EdgeInsets.only(
                                      left: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                      right: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                      top: Insets().appGap + 2,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Column(children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.school_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Expanded(
                                            child: Heading4(
                                              value: "Students Summary",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: Responsive.isDesktop(context)
                                            ? 20
                                            : 10,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total students",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "750", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Students Present",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "743", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Student Absent",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "7", color: Colors.white)
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Responsive.isDesktop(context)
                                            ? 0
                                            : Insets().appPadding,
                                        top: Insets().appPadding,
                                        bottom: Responsive.isDesktop(context)
                                            ? Insets().appPadding
                                            : 0),
                                    padding: EdgeInsets.only(
                                      left: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                      right: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                      top: Insets().appGap + 2,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Column(children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.school_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Expanded(
                                            child: Heading4(
                                              value: "Teaching Staff Summary",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: Responsive.isDesktop(context)
                                            ? 20
                                            : 10,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total Teachers",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "750", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Teachers Present",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "743", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Teachers Absent",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "7", color: Colors.white)
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      top: Insets().appPadding,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : 0,
                                      right: Insets().appPadding,
                                    ),
                                    padding: EdgeInsets.only(
                                      left: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                      right: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                      top: Insets().appGap + 2,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Column(children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.school_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Expanded(
                                            child: Heading4(
                                              value: "Fee Summary",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: Responsive.isDesktop(context)
                                            ? 20
                                            : 10,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total Fees",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "Tsh.36,000,000.00",
                                              color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Fees Collected",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "Tsh.23,000,000.00",
                                              color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Fees on Pending",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "Tsh.9,000,000.00",
                                              color: Colors.white)
                                        ],
                                      )
                                    ]),
                                  ),
                                )
                              ],
                              if (!Responsive.isDesktop(context)) ...[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Responsive.isDesktop(context)
                                          ? 0
                                          : Insets().appPadding,
                                      top: Insets().appPadding,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : 0),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    right: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    top: Insets().appGap + 2,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Column(children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.school_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                            value: "Students Summary",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 20
                                          : 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total students",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "750", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Students Present",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "743", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Student Absent",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "7", color: Colors.white)
                                      ],
                                    )
                                  ]),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Responsive.isDesktop(context)
                                          ? 0
                                          : Insets().appPadding,
                                      top: Insets().appPadding,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : 0),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    right: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    top: Insets().appGap + 2,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Column(children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.school_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                            value: "Teaching Staff Summary",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 20
                                          : 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total Teachers",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "750", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Teachers Present",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "743", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Teachers Absent",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "7", color: Colors.white)
                                      ],
                                    )
                                  ]),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    top: Insets().appPadding,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : 0,
                                    right: Insets().appPadding,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    right: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    top: Insets().appGap + 2,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Column(children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.school_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                            value: "Fee Summary",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 20
                                          : 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total Fees",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "Tsh.36,000,000.00",
                                            color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Fees Collected",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "Tsh.23,000,000.00",
                                            color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Fees on Pending",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "Tsh.9,000,000.00",
                                            color: Colors.white)
                                      ],
                                    )
                                  ]),
                                )
                              ]
                            ],
                          ),
                          Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (Responsive.isDesktop(context)) ...[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        bottom: Insets().appPadding),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Column(children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.school_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Expanded(
                                            child: Heading4(
                                              value:
                                                  "Non Teaching Staff Summary",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total Non Teaching Staff",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "7", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value:
                                                "Total Non Teaching Staff Present",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "6", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value:
                                                "Total Non Teaching Staff Absent",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "1", color: Colors.white)
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        bottom: Insets().appPadding),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Column(children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.school_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Expanded(
                                            child: Heading4(
                                              value: "Institute Summary",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total departments",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "9", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total Classes",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "14", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total Streams",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "24", color: Colors.white)
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      bottom: Insets().appPadding,
                                      right: Insets().appPadding,
                                    ),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Column(children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.school_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Expanded(
                                            child: Heading4(
                                              value: "Parents Summary",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Total Students",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "750", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Students Present",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "743", color: Colors.white)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(width: 7),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Students Absent",
                                            color: Colors.white,
                                          ),
                                          Spacer(),
                                          Heading5(
                                              value: "7", color: Colors.white)
                                        ],
                                      )
                                    ]),
                                  ),
                                )
                              ],
                              if (!Responsive.isDesktop(context)) ...[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Responsive.isDesktop(context)
                                          ? 0
                                          : Insets().appPadding,
                                      top: Insets().appPadding,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : 0),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    right: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    top: Insets().appGap + 2,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Column(children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.school_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                            value: "Non Teaching Staff Summary",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 20
                                          : 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total Non Teaching Staff",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "7", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value:
                                              "Total Non Teaching Staff Present",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "6", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value:
                                              "Total Non Teaching Staff Absent",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "1", color: Colors.white)
                                      ],
                                    )
                                  ]),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Responsive.isDesktop(context)
                                          ? 0
                                          : Insets().appPadding,
                                      top: Insets().appPadding,
                                      bottom: Responsive.isDesktop(context)
                                          ? Insets().appPadding
                                          : 0),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    right: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    top: Insets().appGap + 2,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Column(children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.school_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                            value: "Institute Summary",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 20
                                          : 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total departments",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "9", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total Classes",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "14", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total Streams",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "24", color: Colors.white)
                                      ],
                                    )
                                  ]),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    top: Insets().appPadding,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding,
                                    right: Insets().appPadding,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    right: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                    top: Insets().appGap + 2,
                                    bottom: Responsive.isDesktop(context)
                                        ? Insets().appPadding
                                        : Insets().appPadding / 2,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Column(children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.school_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                            value: "Parents Summary",
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 20
                                          : 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Total Students",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "750", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Students Present",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "743", color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading6(
                                          value: "Students Absent",
                                          color: Colors.white,
                                        ),
                                        Spacer(),
                                        Heading6(
                                            value: "7", color: Colors.white)
                                      ],
                                    )
                                  ]),
                                )
                              ]
                            ],
                          ),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: Insets().appPadding,
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : 12,
                          right: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : 12,
                        ),
                        decoration: BoxDecoration(
                            color: Palette().primaryColorLight,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            children: [
                              if (Responsive.isDesktop(context)) ...[
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: Insets().appPadding,
                                          top: Insets().appPadding,
                                          bottom: Insets().appPadding),
                                      padding: EdgeInsets.only(
                                          left: Insets().appPadding,
                                          right: Insets().appPadding,
                                          top: Insets().appGap + 2,
                                          bottom: Insets().appPadding),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      child: Text("Chart 1"),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        top: Insets().appPadding,
                                        bottom: Insets().appPadding),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Text("Chart 2"),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        top: Insets().appPadding,
                                        bottom: Insets().appPadding),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Text("Chart 3"),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      top: Insets().appPadding,
                                      bottom: Insets().appPadding,
                                      right: Insets().appPadding,
                                    ),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Text("Chart 4"),
                                  ),
                                )
                              ],
                              if (!Responsive.isDesktop(context)) ...[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      top: Insets().appPadding,
                                      right: Insets().appPadding,
                                      bottom: 0),
                                  padding: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Text("Chart 1"),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      top: Insets().appPadding,
                                      right: Insets().appPadding,
                                      bottom: 0),
                                  padding: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Heading6(value: "Chart 2"),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      top: Insets().appPadding,
                                      right: Insets().appPadding,
                                      bottom: 0),
                                  padding: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Heading6(value: "Chart 3"),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding,
                                    right: Insets().appPadding,
                                  ),
                                  padding: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Heading6(value: "Chart 4"),
                                )
                              ]
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: Insets().appPadding,
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : 12,
                          right: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : 12,
                        ),
                        decoration: BoxDecoration(
                            color: Palette().primaryColorLight,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            children: [
                              if (Responsive.isDesktop(context)) ...[
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            left: Insets().appPadding,
                                            top: Insets().appPadding,
                                            bottom: Insets().appPadding),
                                        padding: EdgeInsets.only(
                                            left: Insets().appPadding,
                                            right: Insets().appPadding,
                                            top: Insets().appGap + 2,
                                            bottom: Insets().appPadding),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appRadiusMin + 4)),
                                        child: Heading5(value: "Calendar"))),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        top: Insets().appPadding,
                                        bottom: Insets().appPadding),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Text("Tasks"),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appPadding,
                                        bottom: Insets().appPadding),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Heading5(value: "Activity Feed"),
                                  ),
                                ),
                              ],
                              if (!Responsive.isDesktop(context)) ...[
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        top: Insets().appPadding,
                                        right: Insets().appPadding,
                                        bottom: 0),
                                    padding: EdgeInsets.only(
                                        left: Insets().appPadding,
                                        right: Insets().appPadding,
                                        top: Insets().appGap + 2,
                                        bottom: Insets().appPadding),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    child: Heading6(value: "Calendar")),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      top: Insets().appPadding,
                                      right: Insets().appPadding,
                                      bottom: 0),
                                  padding: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Text("Tasks"),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding,
                                    right: Insets().appPadding,
                                  ),
                                  padding: EdgeInsets.only(
                                      left: Insets().appPadding,
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Heading6(value: "Activity Feed"),
                                ),
                              ]
                            ]),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
