//
//  HitModel.swift
//  SinahuTabView
//
//  Created by Hangga Aji Sayekti on 21/08/21.
//

import Foundation
import Combine
import SwiftyJSON

class HitModel: ObservableObject {
    
    @Published var data = [Hit]()
    
    init(){
        let url = Const.BASE_URL + "?category=background&key=17332997-1e55af381b142aef6411ffce2"
        let session = URLSession.init(configuration: .default)
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
                    
                    if err != nil{
                        
                        print((err?.localizedDescription)!)
                        return
                    }
                    
                    let json = try! JSON(data: data!)
                    
                    let hits = json["hits"].array!
                    
                    for i in hits{

                        let tags = i["tags"].stringValue
                        
                        let user = i["user"].stringValue
                        
                        let webformatURL = i["webformatURL"].stringValue
                        
                        //let imurl = i["urlToImage"].stringValue
                        
                        DispatchQueue.main.async {
                            self.data.append(Hit(tags: tags, user: user,  webformatURL: webformatURL))
                        }
                    }
                    
                }.resume()
    }
}
