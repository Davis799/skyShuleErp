import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/bankDetails.dart';
import 'package:skyconnect_starter/components/contactsDetails.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class studentAdmission extends StatefulWidget {
  const studentAdmission({super.key});

  @override
  State<studentAdmission> createState() => _studentAdmissionState();
}

class _studentAdmissionState extends State<studentAdmission> {
  bool offDtls = true;
  bool prsnlDtls = false;
  bool conctDtls = false;
  bool prntsDtls = false;
  bool acdmcDtls = false;
  bool bnkDtls = false;
  bool othrFacilities = false;
  bool upldDocs = false;
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
        size: 245,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        height: size.height + 202,
        width: size.width,
        child: Row(children: [
          if (Responsive.isDesktop(context))
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
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap,
                      bottom: Insets().appGap),
                  decoration: BoxDecoration(color: Palette().primaryColorLight),
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
                    left: Insets().appPadding * 2,
                    right: Insets().appGap),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading2(
                      value: "STUDENT ENROLLMENT & ADMISSION",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    const Heading5(
                      value: "Official Details",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Insets().appPadding,
                    bottom: Insets().appPadding,
                    left: Insets().appPadding * 2,
                    right: Insets().appPadding * 2),
                margin: EdgeInsets.all(Insets().appPadding),
                decoration: BoxDecoration(
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading4(
                            value: "Online Admission Form Link",
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Heading4(
                            value:
                                "Https://www.skyshule.com/admission/nameofinstitute/123/new",
                            color: Palette().primaryColor,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 145,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.2)),
                                child: Heading6(
                                  value: "Print",
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 145,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.2)),
                                child: Heading6(
                                  value: "Import Students",
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 145,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.2)),
                                child: Heading6(
                                  value: "Export Students",
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Insets().appPadding,
                    bottom: Insets().appPadding,
                    left: Insets().appPadding * 2,
                    right: Insets().appPadding * 2),
                margin: EdgeInsets.all(Insets().appPadding),
                decoration: BoxDecoration(
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = true;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !offDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !offDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Official Details",
                              color: !offDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = true;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !prsnlDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !prsnlDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Personal Details",
                              color: !prsnlDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = true;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !conctDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !conctDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Contact Details",
                              color: !conctDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = true;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !prntsDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !prntsDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Parents Details",
                              color: !prntsDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = true;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !acdmcDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !acdmcDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Academic Details",
                              color: !acdmcDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = true;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !bnkDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !bnkDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Bank Details",
                              color: !bnkDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = true;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !othrFacilities
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !othrFacilities
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Other Facilities",
                              color:
                                  !othrFacilities ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !upldDocs
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !upldDocs
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 1.5,
                                    right: Insets().appPadding / 1.5,
                                    top: Insets().appPadding,
                                    bottom: Insets().appPadding)),
                            child: Heading6(
                              value: "Upload Documents",
                              color: !upldDocs ? Colors.black : Colors.white,
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Visibility(
                            visible: offDtls, child: (officialDetails())),
                        Visibility(
                            visible: prsnlDtls, child: (personalDetails())),
                        Visibility(
                            visible: conctDtls, child: (contactsDetails())),
                        Visibility(
                            visible: prntsDtls, child: (parentsDetails())),
                        Visibility(
                            visible: acdmcDtls, child: (academicDetails())),
                        Visibility(visible: bnkDtls, child: (bankDetails())),
                        Visibility(
                            visible: othrFacilities,
                            child: (otherFacilities())),
                        Visibility(
                            visible: upldDocs, child: (uploadDocuments()))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ))
        ]),
      )),
    );
  }
}
