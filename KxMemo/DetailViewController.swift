//
//  DetailViewController.swift
//  KxMemo
//
//  Created by choi on 12/05/2019.
//  Copyright © 2019 choi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        f.locale = Locale(identifier: "Ko_kr")
        return f
    }()
    
    var diary: Diary?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "diaryTitleCell" , for: indexPath)
            cell.textLabel?.text = diary?.title
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "diaryContentCell" , for: indexPath)
            cell.textLabel?.text = diary?.content
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "diaryDateCell" , for: indexPath)
            cell.textLabel?.text = formatter.string(for: diary?.insertDate)
            return cell
        default:
            fatalError()
        }
    }
    
    
}
