import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'global_notices_page_widget.dart' show GlobalNoticesPageWidget;
import 'package:flutter/material.dart';

class GlobalNoticesPageModel extends FlutterFlowModel<GlobalNoticesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
