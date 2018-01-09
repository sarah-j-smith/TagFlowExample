//
//  ViewController.swift
//  TagFlow
//
//  Created by Sarah Smith on 9/Jan/18.
//  Copyright © 2018 Sarah Smith. All rights reserved.
//

import UIKit

extension ViewController: UICollectionViewDelegateFlowLayout
{
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        configureCell(sizingTemplate!, forIndexPath: indexPath)
        return sizingTemplate!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
    }
}

extension ViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return section == 0 ? TAGS.count : 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCell", for: indexPath) as! TagCell
        self.configureCell(cell, forIndexPath: indexPath)
        return cell
    }
    
}

class ViewController: UIViewController
{
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var sizingTemplate: TagCell?
    
    let TAGS = ["Tech", "Design", "Humor", "Travel", "Music", "Writing", "Social Media", "Life", "Education", "Edtech", "Education Reform", "Photography", "Startup", "Poetry", "Women In Tech", "Female Founders", "Business", "Fiction", "Love", "Food", "Sports"]
    
    func configureCell(_ tagCell: TagCell, forIndexPath indexPath: IndexPath)
    {
        tagCell.tagLabel.text = TAGS[ indexPath.row ]
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let cellNib = UINib(nibName: "TagCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "TagCell")
        collectionView.backgroundColor = #colorLiteral(red: 0.7732516252, green: 1, blue: 0.7324737494, alpha: 1)
        
        flowLayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        sizingTemplate = cellNib.instantiate(withOwner: nil, options: nil).first as? TagCell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

