//
//  NewsViewController.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/16/21.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private var dataSource: NewsDataSource!
    private var newsManager: NewsManagerProtocol!
    //@IBOutlet weak var profileBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        configureNews()
       // profileBtn.layer.cornerRadius = 20
    }
    
    private func setupLayout() {
        collectionView.registerNib(class: GridCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        dataSource = NewsDataSource(with: collectionView, manager: newsManager)
        
        
    }
    

}
