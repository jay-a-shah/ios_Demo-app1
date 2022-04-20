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
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
}

//MARK: - UIPickerViewDelegate
extension MapViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
            case Constants.ONE: redirectToLocation(row: row, latitude: Constants.gandinagarLatitude, longitude: Constants.gandinagarLongitude)
            case Constants.FOUR: redirectToLocation(row: row, latitude: Constants.suratLatitude, longitude: Constants.suratLongitude)
            case Constants.THREE: redirectToLocation(row: row, latitude: Constants.mumbaiLatitude, longitude: Constants.mumbaiLongitude)
            case Constants.TWO: redirectToLocation(row: row, latitude: Constants.delhiLatitude, longitude: Constants.delhiLongitude)
            default: redirectToLocation(row: row, latitude: Constants.gandinagarLatitude, longitude: Constants.gandinagarLongitude)
        }
    }
}

//MARK: - UIPickerViewDataSource
extension MapViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return Constants.ONE
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

//MARK: - RedirecttoMap
extension MapViewController{
    func redirectToLocation(row: Int,latitude: Double,longitude: Double){
        mapView.removeAnnotation(annotation)
        let location = CLLocationCoordinate2D(latitude: latitude,longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: CLLocationDegrees(Constants.ONE), longitudeDelta: CLLocationDegrees(Constants.ONE))
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
    }
}
