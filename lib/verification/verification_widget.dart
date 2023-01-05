import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationWidget extends StatefulWidget {
  const VerificationWidget({Key? key}) : super(key: key);

  @override
  _VerificationWidgetState createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
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
          child: Align(
            alignment: AlignmentDirectional(0.4, 0.7),
            child: Image.asset(
              'assets/images/gxif9_600',
              width: double.infinity,
              height: 385,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
