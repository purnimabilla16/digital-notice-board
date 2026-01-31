import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'create_college_admin_page_widget.dart'
    show CreateCollegeAdminPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateCollegeAdminPageModel
    extends FlutterFlowModel<CreateCollegeAdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AdminName widget.
  FocusNode? adminNameFocusNode;
  TextEditingController? adminNameTextController;
  String? Function(BuildContext, String?)? adminNameTextControllerValidator;
  // State field(s) for AdminEmail widget.
  FocusNode? adminEmailFocusNode;
  TextEditingController? adminEmailTextController;
  String? Function(BuildContext, String?)? adminEmailTextControllerValidator;
  // State field(s) for AdminPassword widget.
  FocusNode? adminPasswordFocusNode;
  TextEditingController? adminPasswordTextController;
  late bool adminPasswordVisibility;
  String? Function(BuildContext, String?)? adminPasswordTextControllerValidator;
  // State field(s) for SelectCollege widget.
  String? selectCollegeValue;
  FormFieldController<String>? selectCollegeValueController;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    adminPasswordVisibility = false;
  }

  @override
  void dispose() {
    adminNameFocusNode?.dispose();
    adminNameTextController?.dispose();

    adminEmailFocusNode?.dispose();
    adminEmailTextController?.dispose();

    adminPasswordFocusNode?.dispose();
    adminPasswordTextController?.dispose();
  }
}
