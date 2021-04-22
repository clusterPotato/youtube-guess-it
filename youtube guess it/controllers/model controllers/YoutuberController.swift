//
//  YoutuberController.swift
//  youtube guess it
//
//  Created by Gavin Craft on 4/22/21.
//

import Foundation
class YoutuberController{
    //MARK: - the most annoying thing to type
    static let gamers:[Youtuber] = [
        Youtuber(name: "Anomaly", photoName: "anomaly", type: .Gamer),
        Youtuber(name: "Moist Cr1t1kal", photoName: "Cr1tikal", type: .Gamer),
        Youtuber(name: "Noahj456", photoName: "noahj", type: .Gamer),
        Youtuber(name: "JC Backfire", photoName: "jc", type: .Gamer),
        Youtuber(name: "Krazy Rabb1t", photoName: "krazyrabb1t", type: .Gamer),
        Youtuber(name: "Markiplier", photoName: "markiplier", type: .Gamer),
        Youtuber(name: "FaZe Booce AKA M3rkmusic", photoName: "merk", type: .Gamer),
        Youtuber(name: "Tim Hansen", photoName: "tim_hansen", type: .Gamer)
    ]
    static let notGamers = [
        Youtuber(name: "Andrew Baena", photoName: "andrewbaena", type: .NonGamer),
        Youtuber(name: "Life of Boris", photoName: "boris", type: .NonGamer),
        Youtuber(name: "Dawid Does Tech Stuff", photoName: "dawid", type: .NonGamer),
        Youtuber(name: "Linus Tech Tips", photoName: "linus", type: .NonGamer),
        Youtuber(name: "Marques Brownlee", photoName: "mkbhd", type: .NonGamer),
        Youtuber(name: "Mutahar", photoName: "muta", type: .NonGamer),
        Youtuber(name: "Nik Nocturnal", photoName: "niknocturnal", type: .NonGamer),
        Youtuber(name: "Random Gaming in HD", photoName: "rghd", type: .NonGamer)
    ]
}
