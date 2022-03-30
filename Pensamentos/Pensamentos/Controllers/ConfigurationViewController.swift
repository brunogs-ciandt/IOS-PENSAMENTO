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
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Refresh"), object: nil, queue: nil) { _ in
            self.refreshView()
        }
    }
    
    fileprivate func refreshView() {
        switchChangeAuto.setOn(configuration.autoRefresh, animated: false)
        sliderTimeSecond.setValue(Float(configuration.timeInterval), animated: false)
        segmentColor.selectedSegmentIndex = configuration.darkColor ? 1 : 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        refreshView()
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
