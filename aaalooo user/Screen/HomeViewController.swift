//
//  HomeViewController.swift
//  aaalooo user
//
//  Created by Saim on 20/1/20.
//  Copyright © 2020 Saim Personal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var calenderCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.calenderCollectionView.delegate = self
        self.calenderCollectionView.dataSource = self
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calenderCollectionViewCell", for: indexPath) as UICollectionViewCell
        
        return cell
    }
    
}
