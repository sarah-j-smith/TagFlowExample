//
//  FlowLayout.swift
//  TagFlow
//
//  Created by Sarah Smith on 9/Jan/18.
//  Copyright © 2018 Sarah Smith. All rights reserved.
//

import Foundation
import UIKit

class FlowLayout: UICollectionViewFlowLayout
{    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?
    {
        let attributesForElementsInRect = super.layoutAttributesForElements(in: rect) ?? []
        var newAttributesForElementsInRect = [ UICollectionViewLayoutAttributes ]()
        var leftMargin: CGFloat = 0.0
        for attrs in attributesForElementsInRect
        {
            if attrs.frame.origin.x == sectionInset.left
            {
                leftMargin = sectionInset.left
            }
            else
            {
                var newLeftAlignedFrame = attrs.frame
                newLeftAlignedFrame.origin.x = leftMargin
                attrs.frame = newLeftAlignedFrame
            }
            leftMargin += attrs.frame.size.width + 8
            newAttributesForElementsInRect.append(attrs)
        }
        return newAttributesForElementsInRect
    }
    
}
