//
//  BookSearchResultTable.swift
//  TextCycle
//
//  Created by Logan Girard on 4/28/15.
//  Copyright (c) 2015 Logan Girard. All rights reserved.
//

import Foundation
import Parse
import ParseUI

class BookSearchResultTable: PFQueryTableViewController{

    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        
    }
    
    override init!(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
    }
}
