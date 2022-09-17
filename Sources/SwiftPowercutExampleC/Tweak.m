#import <Orion/Orion.h>
#import <libpowercuts/libpowercuts.h>

__attribute__((constructor)) static void init() {
  // Initialize Orion - do not remove this line.
  orion_init();
}
