//
//  SecondView.swift
//  SinahuTabView
//
//  Created by Hangga Aji Sayekti on 20/08/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct SecondView: View {
    
    @ObservedObject var Hits = HitModel()
    
    var body: some View {
        NavigationView{
            List(Hits.data){
                i in
                VStack{
                    if i.webformatURL != ""{
                        
                        WebImage(url: URL(string: i.webformatURL)!)
                        
                            .resizable()
                            .scaledToFill()
                            //.frame(width: 170, height: 170) // custom frame size
                            //.background(Image("loader").resizable().aspectRatio(contentMode: .fill).frame(width: 60, height: 30))
                            .cornerRadius(10)
                            //.padding()
                            
                    } else{
                        
                        Image("loader").resizable().frame(width: 120, height: 170).cornerRadius(10)
                            .padding()
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(.blue)
                            Text(i.user)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .font(.system(size: 14))
                                .fixedSize(horizontal: true, vertical: true)
                                
                        }
                        
                        
                        Text(i.tags)
                            .foregroundColor(.black)
                            //.font(.caption)
                            .lineLimit(4)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 22))
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading) // agar child layout align to top
                    //.padding()
                        // left padding
                    .padding(.leading, 0)

                        // right padding
                    .padding(.trailing, 20)
                        
                        // top padding
                    .padding(.top, 20)
                        
                        // bottom padding
                    .padding(.bottom, 20)
                }
                        
            }
            .navigationBarTitle("Fill Width")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
