//
//  SearchCriteriaViewController.swift
//  WineApp
//
//  Created by Justin Steffen on 5/31/15.
//  Copyright (c) 2015 jsteffen. All rights reserved.
//

import UIKit

class SearchCriteriaViewController: UIViewController {
    
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var partySizePeopleLabel: UILabel!
    
    let maxPartySize = 8
    let minPartySize = 1
    var partySize = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func partySizeDecrementButton(sender: AnyObject) {
        if partySize > minPartySize {
            partySize--
            updateUI()
        }
    }
    
    @IBAction func partySizeIncrementButton(sender: AnyObject) {
        
        if partySize < maxPartySize {
            partySize++
            updateUI()
        }
    }
    
    func updateUI()
    {
        if let partySizeLabel = self.partySizeLabel {
            partySizeLabel.text = "\(partySize)"
        }
        
        if let partySizePeopleLabel = self.partySizePeopleLabel {
            partySizePeopleLabel.text = partySize > 1 ? "people" : "person"
        }
    }
}
