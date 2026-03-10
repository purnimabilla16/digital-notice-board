import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_college_page_widget.dart' show CreateCollegePageWidget;
import 'package:flutter/material.dart';

class CreateCollegePageModel extends FlutterFlowModel<CreateCollegePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CollegeName widget.
  FocusNode? collegeNameFocusNode;
  TextEditingController? collegeNameTextController;
  String? Function(BuildContext, String?)? collegeNameTextControllerValidator;
  // State field(s) for CollegeCode widget.
  FocusNode? collegeCodeFocusNode;
  TextEditingController? collegeCodeTextController;
  String? Function(BuildContext, String?)? collegeCodeTextControllerValidator;
  // State field(s) for IsActive widget.
  bool? isActiveValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    collegeNameFocusNode?.dispose();
    collegeNameTextController?.dispose();

    collegeCodeFocusNode?.dispose();
    collegeCodeTextController?.dispose();
  }
}
