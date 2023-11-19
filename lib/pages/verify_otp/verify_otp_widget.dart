import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'verify_otp_model.dart';
export 'verify_otp_model.dart';

class VerifyOtpWidget extends StatefulWidget {
  const VerifyOtpWidget({super.key});

  @override
  _VerifyOtpWidgetState createState() => _VerifyOtpWidgetState();
}

class _VerifyOtpWidgetState extends State<VerifyOtpWidget> {
  late VerifyOtpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyOtpModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: 370.0,
                  height: 285.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 10.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 306.0,
                          height: 64.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(-1.00, -1.00),
                            child: PinCodeTextField(
                              autoDisposeControllers: false,
                              appContext: context,
                              length: 6,
                              textStyle: FlutterFlowTheme.of(context).bodyLarge,
                              mainAxisAlignment: MainAxisAlignment.center,
                              enableActiveFill: false,
                              autoFocus: true,
                              enablePinAutofill: false,
                              errorTextSpace: 16.0,
                              showCursor: true,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              obscureText: false,
                              hintCharacter: '●',
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme(
                                fieldHeight: 44.0,
                                fieldWidth: 44.0,
                                borderWidth: 2.0,
                                borderRadius: BorderRadius.circular(12.0),
                                shape: PinCodeFieldShape.box,
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                inactiveColor:
                                    FlutterFlowTheme.of(context).alternate,
                                selectedColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeFillColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                inactiveFillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                selectedFillColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                              controller: _model.pinCodeController,
                              onChanged: (_) {},
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: _model.pinCodeControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        child: FFButtonWidget(
                          onPressed: () async {},
                          text: 'Verify otp',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
