# keyboard_visibility_detector

Small widget to help you detect whether a keyboard is visible or not.
The code is adapted from https://stackoverflow.com/a/64411797

          KeyboardVisibilityDetector(
            builder: (context, child, isKeyboardVisible) {
              if (isKeyboardVisible) {
              //what to do when the keyboard is visible
                return const SizedBox(
                  height: 50, 
                );
              }
              //and when its not visible
              return const SizedBox(
                height: 200,
              );
            },
            child: Container(
              color: Colors.red,
            ),
          ),

