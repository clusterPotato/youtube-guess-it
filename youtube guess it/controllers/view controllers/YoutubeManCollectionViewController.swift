//
//  YoutubeManCollectionViewController.swift
//  youtube guess it
//
//  Created by Gavin Craft on 4/22/21.
//

import UIKit

private let reuseIdentifier = "YoutubeCell"

class YoutubeManCollectionViewController: UICollectionViewController {
    //MARK: - instance variables
    var selectedType = Type.Gamer
    var loadedYoutubers:[Youtuber] = []
    var targettedYoutuber:Youtuber = Youtuber(name: "", photoName: "", type: .Gamer)
    var nameForTitle:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        shuffleYT(type: selectedType)
    }
    //MARK: - helper methods
    func shuffleYT(type: Type){
        if(type == .NonGamer){
            loadedYoutubers = Array(YoutuberController.notGamers.shuffled().prefix(3))
            targettedYoutuber = YoutuberController.gamers.randomElement() ?? Youtuber(name: "", photoName: "", type: .NonGamer)
            loadedYoutubers.append(targettedYoutuber)
            nameForTitle = "Gamer"
        }else{
            loadedYoutubers = Array(YoutuberController.gamers.shuffled().prefix(3))
            targettedYoutuber = YoutuberController.notGamers.randomElement() ?? Youtuber(name: "", photoName: "", type: .Gamer)
            loadedYoutubers.append(targettedYoutuber)
            nameForTitle = "Non Gamer"
        }
        loadedYoutubers.shuffle()
        updateViews()
    }
    func updateViews(){
        self.title = "Find the \(nameForTitle ?? "noting")"
        collectionView.reloadData()
    }
    func makeAlert(selectedYoutuber: Youtuber){
        let isCorrect = selectedYoutuber == targettedYoutuber
        let title = isCorrect ? "Fax. Nice one" : "That a'int it Chief"
        let alertItem = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Done", style: .cancel)
        let shuffleAction = UIAlertAction(title: "Bett, Rety", style: .default) { (_) in
            self.shuffleYT(type: self.selectedType)
        }
        alertItem.addAction(cancelAction)
        alertItem.addAction(shuffleAction)
        present(alertItem, animated: true)
    }
        
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return loadedYoutubers.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? YoutubeManCollectionViewCell else {return UICollectionViewCell()}
        let youtuber = loadedYoutubers[indexPath.row]
        cell.youtuber = youtuber
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        makeAlert(selectedYoutuber: loadedYoutubers[indexPath.row])
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination=segue.destination as? FilterViewController else {return}
        destination.delegate = self
    }
    

}
