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

    var isbn: String = ""
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init!(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
    }
    
    init!(style: UITableViewStyle, className: String!, isbnValue: String!) {
        super.init(style: style, className: className)
        self.isbn = isbnValue
    }
    
    
    
    override func queryForTable() -> PFQuery! {
        var query = PFQuery(className: "Books")
        query.whereKey("isbn", equalTo: self.isbn)
        return query 
    }
    
}
