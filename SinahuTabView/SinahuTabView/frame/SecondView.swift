//
//  SecondView.swift
//  SinahuTabView
//
//  Created by Hangga Aji Sayekti on 20/08/21.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            Text("2")
                .foregroundColor(.white)
                .font(.system(size: 80, weight: .bold))
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
