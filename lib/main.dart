import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_flutter_modular/childs/app_child.dart';
import 'package:my_flutter_modular/modules/app_module.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const AppChild(),
  ));
}

// Annotations
// 
// ChildRoutes Transitions
//
// TransitionType.defaultTransition,
// TransitionType.fadeIn,
// TransitionType.noTransition,
// TransitionType.rightToLeft,
// TransitionType.leftToRight,
// TransitionType.upToDown,
// TransitionType.downToUp,
// TransitionType.scale,
// TransitionType.rotate,
// TransitionType.size,
// TransitionType.rightToLeftWithFade,
// TransitionType.leftToRightWithFade,
// TransitionType.custom,