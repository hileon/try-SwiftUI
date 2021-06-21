//
//  NSC.swift
//  Test
//
//  Created by leon on 2021/6/11.
//

import Foundation
import Combine

extension Notification.Name{
    static var testMessage = Notification.Name("test")
}

struct Msg {
    let msg:String
    let author: String
}

class NSC:ObservableObject {
    @Published var message:String = "default msg"
    var center:NotificationCenter
    var subscription:Cancellable?
    
    init() {
        center = NotificationCenter.default
        let publisher = center.publisher(for: .testMessage, object: nil).map(\.object)
        subscription = publisher.sink { n in
            let m = (n as! Msg)
            print("sink a msg:")
            print(m.msg)
            self.message = m.msg
        }
    }
    
    func subMsg() -> Void {
        
    }
    
    func postTestMsg() -> Void {
        let m = Msg(msg: "test msg 123", author: "leon")
        center.post(name: .testMessage, object: m)
    }
}
