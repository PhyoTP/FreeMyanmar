import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var percent: Double
}
var ethnicities: [Category] = [
    Category(name: "Banmar", percent: 68.78),
    Category(name: "Kayin", percent: 6.69),
    Category(name: "Rakhine", percent: 4.61),
    Category(name: "Shan", percent: 4.51),
    Category(name: "Mon", percent: 2.19),
    Category(name: "Chin", percent: 2.09),
    Category(name: "Kachin", percent: 1.5),
    Category(name: "Karenni", percent: 0.39),
    Category(name: "Other", percent: 9.24)
]
