//
//  api.swift
//  20170616
//
//  Created by iii-user on 2017/6/16.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

class MyClass01{}
class MyClass02{
    var x:Int
    init(x:Int){self.x = x}
}
class MyClass03 {
    var x = 123
    init(){}
    
}
class MyClass04{
    var x:Int?
}
//---------------
class MyClass05 {
    var x : Int{
        get{
            return 1
        }
        //set 可以省略 當只有get時可以省略get但須有return
        set{
            //newValue 除非有括號指定
        }
    }
}
class MyClass06 {
    var y = 123
    var x:Int{
        return y * y
    }
}
//---------------
class MyClass07{
    var x = 0 {
        willSet{
         //newvalue
        }
        didSet{
            
        }
    }
}
