import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_component_model.dart';
export 'switch_component_model.dart';

class SwitchComponentWidget extends StatefulWidget {
  const SwitchComponentWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final bool? parameter1;
  final DocumentReference? parameter2;

  @override
  State<SwitchComponentWidget> createState() => _SwitchComponentWidgetState();
}

class _SwitchComponentWidgetState extends State<SwitchComponentWidget> {
  late SwitchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchComponentModel());

    _model.switchValue = widget.parameter1!;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          safeSetState(() => _model.switchValue = newValue);
          if (newValue) {
            await widget.parameter2!.update(createUsersRecordData(
              isActive: true,
            ));
          } else {
            await widget.parameter2!.update(createUsersRecordData(
              isActive: false,
            ));
          }
        },
        activeColor: FlutterFlowTheme.of(context).secondaryBackground,
        activeTrackColor: FlutterFlowTheme.of(context).tertiary,
        inactiveTrackColor: FlutterFlowTheme.of(context).secondaryBackground,
        inactiveThumbColor: FlutterFlowTheme.of(context).primaryText,
      ),
    );
  }
}
