//
//  BookResultCell.swift
//  TextCycle
//
//  Created by Logan Girard on 5/6/15.
//  Copyright (c) 2015 Logan Girard. All rights reserved.
//

import Foundation
import UIKit


class BookResultCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var isbnLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var rentButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!
}