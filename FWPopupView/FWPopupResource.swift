//
//  FWPopupResource.swift
//  FWPopupView
//

import Foundation

func fwPopupResourceBundle() -> Bundle? {
#if SWIFT_PACKAGE
    let containerBundle = Bundle.module
#else
    let containerBundle = Bundle(for: FWPopupView.self)
#endif

    guard let url = containerBundle.url(forResource: "FWPopupView", withExtension: "bundle") else {
        return nil
    }
    return Bundle(url: url)
}
