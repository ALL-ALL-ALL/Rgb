//
//  ContentView.swift
//  Rgb
//
//  Created by  Ixart on 15/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var red = 50.0
    @State private var grenn = 50.0
    @State private var blue = 50.0
    var body: some View {
        VStack {



            Spacer() // Pousse les sliders vers le bas

            HStack{
                
                Text("0")
                            Slider(value: $red,
                                   in: 0...255)
                            .scaleEffect(1.1) // Ajusteur d'échelle

                
                Text("255")
                // fin du red
                Text("0")
                            Slider(value: $grenn,
                                   in: 0...255)
                            .scaleEffect(1.1) //  Ajusteur d'échelle

                Text("255")
                // fin du grenn
                Text("0")
                            Slider(value: $blue,
                                   in: 0...255)
                            .scaleEffect(1.1) //  Ajusteur d'échelle

                Text("255")
                // fin du blue
                
                
                
            } // HSSTACK
            
            HStack{
                
                Text("RED: \(Int(red))")          // Lie le texte à la valeur du slider red
                
                Spacer()
                Text("grenn: \(Int(grenn))")     // Lie le texte à la valeur du slider red

                Spacer()
                Text("BLUE: \(Int(blue))")       // Lie le texte à la valeur du slider red

                    .padding()
                






                           } // VSTACK
            

            
            
            
            

        } // Vstack
        .padding()
        .background(Color(red: red/255, green: grenn/255, blue: blue/255)) // Définit le fond d'écran en fonction des valeurs des sliders
        .edgesIgnoringSafeArea(.all)



        



    } // Body
    


} // STUCT


#Preview {
    ContentView()
}
