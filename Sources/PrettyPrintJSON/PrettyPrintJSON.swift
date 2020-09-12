import Foundation

struct PrettyPrintJSON {
    static func with(data: Data) -> String {
        do {
            let data = try JSONSerialization.jsonObject(with: data, options: []) as! [String:AnyObject]
            let prettyJSON = try JSONSerialization.data(withJSONObject: data, options: JSONSerialization.WritingOptions.prettyPrinted )
            if let prettyString = String(data: prettyJSON, encoding: String.Encoding.utf8) {
                return prettyString
            }
        } catch {
            print("Error when pretty printing JSON: \(error)")
        }
        return ""
    }
}
