//
//  Timer.swift
//  AKOtpView
//
//  Created by ِAdham Alkhateeb on 8/13/18.
//  Copyright © 2018 Klindayzer. All rights reserved.
//

import Foundation

extension Timer {
    
    // This methods is created to support iOS 9 closure timer
    @discardableResult
    open class func timer(withTimeInterval interval: TimeInterval, repeats: Bool, block: @escaping () -> Void) -> Timer {
        let actor = TimerActor(block: block)
        return self.scheduledTimer(timeInterval: interval, target: actor, selector: #selector(TimerActor.fire), userInfo: nil, repeats: repeats)
    }
}

private class TimerActor {
    
    var block: () -> Void
    
    init(block: @escaping () -> Void) {
        self.block = block
    }
    
    @objc dynamic func fire() {
        block()
    }
}
