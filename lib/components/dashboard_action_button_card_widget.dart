import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dashboard_action_button_card_model.dart';
export 'dashboard_action_button_card_model.dart';

class DashboardActionButtonCardWidget extends StatefulWidget {
  const DashboardActionButtonCardWidget({super.key});

  @override
  State<DashboardActionButtonCardWidget> createState() =>
      _DashboardActionButtonCardWidgetState();
}

class _DashboardActionButtonCardWidgetState
    extends State<DashboardActionButtonCardWidget> {
  late DashboardActionButtonCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardActionButtonCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: 200.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: FlutterFlowTheme.of(context).primary,
              offset: Offset(
                0.0,
                5.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(7.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).tertiary,
            width: 1.0,
          ),
        ),
        child: FFButtonWidget(
          onPressed: () async {
            context.pushNamed(CollegesListPageWidget.routeName);
          },
          text: 'Manage Colleges',
          icon: FaIcon(
            FontAwesomeIcons.school,
            size: 50.0,
          ),
          options: FFButtonOptions(
            width: 100.0,
            height: 40.0,
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            iconAlignment: IconAlignment.start,
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleSmallIsCustom,
                ),
            elevation: 1.0,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
    );
  }
}
