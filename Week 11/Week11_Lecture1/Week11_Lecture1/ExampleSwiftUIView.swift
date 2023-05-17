//
//  ExampleSwiftUIView.swift
//  Week11_Lecture1
//
//  Created by Emine Sinem on 17.05.2023.
//

import SwiftUI

struct ExampleSwiftUIView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
              Text("Community")
                  .frame(width: 120, height: 30, alignment: .center)
                  .overlay(RoundedRectangle(cornerRadius: 30).stroke(.black, lineWidth: 2))
            
            ZStack(alignment: .bottomTrailing) {
                Image("foodPic")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(20)
                
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding()
                    .background(.indigo)
                    .frame(width: 46 , height: 46 , alignment: .center)
                    .clipShape(Circle())
            }
        }
        .padding(18)
        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.black, lineWidth: 2))
    }
}

struct ExampleSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleSwiftUIView()
    }
}
