//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Alexey Efimov on 02/07/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let colorVC = segue.source as! ColorViewController
        colorVC.delegate = self
        colorVC.setColor()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ColorViewController
        colorVC.colorFromMainVC = view.backgroundColor
    }
}

// MARK: - ColorDelegate
extension ViewController: ColorDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

