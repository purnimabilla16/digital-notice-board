import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_users_component_model.dart';
export 'empty_users_component_model.dart';

class EmptyUsersComponentWidget extends StatefulWidget {
  const EmptyUsersComponentWidget({super.key});

  @override
  State<EmptyUsersComponentWidget> createState() =>
      _EmptyUsersComponentWidgetState();
}

class _EmptyUsersComponentWidgetState extends State<EmptyUsersComponentWidget> {
  late EmptyUsersComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyUsersComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.error_sharp,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 40.0,
        ),
        Text(
          'No users found\nUsers will appear here once they are created\n',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ],
    );
  }
}
