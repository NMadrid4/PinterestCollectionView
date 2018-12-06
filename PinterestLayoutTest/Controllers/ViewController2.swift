//
//  ViewController2.swift
//  PinterestLayoutTest
//
//  Created by Melanie on 10/24/18.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var tabla: UITableView!
    var urls = ["https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg"]
    var images: [UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for url in urls {
            let url = URL(string: url)
            let data = try? Data(contentsOf: url!)
            images.append(UIImage(data: data!)!)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
