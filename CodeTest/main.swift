//
//  main.swift
//  CodeTest
//
//  Created by Yangzheng on 15/2/3.
//  Copyright (c) 2015年 Yangzheng. All rights reserved.
//

import Foundation

print("原地球纬度：29.575429778924")
print("原地球经度：114.21892734521 \n")

var marsCoords = CoordsTransform.transformGpsToMarsCoords(114.21892734521, wgLat: 29.575429778924)

print("火星纬度：\(marsCoords.mgLat)")
print("火星经度：\(marsCoords.mgLon) \n")

var gpsCoords = CoordsTransform.transformMarsToGpsCoords(marsCoords.mgLon, lat: marsCoords.mgLat)

print("从火星纬度转回的地球纬度：\(gpsCoords.gLat)")
print("从火星经度转回的地球经度：\(gpsCoords.gLng) \n")

var baiduCoords = CoordsTransform.transformMarsToBaiduCoords(marsCoords.mgLon, mLat: marsCoords.mgLat)

print("百度纬度：\(baiduCoords.bLat)")
print("百度经度：\(baiduCoords.bLng) \n")

var b2MarsCoords = CoordsTransform.transformBaiduToMarsCoords(baiduCoords.bLng, bLat: baiduCoords.bLat)

print("从百度转回的火星纬度：\(b2MarsCoords.mLat)")
print("从百度转回的火星经度：\(b2MarsCoords.mLng) \n")
