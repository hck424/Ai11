//
//  MainFeatureController.swift
//  Ai11
//
//  Created by 학철 on 2017. 11. 21..
//  Copyright © 2017년 학철. All rights reserved.
//

import UIKit

class MainFeatureController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let cellidentifier : String = "MainFeatureCell"
    let sampleData = SampleData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView(frame: .zero);
        self.tableView.estimatedRowHeight = 70;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    //MARK:: UITableViewDataSource, UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sampleData.samples.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! MainFeatureCell
        
        let sample = self.sampleData.samples[indexPath.row]
        cell.lbTitle?.text = sample.title
        cell.lbSubTitle?.text = sample.description
        cell.ivIcon?.image = UIImage(named: sample.image)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) 열 선택")
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "PhotoObjectDetection", sender: nil)
        case 1:
            self.performSegue(withIdentifier: "RealObjectDetection", sender: nil)
        case 2:
            self.performSegue(withIdentifier: "FeatureObjectDetection", sender: nil)
        default:
            return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
