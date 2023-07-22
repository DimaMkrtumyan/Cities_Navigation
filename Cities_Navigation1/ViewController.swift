//
//  ViewController.swift
//  Cities_Navigation1
//
//  Created by Dmitriy Mkrtumyan on 20.07.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var citiesButtons: [UIButton]!
    let images: [UIImage] = [
        UIImage(named: "new york")!.withRenderingMode(.alwaysOriginal),
        UIImage(named: "Bern")!.withRenderingMode(.alwaysOriginal),
        UIImage(named: "san francisco")!.withRenderingMode(.alwaysOriginal),
        UIImage(named: "london")!.withRenderingMode(.alwaysOriginal)
    ]
    
    private func newYorkBtnSetup() {
        for cityBtn in citiesButtons {
            let vc = storyboard?.instantiateViewController(identifier: "InfoViewController") as! InfoViewController
            guard let nav = navigationController else { return }
            
            switch cityBtn {
            case citiesButtons[0]:
                citiesButtons[0].addAction(UIAction(handler: { [weak self, vc, nav] _ in
                    guard let self = self else { return }
                    nav.pushViewController(vc, animated: true)
                    vc.city = .newYork
                    vc.cityImage = self.images[0]
                }), for: .touchUpInside)
            case citiesButtons[1]:
                citiesButtons[1].addAction(UIAction(handler: { [weak self, vc, nav] _ in
                    guard let self = self else { return }
                    nav.pushViewController(vc, animated: true)
                    vc.city = .bern
                    vc.cityImage = self.images[1]
                }), for: .touchUpInside)
            case citiesButtons[2]:
                citiesButtons[2].addAction(UIAction(handler: { [weak self, vc, nav] _ in
                    guard let self = self else { return }
                    nav.pushViewController(vc, animated: true)
                    vc.city = .sanFrancisco
                    vc.cityImage = self.images[2]
                }), for: .touchUpInside)
            case citiesButtons[3]:
                citiesButtons[3].addAction(UIAction(handler: { [weak self, vc, nav] _ in
                    guard let self = self else { return }
                    nav.pushViewController(vc, animated: true)
                    vc.city = .london
                    vc.cityImage = self.images[3]
                }), for: .touchUpInside)
            default:
                printContent("Error. Out of range!")
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newYorkBtnSetup()
    }
    
}


