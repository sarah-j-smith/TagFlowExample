//
//  TagCell.swift
//  TagFlow
//
//  Created by Sarah Smith on 9/Jan/18.
//  Copyright © 2018 Sarah Smith. All rights reserved.
//

import Foundation
import UIKit

class TagCell: UICollectionViewCell
{
    @IBOutlet weak var tagLabel: UILabel!
    
    @IBOutlet weak var maxWidthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib()
    {
        tagLabel.textColor = #colorLiteral(red: 0.3520024419, green: 0.3505193889, blue: 0.3535504043, alpha: 1)
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0, green: 0.6673814654, blue: 0.6737297773, alpha: 1)
        layer.borderWidth = 2
        
        maxWidthConstraint.constant = UIScreen.main.bounds.width - 8 * 2 - 8 * 2
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        layer.cornerRadius = frame.height * 0.5
    }
    
}
