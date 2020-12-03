//
//  PhotoDate.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/03.
//

import Foundation

var photoArray:[PhotoData] = makeData()

struct PhotoData: Identifiable {
    var id: Int
    var imageName: String
    var title: String
}

func makeData()->[PhotoData] {
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "acetylcholine-88522_960_720", title: "テストです"))
    dataArray.append(PhotoData(id: 2, imageName: "adpDSC_7748-750x500", title: "テストです"))
    dataArray.append(PhotoData(id: 3, imageName: "city-4298285_960_720", title: "テストです"))
    dataArray.append(PhotoData(id: 4, imageName: "dog-1127486_960_720", title: "テストです"))
    dataArray.append(PhotoData(id: 5, imageName: "revelation-2937691_960_720", title: "テストです"))
    dataArray.append(PhotoData(id: 6, imageName: "the-work-2172684_960_720", title: "テストです"))
    dataArray.append(PhotoData(id: 7, imageName: "YK0I9A6222_TP_V", title: "テストです"))
    
    return dataArray
}

