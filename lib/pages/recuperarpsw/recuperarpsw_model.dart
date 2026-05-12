import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recuperarpsw_widget.dart' show RecuperarpswWidget;
import 'package:flutter/material.dart';

class RecuperarpswModel extends FlutterFlowModel<RecuperarpswWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    correoFocusNode?.dispose();
    correoTextController?.dispose();
  }
}
