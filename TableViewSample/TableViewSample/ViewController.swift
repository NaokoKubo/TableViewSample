//
//  ViewController.swift
//  TableViewSample
//
//  Created by naoko kubo on 2017/12/05.
//  Copyright © 2017年 Interrupt LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    let icons = ["monster01","monster02","monster03","monster04","monster05",
                 "monster06","monster07","monster08","monster09","monster10",
                 "monster01","monster02"]
    
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.register(UINib(nibName: "SampleCell2", bundle: nil), forCellReuseIdentifier: "SampleCell2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell1") as! SampleCell1
            cell.sampleImageView?.image = UIImage(named: icons[indexPath.row])
            cell.sampleLabel.text = "\(indexPath.row+1)行目のセルです"
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell2") as! SampleCell2
        cell.sampleImageView1?.image = UIImage(named: icons[indexPath.row + 3])
        cell.sampleImageView2?.image = UIImage(named: icons[indexPath.row + 4])
        cell.sampleImageView3?.image = UIImage(named: icons[indexPath.row + 5])

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }


}

