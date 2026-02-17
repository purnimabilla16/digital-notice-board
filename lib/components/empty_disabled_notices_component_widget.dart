import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_disabled_notices_component_model.dart';
export 'empty_disabled_notices_component_model.dart';

class EmptyDisabledNoticesComponentWidget extends StatefulWidget {
  const EmptyDisabledNoticesComponentWidget({super.key});

  @override
  State<EmptyDisabledNoticesComponentWidget> createState() =>
      _EmptyDisabledNoticesComponentWidgetState();
}

class _EmptyDisabledNoticesComponentWidgetState
    extends State<EmptyDisabledNoticesComponentWidget> {
  late EmptyDisabledNoticesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyDisabledNoticesComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.error,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          Text(
            'No disabled notices available',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
          Text(
            'Please check back later',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
        ],
      ),
    );
  }
}
