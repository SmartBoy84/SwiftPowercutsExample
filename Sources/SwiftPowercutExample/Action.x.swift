import Foundation
import SwiftPowercutExampleC

@objc public class ComplexAction: PCAction {
    let parameterLabel: String = "requiredParameterExample"

    override public func perform(forIdentifier identifier: String, withParameters parameters: [AnyHashable: Any], success: @escaping (Any?) -> Void, fail: @escaping (String) -> Void) {
        // this first check is important - runtime errors are a thing in swift apparently and String(nil) crashes the springboard
        guard parameters.count > 0, !((parameters[parameterLabel] as? String) ?? "").isEmpty
        else {
            fail("You must provide the correct parameters!")
            return
        }

        NSLog("[Automaton] Perfoming action with identifier \(identifier), parameters \(parameters.map { "\($0): \($1)" }.joined(separator: ", "))")

        let output = "Here's what you've written: \(parameters[parameterLabel]!)"
        success(output)
    }

    override public func name(forIdentifier _: String) -> String {
        "Complex example action"
    }

    override public func descriptionSummary(forIdentifier _: String) -> String {
        "Just an example action"
    }

    override public func keywords(forIdentifier _: String) -> [String] {
        ["improve", "your", "SEO"]
    }

    override public func associatedAppBundleId(forIdentifier _: String) -> String {
        "com.apple.MobileSMS"
    }

    override public func iconPath(forIdentifier _: String) -> String {
        "/path/to/your/icon.png"
    }

    override public func parametersDefinition(forIdentifier _: String) -> [Any] {
        [["type": "text",
          "key": parameterLabel,
          "label": "Required parameter",
          "placeholder": "Put some text here!"]]
    }

    override public func parameterSummary(forIdentifier _: String) -> String {
        "Complex example action with embedded param: ${\(parameterLabel)}"
    }

    override public func outputDefinition(forIdentifier _: String) -> [AnyHashable: Any] {
        [
            "type": "text",
            "name": "Example output text",
        ]
    }
}
