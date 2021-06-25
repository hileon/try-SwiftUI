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
    @Published var currentMessage:String = "default msg"
    var center:NotificationCenter
//    var publisher: Publisher //#TBD 怎么把publisher保存成class的属性
    var subscription:Cancellable?
    
    init() {
        center = NotificationCenter.default
        let publisher = center.publisher(for: .testMessage, object: nil).map(\.object)
        subscription = publisher.sink { n in
//            print(n ?? "this is no message data")
            if let m = (n as! Msg?) {
                print("sink a msg:")
                print(m.msg)
                self.currentMessage = m.msg
            }
        }
    }
    
    func subMsg() -> Void {
        
    }
    
    func postTestMsg(message:String) -> Void {
        let m = Msg(msg: message, author: "leon")
        center.post(name: .testMessage, object: m)
    }
}
