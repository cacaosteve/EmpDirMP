// https://s3.amazonaws.com/sq-mobile-interview/employees.json
// https://s3.amazonaws.com/sq-mobile-interview/employees_malformed.json
// https://s3.amazonaws.com/sq-mobile-interview/employees_empty.json

import SwiftUI
import Alamofire

struct ResponseData : Decodable {
    var employees: [Employee]
}
public class EmployeeFetcher: ObservableObject {
    @Published var employees = [Employee]()
    @Published var showingAlert = false
    public init(){
        loadWithAF()
    }
    func loadWithAF() {
        let request = AF.request("https://s3.amazonaws.com/sq-mobile-interview/employees.json")
        request.responseDecodable(of: ResponseData.self) { (response) in
            switch response.result {
            case .success(let value):
                self.employees = value.employees
            case .failure( _):
                self.showingAlert = true
            }
        }
    }
}
