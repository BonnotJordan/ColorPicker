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
        dismiss(animated: false, completion: nil)
    }
}

