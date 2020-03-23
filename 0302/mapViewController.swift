//
//  mapViewController.swift
//  0302
//
//  Created by H.W. Hsiao on 2020/3/14.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit
import MapKit

class mapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map()
    }
    
    func map() {
        //藉由座標顯示地圖
        let coordinate = CLLocationCoordinate2D(
            latitude: 38.883123, longitude: -77.016279)
        //let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        //let region = MKCoordinateRegion(center: coordinate, span: span)
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
        mapView.setRegion(region, animated: true)
        
        //加上標記
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "NASA"
        mapView.addAnnotation(annotation)
    }
  

}
