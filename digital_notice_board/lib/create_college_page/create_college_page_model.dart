import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_college_page_widget.dart' show CreateCollegePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
