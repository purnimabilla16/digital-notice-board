import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_admins_component_model.dart';
export 'empty_admins_component_model.dart';

class EmptyAdminsComponentWidget extends StatefulWidget {
  const EmptyAdminsComponentWidget({super.key});

  @override
  State<EmptyAdminsComponentWidget> createState() =>
      _EmptyAdminsComponentWidgetState();
}

class _EmptyAdminsComponentWidgetState
    extends State<EmptyAdminsComponentWidget> {
  late EmptyAdminsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyAdminsComponentModel());
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
          'No College admins available. Create your first college admin now.',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ],
    );
  }
}
