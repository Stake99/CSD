import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllsetWidget extends StatefulWidget {
  const AllsetWidget({Key? key}) : super(key: key);

  @override
  _AllsetWidgetState createState() => _AllsetWidgetState();
}

class _AllsetWidgetState extends State<AllsetWidget> {
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.06, -0.48),
                child: Container(
                  width: 340,
                  height: 340,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Screenshot_20230104_151238_Google.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.13, 0.35),
                child: Text(
                  'Congratulations!',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 28,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0.46),
                child: Text(
                  'Now we\'re here to help you meet',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 15,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, 0.53),
                child: Text(
                  'your daily needs.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 15,
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
