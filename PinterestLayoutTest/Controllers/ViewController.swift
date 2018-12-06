//
//  ViewController.swift
//  PinterestLayoutTest
//
//  Created by Melanie on 10/24/18.
//

import UIKit
import SDWebImage
import SkeletonView


class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var urls = ["https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg","https://yuklife.com.mx/wp-content/uploads/2018/09/HEINKEN-1.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg","https://www.expoknews.com/wp-content/uploads/2017/09/corona-cerveza-mexicana.jpg"]
    var heights: [CGFloat] = []
    var images: [UIImage] = []
    var products: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for url in urls {
//            let url = URL(string: url)
//            let data = try? Data(contentsOf: url!)
//            images.append(UIImage(data: data!)!)
//        }
        for i in 0..<urls.count {
            heights.append(CGFloat.random(in: 130.5...300.0))
            products.append("producto \(i)" )
        }
        
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        print(heights.count)
        print(urls.count)
//        collectionView.scrollToItem(at: IndexPath(row: 8, section: 0), at: UICollectionView.ScrollPosition.top, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        collectionView.scrollToItem(at: IndexPath(row: 1, section: 0), at: UICollectionView.ScrollPosition.top, animated: false)
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urls.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.imagen.sd_setImage(with: URL(string: urls[indexPath.row]), placeholderImage: UIImage(named: "imagen"), options: [.continueInBackground, .progressiveDownload], completed: nil)
        cell.layer.cornerRadius = 5
        cell.descuentoView.layer.cornerRadius = 4
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1)
        cell.layer.shadowOpacity = 1
        cell.layer.shadowRadius = 1.0
        cell.clipsToBounds = false
        cell.layer.masksToBounds = false
        cell.nameProductLabel.text = products[indexPath.row]
        return cell
    }
}

extension ViewController: PinterestLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return heights[indexPath.row]
    }
    
    
}
