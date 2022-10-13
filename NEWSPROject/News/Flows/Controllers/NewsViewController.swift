//
//  NewsViewController.swift
//  NEWSPROject
//
//  Created by Dmytro Gavrylov on 04.09.2022.
//

import UIKit

class NewsViewController: UIViewController {
    
    var newsList: [News]?

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        newsTableView.register(UINib(nibName: "NewsCardTableViewCell", bundle: nil),
        forCellReuseIdentifier: "NewsCardTableViewCell")
        
    }
}
extension NewsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200.0
    }
}
extension NewsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCardTableViewCell", for: indexPath) as? NewsCardTableViewCell, let news = newsList?[indexPath.row] else  {
            return UITableViewCell()
        }
        
        cell.addData(news: news)
        
        return cell
    }
}
