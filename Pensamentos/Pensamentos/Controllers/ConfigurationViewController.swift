//
//  ConfigurationViewController.swift
//  Pensamentos
//
//  Created by administrator on 3/30/22.
//

import UIKit

class ConfigurationViewController: UIViewController {

    @IBOutlet weak var switchChangeAuto: UISwitch!
    
    @IBOutlet weak var lblTimeSecond: UILabel!
    @IBOutlet weak var sliderTimeSecond: UISlider!
    
    @IBOutlet weak var segmentColor: UISegmentedControl!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeAuto(_ sender: UISwitch) {
        
    }
    
    @IBAction func changeTime(_ sender: UISlider) {
        
    }
    
    
    @IBAction func selectSegmentColor(_ sender: UISegmentedControl) {
    }
}
