//
//  ContentView.swift
//  EmpDir
//
//  Created by steve on 9/18/20.
//

import SwiftUI
import KingfisherSwiftUI

struct ContentView: View {
    @ObservedObject var fetcher = EmployeeFetcher()
    
    var body: some View {
        NavigationView{
            List(fetcher.employees) { employee in
                HStack(alignment: .center) {
                    KFImage(employee.photoURLSmall)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    VStack(alignment: .leading)  {
                        Text(employee.fullName)
                        Text(employee.team)
                            .foregroundColor(.gray)
                    }
                }
            }
            .ignoresSafeArea()
            .navigationBarTitle(Text("Employees"))
            .alert(isPresented: $fetcher.showingAlert) {
                Alert(title: Text("Error"), message: Text("There was an issue parsing data from the server"), dismissButton: .default(Text("Got it!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if os(macOS)
extension View {
    func navigationBarTitle(_ title: Text) -> some View {
        return self
    }
}
#endif
