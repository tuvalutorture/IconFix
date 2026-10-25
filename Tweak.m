#include <Foundation/Foundation.h>
#include <CydiaSubstrate.h>

static void SBIconList_layoutIconsIfNeeded(__unused id self, __unused SEL _cmd) {
    // do fuck all, apparently, to fix the stupid
    /*
      if ( -[SBIconList iconsInRow:](self, "iconsInRow:", v13) == 1 )
        v2 = (float)(v5 - 59.0) - 17.0 + 1.0;
    */
    // sadkghklasjdghkjasdhfgkjwehfklwrhglkjwehfklwhfklwerhfkjwerhfkwehrfklwehf
    // i'mma go chamber a round through my head brb
}

__attribute__((constructor)) static void init(void) {
    MSHookMessageEx(NSClassFromString(@"SBIconList"), sel_getUid("layoutIconsIfNeeded"), (IMP)SBIconList_layoutIconsIfNeeded, NULL);
}
