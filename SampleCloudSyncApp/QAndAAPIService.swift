//
//  QAndAAPIService.swift
//  SampleCloudSyncApp
//
//  Created by Tim on 12/15/18.
//  Copyright © 2018 LyttleBit. All rights reserved.
//

import Foundation
import Alamofire

class QAndAAPIService: QandADataService {
    var data = [QAndAItem]()
    var onUpdate: (() -> Void)? = nil
    
    init() {
        print(AlamofireVersionNumber)
        Alamofire.request("").responseJSON { (response) in

            let decoder = JSONDecoder()
            do {
                let items = try decoder.decode([QAndAItem].self, from: response.data!)
                self.data = items
                self.onUpdate?()
            } catch {
                print(error)
            }
        }
        
    }
}
