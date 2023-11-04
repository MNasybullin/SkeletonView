//
//  Copyright SkeletonView. All Rights Reserved.
//
//  Licensed under the MIT License (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://opensource.org/licenses/MIT
//
//  UIScrollView+Extensions.swift
//
//  Created by Mansur Nasybullin on 04.11.2023.

import UIKit

extension UIScrollView {
    var isOrthogonalScrollView: Bool {
        let isInCollectionView = superview as? UICollectionView != nil
        return isInCollectionView && subviews.contains { $0.isSkeletonable }
    }
    
    override public var isSkeletonable: Bool {
        get {
            super.isSkeletonable || isOrthogonalScrollView
        }
        set {
            super.isSkeletonable = newValue
        }
    }
}
