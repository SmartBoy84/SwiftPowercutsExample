#import <Orion/Orion.h>
#import <libpowercuts/libpowercuts.h>

// fun fact! theos does -emit-objc-header automatically on compilation (exists
// in the final module dir)
#import "SwiftPowercutExample-Swift.h"

__attribute__((constructor)) static void init() {
  // Initialize Orion - do not remove this line.
  orion_init();

  // register action - put all registrations here
  // make sure the id is in this form (x.x.x.x.x) - unpredictable behaviour happens otherwise
  [[PowercutsManager sharedInstance]
      registerActionWithIdentifier:
          @"com.barfie.automaton.action.complexAction"
                            action:[ComplexAction new]];
}
