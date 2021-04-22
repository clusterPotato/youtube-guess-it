//
//  Extensions_Protocols.swift
//  youtube guess it
//
//  Created by Gavin Craft on 4/22/21.
//

import UIKit
//MARK: - protocol
protocol ClickGamerDelegate: AnyObject {
    func didClickGamer(type: Type)
}
//MARK: - extensions
extension Youtuber: Equatable{
    static func == (lhs: Youtuber, rhs: Youtuber) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
extension YoutubeManCollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width/2) - 20
        let height = width
        return CGSize(width: width, height: height)
    }
}
extension YoutubeManCollectionViewController: ClickGamerDelegate{
    func didClickGamer(type: Type) {
        self.selectedType = type
        self.shuffleYT(type: type)
    }
}
//MARK: - i hate using strings as identifiers so enums
enum Type: String{
    case Gamer =  "Gamer"
    case NonGamer = "Non-Gamer"
}
