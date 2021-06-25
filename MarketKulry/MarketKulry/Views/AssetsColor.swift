//
//  AssetsColor.swift
//  MarketKulry
//
//  Created by 신민희 on 2021/06/25.
//


import UIKit

enum AssetsColor {
    case mainColor
    case redColor
}

extension UIColor {
    static func appColor(_ name: AssetsColor) -> UIColor {
        switch name {
        case .mainColor:
            return #colorLiteral(red: 0.3725490196, green: 0.09411764706, blue: 0.5019607843, alpha: 1)
        case .redColor:
            return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
}
