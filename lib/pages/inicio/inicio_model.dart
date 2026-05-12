import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'inicio_widget.dart' show InicioWidget;
import 'package:flutter/material.dart';

class InicioModel extends FlutterFlowModel<InicioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
