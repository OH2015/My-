//
//  TableViewController.swift
//  Myπ
//
//  Created by 123 on 2019/03/28.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

class TableViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        colorSet = uds.dictionary(forKey: KEY.colorSet) as! [String : Int]
        isDifferentColor = uds.bool(forKey: KEY.isDifferentColor)
        skipcount = uds.integer(forKey: KEY.skipcount)
        PieArray = ["3."]

        for i in pie{
            PieArray.append(String(i))
        }

        let scrwidth = self.view.frame.width
        cellWidth = scrwidth/8
        cellHeight = scrwidth/8

        self.collectionView.delegate = self
        self.collectionView.dataSource = self

    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let label = cell.contentView.viewWithTag(1) as! UILabel
        let section = indexPath.section
        let index = indexPath.row + section*100
        let number = PieArray[index]
        label.text = number

        if isDifferentColor{
            if let colorIndex = colorSet[number]{
                label.textColor = colors[colorIndex]
            }
            if indexPath.section == 0 && indexPath.row == 0{
                label.textColor = colors[colorSet["3"]!]
            }
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionHeader", for: indexPath)
            let label = header.viewWithTag(1) as! UILabel
            label.text = "\(indexPath.section*100)~"
            return header
        }

        return UICollectionReusableView()
    }
}



