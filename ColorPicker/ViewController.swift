//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "pickColor"){
            let delegateVC = segue.destination as! ColorPickerViewController
            delegateVC.delegate = self
    
        }
    }

    
    


}

extension ViewController : ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor) {
        let lastColor = view.backgroundColor
        view.backgroundColor = color
        dismiss(animated: true, completion: nil)
        let alert = UIAlertController(title: "ColorPicker", message: "Voulez-vous garder cette nouvelle couleur ou revenir à l'ancienne", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Garder", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            
        }))
        alert.addAction(UIAlertAction(title: NSLocalizedString("Revenir", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            self.view.backgroundColor = lastColor
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

