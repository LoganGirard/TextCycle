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
    
    override init(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
    }
    
    init!(style: UITableViewStyle, className: String!, isbnValue: String!) {
        super.init(style: style, className: className)
        pullToRefreshEnabled = true
        self.isbn = isbnValue
        tableView.reloadData()
        //tableView.rowHeight = 100.0
    }
    
    
    
    override func queryForTable() -> PFQuery {
        var query = PFQuery(className: "Books")
        query.whereKey("isbn", equalTo: self.isbn)
        return query 
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath, object: PFObject?) -> PFTableViewCell {
        
        let cellIdentifier = "Cell"
        
        var cell:BookResultCell? = (tableView.dequeueReusableCellWithIdentifier("bookResultCellID") as? BookResultCell?)!
        
        
        if(cell == nil) {
            cell = BookResultCell(frame: CGRect(x: 50, y: 50, width: 50, height: 50), reuseIdentifier: "bookResultCellID")
            
            //create blank image context and extract transparent image from it
            //this keeps our image from not intially appearing in the cell
            
            /**** Uncomment AFTER XIB TESTED
            
            UIGraphicsBeginImageContextWithOptions(CGSizeMake(50, 50), false, 0.0)
            cell?.imageView?.image = UIGraphicsGetImageFromCurrentImageContext()
            
            UIGraphicsEndImageContext()

            ****/
        }
        
        if let pfObject = object {
            
            cell?.isbnLabel?.text = pfObject["isbn"] as? String
            
//            pfObject["photo"]?.getDataInBackgroundWithBlock({ (data , error) -> Void in
//                
//                if(error == nil) {
//                    cell?.imageView?.image = UIImage(data: data!)
//                    
//                }
//                
//             })
        }
    
        return cell!
    }
}
