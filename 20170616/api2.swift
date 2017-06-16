//
//  api2.swift
//  20170616
//
//  Created by iii-user on 2017/6/16.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

class Brad01{
    var x = 10 //物件屬性
}
class Brad02 {
    static var x1 = 12 // 類別的屬性
    static var x2:Int?
    static var x3:Int{
        return x1 * 100
    }// static變數只能與static變數一起使用
    var x4 = 123
    var x1 = 321
    init() {
        print(x4)
//        print(x1)//無法被使用因為是static
        print(Brad02.x1)
        print(x1)
    }
}

class Brad03{
    var x = 100
    static var y = 200
    func f1(){
        Brad03.f2()
        x += 1
        print("Brad03:f1()")
    }
    static func f1(){
        print("Brad03:static:f1()")
    }
    class func f3(){
        
    }
    static func f2(){
        y += 1
        f1()
    }
}
class Bike {
    static var counter = 0
    var counter = 0
    init(){
        Bike.counter += 1
        counter += 1
        print("Create a new Bike!")
        print(Bike.counter)
    }
    
}

//---------------
class Super1{
    init(){print("Super:init()")}
}
class Sub11 : Super1 { // 繼承
    //沒有定義任何init,呼叫Super1.init
}
class Sub12 : Super1 {
    override init(){
        print("Sub12:init()")
    }
}
class Sub13: Super1 {
    init(_ : Int){
        
    }
}
//----------------

class Super2 {
    init(){print("Super2:init()")}
    init(_ : Int){
        print("Super2:init(Int)")
    }
    init(_ : Double){
        print("Super2:init(Double)")
    }
}

    class Sub21 : Super2 {
        
}

class Sub22 : Super2{
    override init(){
    print("Sub22:init()")
        // 路徑過多無法判斷
        super.init()
    }
    override init(_ : Int){
        super.init()
//        print("Sub22:init()")
    }
    init(_ : String){
        super.init()
    }
}
// -----------------
class Super3 {
    init(){
        print("Super3:init()")
    }
}
class Sub31 : Super3 {
    override init(){
        print("doSomething")
    }
    convenience init(_ :Int){
        print("Sub31:init(Int)")
         self.init()
    }
}
//----------------------
class TWId {
    var id:String
    convenience init(){
        self.init(false)
    }
    convenience init(_ gender:Bool){
        self.init(gender, 1)
    }
    convenience init(_ area : Int){
        self.init(true, area)
    }
    init(_ gender:Bool, _ area : Int){
        print("main logic")
        self.id = "A123456789"
    }
    init?(_ id: String){
        var a = Int(arc4random_uniform(2))
        if a == 0{
            return nil
        }else{
            self.id = id
        }
        
    }
}
//------------
class Super4{
    init(){print("Super4:init()")}
    required init(x:Int){
    print("Super4:init(Int)")
    }
}
class Sub41:Super4 {
    init(x :Double){
        super.init()
    }
    required init(x:Int){
       super.init(x: 1)
    }
}
class Sub42 :Super4{
}
class Sub421 :Sub42{
    override init(){
        super.init()
    }
    required init(x:Int){
        super.init(x: 1)
    }
}
