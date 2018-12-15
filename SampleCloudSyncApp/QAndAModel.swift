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
    var data: [QAndAItem] { get }
    var onUpdate: (() -> Void)? { get set }
}

final class QAndAModel {
    var data = [QAndAItem]()
    var dataService: QandADataService
    var filteredData = [QAndAItem]()
    var onUpdate: (()->Void)? = nil
    
    init() {
        // Create data
        dataService = QAndAAPIService()// MockData()
        dataService.onUpdate = {
            self.data = self.dataService.data
            self.filteredData = self.data
            self.onUpdate?()
        }
        data = dataService.data
        filteredData = data
    }
    
    var numberOfQuestions: Int {
        return filteredData.count
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
            self.filteredData = data
            completion()
            return
        }
        filteredData = []
        for item in data {
            if item.question.contains(filter) {
                filteredData.append(item)
            }
        }
        completion()
    }
}
