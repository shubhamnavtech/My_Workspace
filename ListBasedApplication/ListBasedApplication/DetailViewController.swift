//
//  DetailViewController.swift
//  ListBasedApplication
//
//  Created by Navaratan Technologies on 11/04/16.
//  Copyright © 2016 Navaratan Technologies. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var addedOnLabel: UILabel!

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.addedOnLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

