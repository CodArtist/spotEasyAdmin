import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_admin_widget.dart' show AddNewAdminWidget;
import 'package:flutter/material.dart';

class AddNewAdminModel extends FlutterFlowModel<AddNewAdminWidget> {
  ///  Local state fields for this page.

  String firstName = '';

  String email = '';

  String role = '';

  String lastName = '';

  FFUploadedFile? document;

  FFUploadedFile? uploadedImage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navBar component.
  late NavBarModel navBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadAnyFileType] action in Text widget.
  FFUploadedFile? file;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? count;
  // Stores action output result for [Custom Action - uploadToFirebase] action in Button widget.
  String? photoUrl;
  // Stores action output result for [Custom Action - uploadDocToFirebase] action in Button widget.
  String? docUrl;
  // Stores action output result for [Custom Action - sendEmailAdmin] action in Button widget.
  bool? emailSent;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
