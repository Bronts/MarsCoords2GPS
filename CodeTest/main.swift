//
//  main.swift
//  CodeTest
//
//  Created by Yangzheng on 15/2/3.
//  Copyright (c) 2015年 Yangzheng. All rights reserved.
//

import Foundation

println("原地球纬度：29.575429778924")
println("原地球经度：114.21892734521 \n")

var marsCoords = CoordsTransform.transformGpsToMarsCoords(114.21892734521, wgLat: 29.575429778924)

println("火星纬度：\(marsCoords.mgLat)")
println("火星经度：\(marsCoords.mgLon) \n")

var gpsCoords = CoordsTransform.transformMarsToGpsCoords(marsCoords.mgLon, lat: marsCoords.mgLat)

println("地球纬度：\(gpsCoords.gLat)")
println("地球经度：\(gpsCoords.gLng) \n")

var baiduCoords = CoordsTransform.transformMarsToBaiduCoords(marsCoords.mgLon, mLat: marsCoords.mgLat)

println("百度纬度：\(baiduCoords.bLat)")
println("百度经度：\(baiduCoords.bLng) \n")

var b2MarsCoords = CoordsTransform.transformBaiduToMarsCoords(baiduCoords.bLng, bLat: baiduCoords.bLat)

println("从百度转回的火星纬度：\(b2MarsCoords.mLat)")
println("从百度转回的火星经度：\(b2MarsCoords.mLng) \n")