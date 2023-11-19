import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_menu_model.dart';
export 'user_menu_model.dart';

class UserMenuWidget extends StatefulWidget {
  const UserMenuWidget({super.key});

  @override
  _UserMenuWidgetState createState() => _UserMenuWidgetState();
}

class _UserMenuWidgetState extends State<UserMenuWidget> {
  late UserMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserMenuModel());

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
      width: 100.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://picsum.photos/seed/473/600',
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harsh Jain',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  'Admin',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                      ),
                ),
              ],
            ),
          ].divide(const SizedBox(width: 20.0)),
        ),
      ),
    );
  }
}
