//
//  ObjectDetectionViewController.swift
//  Ai11
//
//  Created by 학철 on 2017. 11. 23..
//  Copyright © 2017년 학철. All rights reserved.
//

import UIKit

class ObjectDetectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addBarBtnAction(_ sender: UIBarButtonItem) {
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
    
        let actionAlbum = UIAlertAction(title: "앨범에서 가져오기", style: .default) { _ in
            
        }
        let actionCamera = UIAlertAction(title: "카메라 찍기", style: .default) {  _ in
            
        }
        let actionCancel = UIAlertAction(title: "취소", style: .cancel)
        
        actionSheet.addAction(actionAlbum)
        actionSheet.addAction(actionCamera)
        actionSheet.addAction(actionCancel)
        self.present(actionSheet, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
