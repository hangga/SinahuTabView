//
//  ContentView.swift
//  SinahuTabView
//
//  Created by Hangga Aji Sayekti on 20/08/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            FirstView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Siji")
                        .font(.system(size: 50, weight:.bold))
                }
            SecondView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Loro")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Telu")
                }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
