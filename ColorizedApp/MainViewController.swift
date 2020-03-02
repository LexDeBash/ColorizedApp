//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Alexey Efimov on 02/07/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ColorViewController
        colorVC.delegate = self
        colorVC.currentColor = view.backgroundColor
    }
}

// MARK: - ColorDelegate
extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

