import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_notice_page_widget.dart' show CreateNoticePageWidget;
import 'package:flutter/material.dart';

class CreateNoticePageModel extends FlutterFlowModel<CreateNoticePageWidget> {
  ///  Local state fields for this page.

  bool isGlobalNotice = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'TextField is required';
    }

    return null;
  }

  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for TargetRole widget.
  String? targetRoleValue;
  FormFieldController<String>? targetRoleValueController;
  // State field(s) for AttachmentName widget.
  FocusNode? attachmentNameFocusNode;
  TextEditingController? attachmentNameTextController;
  String? Function(BuildContext, String?)?
      attachmentNameTextControllerValidator;
  // State field(s) for AttachementLink widget.
  FocusNode? attachementLinkFocusNode;
  TextEditingController? attachementLinkTextController;
  String? Function(BuildContext, String?)?
      attachementLinkTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    attachmentNameFocusNode?.dispose();
    attachmentNameTextController?.dispose();

    attachementLinkFocusNode?.dispose();
    attachementLinkTextController?.dispose();
  }
}
