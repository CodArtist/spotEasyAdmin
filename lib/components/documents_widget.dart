import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'documents_model.dart';
export 'documents_model.dart';

class DocumentsWidget extends StatefulWidget {
  const DocumentsWidget({super.key});

  @override
  _DocumentsWidgetState createState() => _DocumentsWidgetState();
}

class _DocumentsWidgetState extends State<DocumentsWidget> {
  late DocumentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentsModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 55.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 40.0,
            color: Color(0x33747474),
            offset: Offset(0.0, 20.0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Passport',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'DM Sans',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'passport.pdf',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'DM Sans',
                    color: const Color(0xFFA3AED0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Icon(
              Icons.delete,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
