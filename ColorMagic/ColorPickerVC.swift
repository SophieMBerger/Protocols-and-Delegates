//
//  ColorPickerVC.swift
//  ColorMagic
//
//  Created by Sophie Berger on 05.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    //setting-up a delegate here, as delegate will call userDidChoose function and use the buttons color and label as arguements
    //wont have a delegate from the start
    //variable conforms to ColorTransferDelegate protocol
    var delegate: colorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil{
        //sends info of button color/label to ColorPresenterVC through delegate, as delegate is ColorPresenterVC, so the arguements of the userDidChoose function in ColorPresenterVC are equal to the arguements passed in below
        //Thus like calling below function with ColorPresenterVC
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel!.text)!)
        //moves back to previous view controler
        self.navigationController?.popViewController(animated: true)
        }
    }


}
