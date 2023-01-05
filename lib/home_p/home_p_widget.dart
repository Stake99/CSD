import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePWidget extends StatefulWidget {
  const HomePWidget({Key? key}) : super(key: key);

  @override
  _HomePWidgetState createState() => _HomePWidgetState();
}

class _HomePWidgetState extends State<HomePWidget> {
  TextEditingController? searchController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    searchController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE3672B),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.3, -0.95),
                  child: TextFormField(
                    controller: searchController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      filled: true,
                      fillColor: Color(0x82FFFFFF),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.9, 0.07),
                  child: Text(
                    'Daily Specials',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.95, -0.75),
                  child: Text(
                    'Popular Meals',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.55),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1, 10, 1, 10),
                    child: Container(
                      width: double.infinity,
                      height: 245,
                      decoration: BoxDecoration(
                        color: Color(0x82FFFFFF),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Container(
                                        width: 150,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                            color: Color(0x8B57636C),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Image.asset(
                                                'assets/images/wings.jpeg',
                                                width: 130,
                                                height: 100,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Wings',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    ' Price',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    '₹ 50',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '₹70',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 40,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 15,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'addtocart pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Container(
                                        width: 150,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                            color: Color(0x8B57636C),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Image.asset(
                                                'assets/images/fries.jpeg',
                                                width: 100,
                                                height: 110,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'fries',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Price',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    '₹ 50',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '₹70',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 40,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 15,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'addtocart pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Container(
                                        width: 150,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                            color: Color(0x8B57636C),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Image.asset(
                                                'assets/images/DAGWOOD.jpeg',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Dagwood',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Price',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    '₹ 50',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '₹70',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 40,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 15,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'addtocart pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Container(
                                        width: 150,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                            color: Color(0x8B57636C),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Image.asset(
                                                'assets/images/biltongchips.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Biltong',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Price',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    '₹ 50',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '₹70',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 40,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 15,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'addtocart pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Container(
                                        width: 150,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                            color: Color(0x8B57636C),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Image.asset(
                                                'assets/images/wors.jpeg',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Boere Wors',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    ' Price',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    '₹ 50',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '₹70',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 40,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 15,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'addtocart pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Container(
                                        width: 150,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                            color: Color(0x8B57636C),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Image.asset(
                                                'assets/images/HELMUT_LANG.jpeg',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Helmut Lang',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Price',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    '₹ 50',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '₹70',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 40,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 15,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'addtocart pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1.34),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x82FFFFFF),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.33),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/327/600',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
