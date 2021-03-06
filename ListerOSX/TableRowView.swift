/*
    Copyright (C) 2014 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    
                An NSTableRowView subclass that draws a specific background color. The table view creates these row views automatically because the NSTableViewRowViewKey key is set on one of the ListViewController object's rows in the storyboard.
            
*/

import Cocoa

class TableRowView: NSTableRowView {
    struct SharedColors {
        static let backgroundColor = NSColor(red: 0.76, green: 0.82, blue: 0.92, alpha: 1)
    }
    
    override func drawSelectionInRect(dirtyRect: NSRect) {
        super.drawSelectionInRect(dirtyRect)

        SharedColors.backgroundColor.set()

        NSRectFill(dirtyRect)
    }
}
