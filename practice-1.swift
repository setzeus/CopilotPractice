import Foundation

// func isStringValidEmail (email: String) -> Bool {
//     let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
//     let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//     return emailTest.evaluate(with: email)
// }

func removeAllLettersFromString(string: String) -> String {
    let letters = CharacterSet.letters
    let components = string.components(separatedBy: letters)
    let filtered = components.joined(separator: "")
    return filtered
}

var result = removeAllLettersFromString(string: "He69llo63 67Worl24578d24567")
print(result)