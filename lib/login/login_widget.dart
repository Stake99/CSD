import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
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
                alignment: AlignmentDirectional(0, -0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: TextFormField(
                    controller: emailAddressController,
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
                alignment: AlignmentDirectional(0, 0.29),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: !passwordVisibility,
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(16, 24, 24, 24),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, -0.84),
                child: Container(
                  width: 262,
                  height: 262,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/DAGWOOD.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, 0.66),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Sign In',
                  options: FFButtonOptions(
                    width: 235,
                    height: 64,
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
                alignment: AlignmentDirectional(-0.4, 0.82),
                child: Text(
                  'Don\'t  Have An Account? ',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.55, 0.83),
                child: Text(
                  'Sign Up',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 16,
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
