//
//  FirstView.swift
//  SinahuTabView
//
//  Created by Hangga Aji Sayekti on 20/08/21.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.green)
            Text("1")
                .foregroundColor(.white)
                .font(.system(size: 80, weight: .bold))
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
