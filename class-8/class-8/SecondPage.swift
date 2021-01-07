//
//  SecondPage.swift
//  class-8
//
//  Created by khalid Kaleem on 1/7/21.
//

import SwiftUI

struct SecondPage: View {
    @Binding var name : String
    @Binding var age : String
    @Binding var phone : String
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 40){
                TextField("Name", text: $name)
                TextField("Age", text: $age)
                TextField("Phone Number", text: $phone)
            }.padding().font(.title).multilineTextAlignment(.leading)
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Done")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
    }
}

//struct SecondPage_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondPage()
//    }
//}
