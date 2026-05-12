import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataBeg = false;
  FFUploadedFile uploadedLocalFile_uploadDataBeg =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataBeg = '';

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for ciudad widget.
  FocusNode? ciudadFocusNode;
  TextEditingController? ciudadTextController;
  String? Function(BuildContext, String?)? ciudadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    ciudadFocusNode?.dispose();
    ciudadTextController?.dispose();
  }
}
