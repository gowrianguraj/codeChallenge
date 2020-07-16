/*:
 ## Refactor Challenge
 - You are provided with a `ViewController`. The Code requires a refactor since it has been done with a bunch of bad practices.
 */

import UIKit
import PlaygroundSupport

class Controller: UITableViewController {

   private let arrayData = ["Hello","World", "I am","A Table View"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }

}

extension Controller {
        
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }

   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayData[indexPath.row]
        return cell
    }
}
PlaygroundPage.current.liveView = Controller()
