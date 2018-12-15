//
//  QandADetailViewController.swift
//  SampleCloudSyncApp
//
//  Created by Tim on 12/15/18.
//  Copyright © 2018 LyttleBit. All rights reserved.
//

import UIKit

class QandADetailViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    var answer: String = "Error fetching answer"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.answerLabel.text = answer
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
