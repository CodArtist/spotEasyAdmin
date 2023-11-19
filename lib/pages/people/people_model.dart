import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'people_widget.dart' show PeopleWidget;
import 'package:flutter/material.dart';

class PeopleModel extends FlutterFlowModel<PeopleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navBar component.
  late NavBarModel navBarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
