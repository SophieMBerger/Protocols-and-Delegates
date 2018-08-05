//
//  ViewController.swift
//  ColorMagic
//
//  Created by Sophie Berger on 05.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, colorTransferDelegate {

    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
    }
    
    //when plus button in navigation controler pressed instantiate the delegate in ColorPickerVC
    //overriding below function, as it tells the nagigation controler what to do when + pressed, and we want it to not be the default
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PresentColorPickerVC" {
            //as? ColorPickerVC makes the segue destination of TYPE ColorPickerVC, not just towards it
            //Instantiates the ColorPickerVC when + in navigaation controler is pressed
            guard let colorPickerVC = segue.destination as?
                ColorPickerVC else { return }
            //the info from ColorPickerVC will be sent here, to ColorPresenterVC
            colorPickerVC.delegate = self
            }
        }
    }

   




