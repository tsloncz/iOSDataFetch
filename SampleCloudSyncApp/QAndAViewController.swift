//
//  ViewController.swift
//  SampleCloudSyncApp
//
//  Created by Tim on 12/8/18.
//  Copyright © 2018 LyttleBit. All rights reserved.
//

import UIKit

class QAndAViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let model = QAndAModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        tableView.estimatedRowHeight = 70
        tableView.rowHeight = UITableView.automaticDimension
        
        model.listenForUpdatesUsing {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? QandADetailViewController,
            let cell = sender as? UITableViewCell,
            let index = tableView.indexPath(for: cell){
            vc.answer = model.answerNumber(index.row)
        }
    }

}

extension QAndAViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.numberOfQuestions
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QACell") as? QAndATableViewCell else {
            let cell = UITableViewCell()
            cell.textLabel?.text = model.questionNumber(indexPath.row)
            return cell
        }
        cell.setQuestion(to: model.questionNumber(indexPath.row))
        return cell
    }
    
    
}

extension QAndAViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = model.answerNumber(indexPath.row)
        self.performSegue(withIdentifier: "ShowQuestinoAnswer", sender: item)
    }
}

extension QAndAViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        model.questionsUsing(filter: searchBar.text!) { () in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}
