//
//  CoffeeMappObject.swift
//  CoffeeMappV1
//
//  Created by Robert Carbonaro on 21/04/2021.
//
import MapKit
import UIKit

class CoffeeMappObject: NSObject, MKAnnotation {
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init (title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }

}
