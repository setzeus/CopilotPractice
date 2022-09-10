import Foundation
import Swift
import SwiftUI

// Function that takes in a string & checks for a hyperlink.
// If detected, inject the [Link] markdown next to the hyperlink.
func checkForHyperlink(_ string: String) -> String {
    var newString = string
    let regex = try! NSRegularExpression(pattern: "(https?://\\S+)", options: .caseInsensitive)
    let matches = regex.matches(in: string, options: [], range: NSRange(location: 0, length: string.utf16.count))
    for match in matches {
        let range = Range(match.range, in: string)!
        let url = string[range]
        newString = newString.replacingOccurrences(of: url, with: "[\(url)](\(url))")
    }
    return newString
}

//checkForHyperlink("This is a normal sentence. This is a hyperlink: https://www.google.com")
print(checkForHyperlink("This is a normal sentence. This is a hyperlink: https://www.google.com"))