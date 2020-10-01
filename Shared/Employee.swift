import SwiftUI

enum EmployeeType: Codable {
    func encode(to encoder: Encoder) throws {
        //
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let status = try? container.decode(String.self)
        switch status {
              case "FULL_TIME": self = .fullTime
              case "PART_TIME": self = .partTime
              case "CONTRACTOR": self = .contractor
              default:
                 self = .unknown
          }
      }
    
    case unknown
    case fullTime
    case partTime
    case contractor
}

struct Employee : Codable {
    var uuid:UUID
    var fullName:String
    var phoneNumber:String
    var emailAddress:String
    var biography:String
    var photoURLSmall:URL
    var photoURLLarge:URL
    var team:String
    var employeeType:EmployeeType
    
    private enum CodingKeys: String, CodingKey {
        case uuid
        case fullName = "full_name"
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
        case biography = "biography"
        case photoURLSmall = "photo_url_small"
        case photoURLLarge = "photo_url_large"
        case team = "team"
        case employeeType = "employee_type"
    }
}

extension Employee: Identifiable {
    var id: UUID { return uuid }
}
