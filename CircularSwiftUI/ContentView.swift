//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by halil ibrahim Elkan on 9.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclepercentage : Double = 0
    @State var secondCirclepercentage : Double = 0
    @State var thirdCirclepercentage : Double = 0
    
    var body: some View {
        
        ZStack{
            Circular(lineWidth: 30, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstCirclepercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if firstCirclepercentage == 0{
                        firstCirclepercentage = 60
                    }else{
                        firstCirclepercentage = 0
                    }
                }
            Circular(lineWidth: 30, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red, percentage: secondCirclepercentage)
                .frame(width: 280, height: 380)
                .onTapGesture {
                    if secondCirclepercentage == 0{
                        secondCirclepercentage = 79
                    }else{
                        secondCirclepercentage = 0
                    }
                }
            Circular(lineWidth: 30, backgroundColor: Color.purple.opacity(0.2), foregroundColor: Color.purple, percentage: thirdCirclepercentage)
                .frame(width: 210, height: 210)
                .onTapGesture {
                    if thirdCirclepercentage == 0{
                        thirdCirclepercentage = 43
                    }else{
                        thirdCirclepercentage = 0
                    }
                }
            
        }
        
    }
}

#Preview {
    ContentView()
}
