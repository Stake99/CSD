import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? emailAddressController3;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
    emailAddressController3 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    emailAddressController1?.dispose();
    emailAddressController2?.dispose();
    emailAddressController3?.dispose();
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.02, -0.87),
                child: Container(
                  width: 262,
                  height: 262,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/fries.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.39),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: TextFormField(
                    controller: emailAddressController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: FlutterFlowTheme.of(context).bodyText2,
                      hintText: 'Password:',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: TextFormField(
                    controller: emailAddressController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: FlutterFlowTheme.of(context).bodyText2,
                      hintText: 'Enter First Name:',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.14),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: TextFormField(
                    controller: emailAddressController3,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email Or  Phone Number:',
                      labelStyle: FlutterFlowTheme.of(context).bodyText2,
                      hintText: 'Email Or Phone Number:',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, 0.72),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Sign In',
                  options: FFButtonOptions(
                    width: 235,
                    height: 65,
                    color: FlutterFlowTheme.of(context).primaryText,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.27, 0.86),
                child: Text(
                  'Have an Account? ',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.36, 0.86),
                child: Text(
                  'Sign In',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
