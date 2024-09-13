//
//  AppIconManager.swift
//  RichOrPoor
//
//  Created by murad on 13.09.2024.
//

import UIKit

enum AppIcon: String {
    case richIcon = "RichIcon"
    case poorIcon = "PoorIcon"
}

class AppIconManager {
    static let shared = AppIconManager()

    private init() {}

    func changeAppIcon(to iconName: AppIcon) {
        guard UIApplication.shared.supportsAlternateIcons else {
            print("Alternate icons are not supported")
            return
        }

        UIApplication.shared.setAlternateIconName(iconName.rawValue) { error in
            if let error = error {
                print("Error setting alternate icon: \(error.localizedDescription)")
            } else {
                print("App icon changed successfully")
            }
        }
    }
}
