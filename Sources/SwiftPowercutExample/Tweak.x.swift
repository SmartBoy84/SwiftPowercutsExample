import Foundation
import SwiftPowercutExampleC
import Orion

class SpringBoardHook: ClassHook<SpringBoard> {
    func applicationDidFinishLaunching(_ application: AnyObject) {
        orig.applicationDidFinishLaunching(application)

        NSLog("[Automaton] Registering my powercuts actions")
        PowercutsManager.sharedInstance().registerAction(withIdentifier: "com.barfie.automaton.action.complexAction", action: ComplexAction())
    }
}