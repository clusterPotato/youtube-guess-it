//
//  Youtuber.swift
//  youtube guess it
//
//  Created by Gavin Craft on 4/22/21.
//

import UIKit
class Youtuber{
    //MARK: - instance variables
    let name:String
    let photo:UIImage
    let type: Type
    let uuid:String
    //MARK: - init
    init(name:String, photoName:String, type:Type, uuid:String = UUID().uuidString){
        self.type = type
        self.photo = UIImage(named: photoName) ?? UIImage()
        self.name = name
        self.uuid = uuid
    }
}

