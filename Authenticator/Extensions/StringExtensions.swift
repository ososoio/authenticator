import Foundation

extension String {

        /// Returns a new string made by removing spaces from both ends of the String.
        /// - Returns: A new string made by removing spaces from both ends of the String.
        @available(* , deprecated, renamed: "trimming")
        func trimmingSpaces() -> String {
                trimmingCharacters(in: CharacterSet(charactersIn: " "))
        }

        /// Returns a new string made by removing `.whitespacesAndNewlines` from both ends of the String.
        /// - Returns: A new string made by removing `.whitespacesAndNewlines` from both ends of the String.
        func trimming() -> String {
                return trimmingCharacters(in: .whitespacesAndNewlines)
        }
}

extension Optional where Wrapped == String {

        /// Not nil && not empty
        var hasContent: Bool {
                switch self {
                case .none:
                        return false
                case .some(let value):
                        return !value.isEmpty
                }
        }
}
