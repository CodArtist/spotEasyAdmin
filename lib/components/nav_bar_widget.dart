import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget>
    with TickerProviderStateMixin {
  late NavBarModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 45.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 170.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 130.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.kvector,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.dashboard_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 12.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: ((String var1) {
                                return var1.contains(RegExp(r'people',
                                    caseSensitive: false));
                              }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                              ((String var1) {
                                return var1.contains(RegExp(r'addNewAdmin',
                                    caseSensitive: false));
                              }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                              ((String var1) {
                                return var1.contains(RegExp(r'addOperator',
                                    caseSensitive: false));
                              }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}'))
                          ? const Color(0xFF0095FF)
                          : FlutterFlowTheme.of(context).primaryBtnText,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation1']!),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('People');
                    },
                    child: Container(
                      width: 75.0,
                      height: 69.0,
                      decoration: BoxDecoration(
                        color: ((String var1) {
                                  return var1.contains(RegExp(r'people',
                                      caseSensitive: false));
                                }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                                ((String var1) {
                                  return var1.contains(RegExp(
                                      r'addNewAdmin',
                                      caseSensitive: false));
                                }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                                ((String var1) {
                                  return var1.contains(RegExp(
                                      r'addOperator',
                                      caseSensitive: false));
                                }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}'))
                            ? const Color(0xFF0095FF)
                            : FlutterFlowTheme.of(context).primaryBtnText,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15.0,
                            color: ((String var1) {
                                      return var1.contains(RegExp(r'people',
                                          caseSensitive: false));
                                    }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                                    ((String var1) {
                                      return var1.contains(RegExp(
                                          r'addNewAdmin',
                                          caseSensitive: false));
                                    }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                                    ((String var1) {
                                      return var1.contains(RegExp(
                                          r'addOperator',
                                          caseSensitive: false));
                                    }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}'))
                                ? FlutterFlowTheme.of(context).lineColor
                                : FlutterFlowTheme.of(context).primaryBtnText,
                            offset: const Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Icon(
                        FFIcons.kvector1,
                        color: ((String var1) {
                                  return var1.contains(RegExp(r'people',
                                      caseSensitive: false));
                                }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                                ((String var1) {
                                  return var1.contains(RegExp(
                                      r'addNewAdmin',
                                      caseSensitive: false));
                                }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}')) ||
                                ((String var1) {
                                  return var1.contains(RegExp(
                                      r'addOperator',
                                      caseSensitive: false));
                                }('spoteasyadmin://spoteasyadmin.com${GoRouter.of(context).location}'))
                            ? Colors.white
                            : Colors.black,
                        size: 24.0,
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: Icon(
                FFIcons.kvector2,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: Icon(
                FFIcons.kvector4,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: Icon(
                FFIcons.kvector3,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  FFAppState().loggedin = false;
                });

                context.goNamed('LoginPage');
              },
              child: const Icon(
                FFIcons.ksignOutIcon,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ].divide(const SizedBox(height: 30.0)),
        ),
      ),
    );
  }
}
