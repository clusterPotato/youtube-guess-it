//
//  FilterViewController.swift
//  youtube guess it
//
//  Created by Gavin Craft on 4/22/21.
//

import UIKit

class FilterViewController: UIViewController {
    //MARK: - properties
    weak var delegate: ClickGamerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //MARK: - ibactions
    @IBAction func gaemrButtonPressed(_ sender: Any) {
        delegate?.didClickGamer(type: .Gamer)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func nonGaemrButtonPressed(_ sender: Any) {
        delegate?.didClickGamer(type: .NonGamer)
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
