//
//  QAndAModel.swift
//  SampleCloudSyncApp
//
//  Created by Tim on 12/15/18.
//  Copyright © 2018 LyttleBit. All rights reserved.
//

import Foundation

struct QAndAItem: Codable {
    let id: String = "1"
    let question: String
    let response: String
}

protocol QandADataService {
    func fetch(onComplete:  @escaping ([QAndAItem]) -> Void)
}

final class QAndAModel {
    var data = [QAndAItem]()
    var dataService: QandADataService
    var filteredData = [QAndAItem]()
    var onUpdate: (()->Void)? = nil
    private var filterActive = false
    
    init() {
        // Create data
        dataService = QAndAAPIService()// MockData()
 
        dataService.fetch { (items) in
            self.data = items
            self.filteredData = self.data
            self.onUpdate?()
        }
    }
    
    var numberOfQuestions: Int {
        return filteredData.count
    }
    
    func fetchData(completion: @escaping () -> Void) {
        dataService.fetch { (items) in
            self.data = items
            if !self.filterActive {
                self.filteredData = items
            }
            completion()
        }
    }
    
    func listenForUpdatesUsing(completion: @escaping ()->Void) {
        self.onUpdate = completion
    }
    
    func questionNumber(_ number: Int) -> String {
        return filteredData[number].question
    }
    
    func answerNumber(_ number: Int) -> String {
        return filteredData[number].response
    }
    
    /// Applies filter text to determine list of filtered questions
    ///
    /// - Parameter filter: the text to filter questions
    func questionsUsing(filter: String, completion: () -> Void) {
        guard filter != "" else {
            filterActive = false
            self.filteredData = data
            completion()
            return
        }
        filterActive = true
        filteredData = []
        for item in data {
            if item.question.range(of: filter, options: .caseInsensitive, range: nil, locale: nil) != nil {
                filteredData.append(item)
            }
//            if item.question.contains(filter) {
//            }
        }
        completion()
    }
}
