//
//  MapViewController.swift
//  Demo app
//
//  Created by Jay Shah on 09/03/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var mapView: MKMapView!
    //MARK: - Variables
    var data = ["Select City","Gandhinagar","Surat","Mumbai","Delhi"]
    var annotation = MKPointAnnotation()
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        // Do any additional setup after loading the view.
    }

}
//MARK: - UIPickerViewDelegate
extension MapViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 1: redirectToLocation(row: row, latitude: 23.2156, longitude: 72.6369)
        case 4: redirectToLocation(row: row, latitude: 28.7041, longitude: 77.1025)
        case 3: redirectToLocation(row: row, latitude: 19.0760, longitude: 72.8777)
        case 2: redirectToLocation(row: row, latitude: 21.1702, longitude: 72.8311)
        default: redirectToLocation(row: row, latitude: 23.2156, longitude: 72.6369)
        }
    }
}
//MARK: - UIPickerViewDataSource
extension MapViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}
//MARK: - RedirecttoMap
extension MapViewController{
    func redirectToLocation(row: Int,latitude: Double,longitude: Double){
        mapView.removeAnnotation(annotation)
        let location = CLLocationCoordinate2D(latitude: latitude,
            longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
        
    }
}
