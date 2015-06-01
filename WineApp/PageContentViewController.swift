//
//  PageContentViewController.swift
//  WineApp
//
//  Created by Justin Steffen on 5/31/15.
//  Copyright (c) 2015 jsteffen. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    var pageDescription:String?
    var pageImage:UIImage?
    var pageIndex:Int = 0
    var pageTitle:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        updateUI()
    }
    
    func updateUI() {
        if let descriptionLabel = self.descriptionLabel {
            descriptionLabel.text = pageDescription
        }
        
        if let imageView = self.imageView {
            imageView.image = pageImage
        }
        
        if let titleLabel = self.titleLabel {
            titleLabel.text = pageTitle
        }
    }

}
