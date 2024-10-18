import 'package:flet/flet.dart';

import 'code_editor.dart';

CreateControlFactory createControl = (CreateControlArgs args) {
  switch (args.control.type) {
    case "code_editor":
      return const CodeEditorControl(
        //parent: args.parent,
        //control: args.control,
      );
    default:
      return null;
  }
};

void ensureInitialized() {
  // nothing to initialize
}