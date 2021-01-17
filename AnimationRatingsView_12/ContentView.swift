//
//  ContentView.swift
//  AnimationRatingsView_12
//
//  Created by emm on 17/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rating()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




///////////////////   \\\\\\\\\\\\\\\\\\

struct Rating: View {
    
    @State var value: CGFloat = 0.5
    
    var body: some View {
        VStack {
            Text("Do you like this conversation?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .padding(.top, 20)
            
            Spacer(minLength: 0)
            
            Slider(value: $value)
                .padding()
            
            Spacer(minLength: 0)
        }
        .background(
            (value <= 0.3 ? Color("Color1") : (value > 0.3 && value <= 0.7 ? Color("Color2") : Color("Color3")))
                .ignoresSafeArea(.all, edges: .all)
                .animation(.easeInOut)
        )
    }
}




//////////////  Smile Shape \\\\\\\\\\\\\\\

struct Smile: Shape {
    var value: CGFloat
    
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            let center = rect.width
        }
    }
}
