//
//  BookResultCell.swift
//  TextCycle
//
//  Created by Logan Girard on 5/6/15.
//  Copyright (c) 2015 Logan Girard. All rights reserved.
//

import Foundation
import UIKit
import ParseUI


class BookResultCell: PFTableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var isbnLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var rentButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("aDecoder not implemented")
    }
}