//
//  InterfaceController.swift
//  AW_LayoutDemo WatchKit Extension
//
//  Created by Georgij on 07.01.17.
//  Copyright © 2017 Georgii Emeljanow. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var collapsedCommentLbl: WKInterfaceLabel!
    @IBOutlet var expandedCommentLbl: WKInterfaceLabel!
    @IBOutlet var moreLbl: WKInterfaceLabel!
    
    var expanded = false
    
    @IBAction func onMoreButton() {
        
        expanded = !expanded
        
        collapsedCommentLbl.setHidden(expanded)
        expandedCommentLbl.setHidden(!expanded)
        
        moreLbl.setText(expanded ? "Скрыть" : "Показать")
    }
}
