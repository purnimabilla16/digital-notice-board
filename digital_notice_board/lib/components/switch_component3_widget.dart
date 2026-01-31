import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'switch_component3_model.dart';
export 'switch_component3_model.dart';

class SwitchComponent3Widget extends StatefulWidget {
  const SwitchComponent3Widget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final bool? parameter1;
  final DocumentReference? parameter2;

  @override
  State<SwitchComponent3Widget> createState() => _SwitchComponent3WidgetState();
}

class _SwitchComponent3WidgetState extends State<SwitchComponent3Widget> {
  late SwitchComponent3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchComponent3Model());

    _model.isActiveValue = widget!.parameter1!;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.isActiveValue!,
      onChanged: (newValue) async {
        safeSetState(() => _model.isActiveValue = newValue!);
        if (newValue!) {
          await widget!.parameter2!.update(createUsersRecordData(
            isActive: true,
          ));
        } else {
          await widget!.parameter2!.update(createUsersRecordData(
            isActive: false,
          ));
        }
      },
      activeColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: FlutterFlowTheme.of(context).primary,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
    );
  }
}
