import 'package:flet/flet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
//import 'package:highlight/languages/java.dart';
//import 'package:highlight/languages/all.dart';
import 'package:highlight/languages/python.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';



class CodeEditorControl extends StatelessWidget {
  final Control? parent;
  final Control control;
  
  const CodeEditorControl({
    super.key,
    required this.parent,
    required this.control,
  });



  @override


  Widget build(BuildContext context) {
    String? fletSnippet = control.attrString("value");

    CodeController controller = CodeController(
  text: fletSnippet,
  language: python,
);
    return Scaffold(
        body: CodeTheme(
          data: CodeThemeData(styles: monokaiSublimeTheme),
          child: SingleChildScrollView(
            child: CodeField(
              controller: controller,
            ),
          ),
        ),
      );
    //return const Text("This is CodeEditor");
  }
}

// class CodeEditorControl extends StatelessWidget {
//   final Control? parent;
//   final Control control;

//   CodeEditorControl({
//     super.key,
//     required this.parent,
//     required this.control,
//   });

//   String javaFactorialSnippet = '''
// class MyClass {
//   /// Calculates the factorial of the number.
//   /// The number must be >= 0.
//   static int factorial(int n) {
//     if (n == 0) {
//       return 1;
//     }

//     return n * factorial(n - 1);
//   }

//   public static void main(String[] args) {
//     int num = 5;
//     System.out.println("Factorial of " + num + " is " + factorial(5));
//   }
// }
// ''';
// //   final controller = CodeController(
// //   text: javaFactorialSnippet,
// //   language: java,
// // );
//   @override
//   Widget build(BuildContext context) {
//     // var color = control.attrColor("color", context);
//     // var size = control.attrDouble("size");
//     // var spinkitType = control.attrString("spinkittype");
//     // late Widget spinkitControl;

//     // switch (spinkitType) {
//     //   case "rotatingcircle":
//     //     spinkitControl = SpinKitRotatingCircle(
//     //       color: color,
//     //       size: size ?? 50,
//     //     );
//     //     break;
//     //   case "foldingcube":
//     //     spinkitControl = SpinKitFoldingCube(
//     //       color: color,
//     //       size: size ?? 50,
//     //     );
//     //     break;
//     //   default:
//     //     spinkitControl = SpinKitPumpingHeart(
//     //       color: color,
//     //       size: size ?? 50,
//     //     );
//     // }
//       Widget codeEditorControl = Scaffold(
//         body: CodeTheme(
//           data: CodeThemeData(styles: monokaiSublimeTheme),
//           child: const SingleChildScrollView(
//             child: TextField(
//               //controller: controller,
//               maxLines: null,
//             ),
//           ),
//         ),
//       );

//     return constrainedControl(context, codeEditorControl, parent, control);
//   }
// }