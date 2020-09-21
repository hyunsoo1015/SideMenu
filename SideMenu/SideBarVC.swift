//
//  SideBarVC.swift
//  SideMenu
//
//  Created by 김현수 on 2020/09/18.
//  Copyright © 2020 Hyun Soo Kim. All rights reserved.
//

import UIKit

class SideBarVC: UITableViewController {
    
    let titles = ["새글 작성", "친구 글", "달력", "공지사항", "통계", "계정"]
    
    let icons = [UIImage(named: "icon01.png"),
                 UIImage(named: "icon02.png"),
                 UIImage(named: "icon03.png"),
                 UIImage(named: "icon04.png"),
                 UIImage(named: "icon05.png"),
                 UIImage(named: "icon06.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        cell!.imageView?.image = icons[indexPath.row]
        cell!.textLabel?.text = titles[indexPath.row]
        
        return cell!
    }
    
    //셀을 선택했을 때 호출되는 메소드
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let writeVC = self.storyboard?.instantiateViewController(identifier: "WriteVC")
            let target = self.revealViewController()?.frontViewController as! UINavigationController
            target.pushViewController(writeVC!, animated: true)
            self.revealViewController()?.revealToggle(self)
        }
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
