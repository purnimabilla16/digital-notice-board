import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'switch_component2_model.dart';
export 'switch_component2_model.dart';

class SwitchComponent2Widget extends StatefulWidget {
  const SwitchComponent2Widget({
    super.key,
    this.parameter1,
  });

  final bool? parameter1;

  @override
  State<SwitchComponent2Widget> createState() => _SwitchComponent2WidgetState();
}

class _SwitchComponent2WidgetState extends State<SwitchComponent2Widget> {
  late SwitchComponent2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchComponent2Model());

    _model.switchValue = widget!.parameter1!;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        safeSetState(() => _model.switchValue = newValue!);
      },
      activeColor: FlutterFlowTheme.of(context).alternate,
      activeTrackColor: FlutterFlowTheme.of(context).primary,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
    );
  }
}
