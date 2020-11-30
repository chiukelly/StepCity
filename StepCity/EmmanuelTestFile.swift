//
//  TestFile.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/29/20.
//

import SwiftUI

struct EmmanuelTestFile: View {
    var body: some View {
        GeometryReader { gr in
            VStack {
                Spacer()
                
                Image("main_buildings")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: gr.size.width, height: gr.size.height * 0.5)
                    .offset(x: -(gr.size.width * 0.04))
                    
                    
            }
        }
    }
}

struct TestFile_Previews: PreviewProvider {
    static var previews: some View {
        EmmanuelTestFile()
    }
}
