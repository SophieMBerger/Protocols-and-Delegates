//
//  ColorTransferDelegate.swift
//  ColorMagic
//
//  Created by Sophie Berger on 05.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import Foundation
import UIKit

protocol colorTransferDelegate {
    //function that delegates color and label of button to ColorPresenterVC
    //colorName is an internal parameter makes more sense as a parameter name than withName
    func userDidChoose(color: UIColor, withName colorName: String)
}
