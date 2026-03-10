import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'notices_list_page_widget.dart' show NoticesListPageWidget;
import 'package:flutter/material.dart';

class NoticesListPageModel extends FlutterFlowModel<NoticesListPageWidget> {
  ///  Local state fields for this page.

  bool showOnlyMyNotices = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
