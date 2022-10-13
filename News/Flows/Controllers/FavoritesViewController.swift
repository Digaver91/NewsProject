//
//  FavoritesViewController.swift
//  NEWSPROject
//
//  Created by Dmytro Gavrylov on 04.09.2022.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    var newsList: [News]?
    
    
    @IBOutlet weak var favoritesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        favoritesTableView.dataSource = self
        favoritesTableView.delegate = self
        
        favoritesTableView.register(UINib(nibName: "NewsCardTableViewCell", bundle: nil),
        forCellReuseIdentifier: "NewsCardTableViewCell")
    }
   

}
extension FavoritesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200.0
    }
}
extension FavoritesViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCardTableViewCell", for: indexPath) as? NewsCardTableViewCell, let news = newsList?[indexPath.row] else  {
            return UITableViewCell()
        }
        
        cell.addData(news: news)
        
        return cell
    }
    
}
