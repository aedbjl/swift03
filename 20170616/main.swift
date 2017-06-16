//
//  main.swift
//  20170616
//
//  Created by iii-user on 2017/6/16.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

var obj1 = Brad01()
print(obj1.x)

print(Brad02.x1)

var obj2 = Brad02()
//
Brad03.f2()
var b1 = Bike()
var b2 = Bike()
var b3 = Bike()
var b4 = Bike()
var b5 = Bike()
print(b1.counter)
print("----------")
var obj3 = Super1()
var obj4 = Sub11()
var obj5 = Sub12()
var obj6 = Sub13(3)
print("-------")
var obj7 = Sub21()
var obj8 = Sub22(3)
print("-------")
var obj9 = Sub31(3)

var obj10 = TWId("A123456789")
if obj10 == nil{
    print("xx")
}else{
    print("OK")
}
print("-------")
var obj11 = Sub41(x:1)
var obj12 = Sub42()
var obj13 = Sub42(x:1)
