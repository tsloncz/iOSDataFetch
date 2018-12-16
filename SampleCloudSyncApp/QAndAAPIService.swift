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
    
    func fetch(onComplete: @escaping ([QAndAItem])->Void) {
        Alamofire.request("").responseJSON { (response) in
            
            let decoder = JSONDecoder()
            do {
                let items = try decoder.decode([QAndAItem].self, from: response.data!)
                onComplete(items)
            } catch {
                print(error)
                onComplete([])
            }
        }
    }
}
