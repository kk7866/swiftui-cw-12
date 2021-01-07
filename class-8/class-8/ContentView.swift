//
//  ContentView.swift
//  class-8
//
//  Created by khalid Kaleem on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var age = ""
    @State var phone = ""
    @State var isMentor = true
    var body: some View {
        VStack{
            Text("Welcome to Cpes").padding(.bottom, 50).foregroundColor(.blue).font(.title)
            Button(action: {
                isMentor.toggle()
            }){
                Text("Enter Details").font(.title).foregroundColor(.white).padding().background(Color.blue.opacity(0.7)).clipShape(RoundedRectangle(cornerRadius: 15))
            }.sheet(isPresented: $isMentor){
                SecondPage(name: $name, age: $age, phone: $phone)
            }
            if name != "" {
                HStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 10){
                        Text("Name : \(name)")
                        Text("Age : \(age)")
                        Text("Phone Number : \(phone)")
                    }.font(.title).padding()
                }
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

