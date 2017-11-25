//
//  SampleData.swift
//  Ai11
//
//  Created by 학철 on 2017. 11. 22..
//  Copyright © 2017년 학철. All rights reserved.
//

import Foundation

struct Sample {
    let title: String
    let description: String
    let image: String
}

struct SampleData {
    let samples = [
        Sample(title: "Photo Object Detection", description: "불러온 이미지 사물 인식", image: "ic_photo"),
        Sample(title: "Real Time Object Detection", description: "실시간 카메라에 보이는 사물 인식", image: "ic_camera"),
        Sample(title: "Facial Analysis", description: "사람의 얼굴로부터 나이, 성별, 감정, 추측", image: "ic_emotion")
    ]
}
