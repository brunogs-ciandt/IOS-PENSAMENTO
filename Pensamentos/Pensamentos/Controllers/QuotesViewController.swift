//
//  QuotesViewController.swift
//  Pensamentos
//
//  Created by administrator on 3/30/22.
//

import UIKit

class QuotesViewController: UIViewController {

    @IBOutlet weak var imgQuotes: UIImageView!
    @IBOutlet weak var imgBackground: UIImageView!
    
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblPensamento: UILabel!
    
    
    @IBOutlet weak var topConstratingQuote: NSLayoutConstraint!
    
    let quotesManager = QuotesManager()
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        showQuote()
    }
    

    func showQuote() {
        let quote = quotesManager.getQuote()
        lblAuthor.text = quote.author
        lblPensamento.text = quote.quote
        imgQuotes.image = UIImage(named: quote.image)
        imgBackground.image = imgQuotes.image
        
        lblAuthor.alpha = 0.0
        lblPensamento.alpha = 0.0
        imgQuotes.alpha = 0.0
        imgBackground.alpha = 0.0
        topConstratingQuote.constant = 50
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 3.0) {
            self.lblAuthor.alpha = 1.0
            self.lblPensamento.alpha = 1.0
            self.imgQuotes.alpha = 1.0
            self.imgBackground.alpha = 0.25
            self.topConstratingQuote.constant = 10
            self.view.layoutIfNeeded()
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
           self.showQuote()
       }
        
        showQuote()
    }

}
