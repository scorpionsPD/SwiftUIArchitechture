//
//  TestView.swift
//  SwiftUIArchitechture
//
//  Created by Pradeep Dahiya on 06/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//
import SwiftUI

struct TestView: View {
    var body: some View {
        VStack{
            
            HStack{
                Text("rajlaxmi")
                    .font(.largeTitle)
                Spacer()
                Text("rajlaxmi")
                    .foregroundColor(Color.red)
                Spacer()
                Text("rajlaxmi")
            }
            
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            Text("asdhkfjdhsaflkhdsklgjherklghadfkljghkldfjghkldfsjghdfklsjghkldsfjhkldsflkgjhsdflkghksjdhglkdfjsghdfklsjghdsfklgjhsdkfljghsdkljghsdfjghsdjkfghsdlkjghdslfkjghsdfklgh")
                .foregroundColor(Color.green)
        
                .multilineTextAlignment(.center)
                
                .frame(width: 100)
            
            Spacer()
            Text("rajlaxmi")
            Text("rajlaxmi")
            
        }.padding()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
