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
    
    let configuration = Configuration.shared
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeAuto(_ sender: UISwitch) {
        configuration.autoRefresh = sender.isOn
    }
    
    @IBAction func changeTime(_ sender: UISlider) {
        configuration.timeInterval = Double(sender.value).rounded(FloatingPointRoundingRule.up)
        lblTimeSecond.text = "Mudar apos \(configuration.timeInterval) segundos"
    }
    
    @IBAction func selectSegmentColor(_ sender: UISegmentedControl) {
        configuration.darkColor = sender.isEnabledForSegment(at: 1)
    }
}
