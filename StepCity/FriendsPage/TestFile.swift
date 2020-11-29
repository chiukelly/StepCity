//
//  TestFile.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/29/20.
//

import SwiftUI

struct TestFile: View {
    var body: some View {
        Button(action: {print("check debug")}, label: {
            Text("Button")
        })
    }
}

struct TestFile_Previews: PreviewProvider {
    static var previews: some View {
        TestFile()
    }
}
