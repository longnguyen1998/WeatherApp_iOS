

import Foundation


extension Date {
    var weekDayName: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT") //Set timezone that you want
        dateFormatter.locale = Locale(identifier: "en")
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}


extension Double {
    var degreeFormat: String {
        return "\(self)°"
    }
}


extension String {
    var capitalizingFirstLetter: String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter
    }
}
