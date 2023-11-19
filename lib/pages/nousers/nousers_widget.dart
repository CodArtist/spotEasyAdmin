import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'nousers_model.dart';
export 'nousers_model.dart';

class NousersWidget extends StatefulWidget {
  const NousersWidget({super.key});

  @override
  _NousersWidgetState createState() => _NousersWidgetState();
}

class _NousersWidgetState extends State<NousersWidget> {
  late NousersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NousersModel());

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
      width: 200.0,
      height: 200.0,
      decoration: const BoxDecoration(),
      child: Align(
        alignment: const AlignmentDirectional(0.00, 0.00),
        child: Text(
          'No Users',
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ),
    );
  }
}
