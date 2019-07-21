//
//  FeedLisViewController.swift
//  MVVMFeed
//
//  Created by Miguel Zarazua on 7/20/19.
//  Copyright © 2019 Miguel Zarazua. All rights reserved.
//

import UIKit

protocol Feed
{
    var id: String {get set}
    var time: Date {get set}
    
}

class FeedLisViewController: UIViewController
{
    
    @IBOutlet weak var tableView: UITableView!
    var feeds: [Feed] = [Feed]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


//MARK: - Private methods
extension FeedLisViewController
{
    private func loadTableView()
    {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 48
        tableView.rowHeight = UITableView.automaticDimension
    }
}

//MARK: - UITAbleView detelegate an datasource methods
extension FeedLisViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
