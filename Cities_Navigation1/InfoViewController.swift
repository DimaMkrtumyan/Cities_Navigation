//
//  InfoViewController.swift
//  Cities_Navigation1
//
//  Created by Dmitriy Mkrtumyan on 20.07.23.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet weak var cityNameLbl: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    var cityImage: UIImage?
    var city: Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch city {
        case .bern:
            mainImageView.image = cityImage
            cityNameLbl.text = "Bern"
        case .london:
            mainImageView.image = cityImage
            cityNameLbl.text = "London"
        case .newYork:
            mainImageView.image = cityImage
            cityNameLbl.text = "New York"
        case .sanFrancisco:
            mainImageView.image = cityImage
            cityNameLbl.text = "San Francisco"
        default:
            print("Something goes wrong!")
        }
    }

}

