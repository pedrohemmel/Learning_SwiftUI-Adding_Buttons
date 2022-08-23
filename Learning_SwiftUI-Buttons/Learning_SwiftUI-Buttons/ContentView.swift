//
//  ContentView.swift
//  Learning_SwiftUI-Buttons
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            //As the button is a struct, we must instanciate a new Button and pass correctly the parameters of it
            //Button instance with closure
            Button("Click Me - Btn Closure", action:  {
                //Code of the function after click here
                
                print("Hello World")
            }).padding(.bottom, 10)
            
            //Button instance with trailing closure
            Button("Click Me - Btn Trailing Closure") {
                //Code of the function after click here
                
                print("Hello World")
            }
            
            Button(action: {
                print("Hello World")
            }, label: {
                
                HStack {
                    Image(systemName: "pencil")
                    Text("Click Me - Btn Customized").cornerRadius(10)
                }
                .padding()
                .background(Color(red: 255 / 255, green: 255 / 255, blue: 0 / 255))
                .cornerRadius(10)
                
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
