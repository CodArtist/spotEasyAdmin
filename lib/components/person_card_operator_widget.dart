import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/three_dots_drop_down_operator/three_dots_drop_down_operator_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'person_card_operator_model.dart';
export 'person_card_operator_model.dart';

class PersonCardOperatorWidget extends StatefulWidget {
  const PersonCardOperatorWidget({
    super.key,
    String? name,
    String? role,
    String? photo,
    required this.email,
    required this.status,
    required this.operator,
  })  : name = name ?? 'null',
        role = role ?? 'null',
        photo = photo ?? 'https://i.stack.imgur.com/l60Hf.png';

  final String name;
  final String role;
  final String photo;
  final String? email;
  final String? status;
  final OperatorRecord? operator;

  @override
  _PersonCardOperatorWidgetState createState() =>
      _PersonCardOperatorWidgetState();
}

class _PersonCardOperatorWidgetState extends State<PersonCardOperatorWidget> {
  late PersonCardOperatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonCardOperatorModel());

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
      child: Container(
        width: 750.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.network(
                        widget.photo,
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      child: Container(
                        width: 70.0,
                        decoration: const BoxDecoration(),
                        child: Text(
                          widget.name.maybeHandleOverflow(maxChars: 13),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'DM Sans',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      decoration: const BoxDecoration(),
                      child: Text(
                        valueOrDefault<String>(
                          widget.email,
                          'null',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Sans',
                              color: const Color(0xFFA3AED0),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 10.0)),
                ),
                Text(
                  widget.role,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        color: const Color(0xFFA3AED0),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.status == 'Active' ? 'Verified' : widget.status,
                      'null',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DM Sans',
                          color: const Color(0xFFA3AED0),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Icon(
                          Icons.edit,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 30.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: false,
                                  avoidOverflow: true,
                                  targetAnchor: const AlignmentDirectional(1.0, 1.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: ThreeDotsDropDownOperatorWidget(
                                        operator: widget.operator!,
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Icon(
                                Icons.more_vert,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
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
