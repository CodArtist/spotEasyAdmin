import '/flutter_flow/flutter_flow_util.dart';
import 'blank_page_widget.dart' show BlankPageWidget;
import 'package:flutter/material.dart';

class BlankPageModel extends FlutterFlowModel<BlankPageWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? uploadedImage;

  String urlimage = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadToFirebase] action in Button widget.
  String? url;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
