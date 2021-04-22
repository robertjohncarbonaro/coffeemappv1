// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    var meta: Meta?
    var notifications: [Notification]?
    var response: Response?
}

// MARK: - Meta
struct Meta: Codable {
    var code: Int?
    var requestID: String?

    enum CodingKeys: String, CodingKey {
        case code
        case requestID = "requestId"
    }
}

// MARK: - Notification
struct Notification: Codable {
    var type: String?
    var item: NotificationItem?
}

// MARK: - NotificationItem
struct NotificationItem: Codable {
    var unreadCount: Int?
}

// MARK: - Response
struct Response: Codable {
    var queryRefinements: QueryRefinements?
    var warning: Warning?
    var headerLocation, headerFullLocation, headerLocationGranularity, query: String?
    var totalResults: Int?
    var suggestedBounds: SuggestedBounds?
    var groups: [Group]?
}

// MARK: - Group
struct Group: Codable {
    var type, name: String?
    var items: [GroupItem]?
}

// MARK: - GroupItem
struct GroupItem: Codable {
    var reasons: Reasons?
    var snippets: Snippets?
    var venue: Venue?
    var photo: ItemPhoto?
    var tips: [Tip]?
    var referralID: String?

    enum CodingKeys: String, CodingKey {
        case reasons, snippets, venue, photo, tips
        case referralID = "referralId"
    }
}

// MARK: - ItemPhoto
struct ItemPhoto: Codable {
    var id: String?
    var createdAt: Int?
    var photoPrefix: String?
    var suffix: String?
    var width, height: Int?
    var visibility: String?

    enum CodingKeys: String, CodingKey {
        case id, createdAt
        case photoPrefix = "prefix"
        case suffix, width, height, visibility
    }
}

// MARK: - Reasons
struct Reasons: Codable {
    var count: Int?
    var items: [ReasonsItem]?
}

// MARK: - ReasonsItem
struct ReasonsItem: Codable {
    var summary, pluralSummary, type, reasonName: String?
}

// MARK: - Snippets
struct Snippets: Codable {
    var count: Int?
    var items: [SnippetsItem]?
}

// MARK: - SnippetsItem
struct SnippetsItem: Codable {
    var detail: Detail?
}

// MARK: - Detail
struct Detail: Codable {
    var type: String?
    var object: Tip?
}

// MARK: - Tip
struct Tip: Codable {
    var id: String?
    var createdAt: Int?
    var text, type: String?
    var canonicalURL: String?
    var canonicalPath: String?
    var likes: HereNow?
    var logView: Bool?
    var agreeCount, disagreeCount: Int?
    var user: User?
    var urlSig: String?

    enum CodingKeys: String, CodingKey {
        case id, createdAt, text, type
        case canonicalURL = "canonicalUrl"
        case canonicalPath, likes, logView, agreeCount, disagreeCount, user, urlSig
    }
}

// MARK: - HereNow
struct HereNow: Codable {
    var count: Int?
    var groups: [JSONAny]?
    var summary: String?
}

// MARK: - User
struct User: Codable {
    var id, firstName, lastName, gender: String?
    var countryCode: String?
    var canonicalURL: String?
    var canonicalPath: String?
    var photo: UserPhoto?
    var isAnonymous: Bool?

    enum CodingKeys: String, CodingKey {
        case id, firstName, lastName, gender, countryCode
        case canonicalURL = "canonicalUrl"
        case canonicalPath, photo, isAnonymous
    }
}

// MARK: - UserPhoto
struct UserPhoto: Codable {
    var photoPrefix: String?
    var suffix: String?

    enum CodingKeys: String, CodingKey {
        case photoPrefix = "prefix"
        case suffix
    }
}

// MARK: - Venue
struct Venue: Codable {
    var id, name: String?
    var location: Location?
    var canonicalURL: String?
    var canonicalPath: String?
    var categories: [Category]?
    var verified: Bool?
    var stats: Stats?
    var price: Price?
    var hasMenu: Bool?
    var menu: Menu?
    var allowMenuURLEdit: Bool?
    var beenHere: BeenHere?
    var photos: Photos?
    var hereNow: HereNow?
    var popularityByGeo, rating: Double?
    var ratingColor: String?
    var ratingSignals: Int?

    enum CodingKeys: String, CodingKey, CaseIterable {
        case id, name, location
        case canonicalURL = "canonicalUrl"
        case canonicalPath, categories, verified, stats, price, hasMenu, menu
        case allowMenuURLEdit = "allowMenuUrlEdit"
        case beenHere, photos, hereNow, popularityByGeo, rating, ratingColor, ratingSignals
    }
}

// MARK: - BeenHere
struct BeenHere: Codable {
    var count: Int?
    var marked: Bool?
    var lastCheckinExpiredAt: Int?
}

// MARK: - Category
struct Category: Codable {
    var id, name, pluralName, shortName: String?
    var icon: Icon?
    var primary: Bool?
}

// MARK: - Icon
struct Icon: Codable {
    var iconPrefix, mapPrefix: String?
    var suffix: String?

    enum CodingKeys: String, CodingKey {
        case iconPrefix = "prefix"
        case mapPrefix, suffix
    }
}

// MARK: - Location
struct Location: Codable {
    var address: String?
    var lat, lng: Double?
    var labeledLatLngs: [LabeledLatLng]?
    var distance: Int?
    var postalCode, cc, neighborhood, city: String?
    var state, country, contextLine: String?
    var contextGeoID: Int?
    var formattedAddress: [String]?
    var crossStreet: String?

    enum CodingKeys: String, CodingKey {
        case address, lat, lng, labeledLatLngs, distance, postalCode, cc, neighborhood, city, state, country, contextLine
        case contextGeoID = "contextGeoId"
        case formattedAddress, crossStreet
    }
}

// MARK: - LabeledLatLng
struct LabeledLatLng: Codable {
    var label: String?
    var lat, lng: Double?
}

// MARK: - Menu
struct Menu: Codable {
    var type, label, anchor: String?
    var url, mobileURL: String?
    var canonicalPath: String?

    enum CodingKeys: String, CodingKey {
        case type, label, anchor, url
        case mobileURL = "mobileUrl"
        case canonicalPath
    }
}

// MARK: - Photos
struct Photos: Codable {
    var count: Int?
    var groups: [JSONAny]?
}

// MARK: - Price
struct Price: Codable {
    var tier: Int?
    var message, currency: String?
}

// MARK: - Stats
struct Stats: Codable {
    var tipCount, usersCount, checkinsCount: Int?
}

// MARK: - QueryRefinements
struct QueryRefinements: Codable {
    var target: Target?
    var refinements: [Refinement]?
}

// MARK: - Refinement
struct Refinement: Codable {
    var query: String?
}

// MARK: - Target
struct Target: Codable {
    var type, url: String?
    var params: Params?
}

// MARK: - Params
struct Params: Codable {
    var ll, radius, sortByDistance: String?
}

// MARK: - SuggestedBounds
struct SuggestedBounds: Codable {
    var ne, sw: Ne?
}

// MARK: - Ne
struct Ne: Codable {
    var lat, lng: Double?
}

// MARK: - Warning
struct Warning: Codable {
    var text: String?
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}


//
//  ViewController.swift
//  CoffeeMappV1
//
//  Created by Robert Carbonaro on 21/04/2021.
//

import UIKit
import MapKit
import CoreData

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var tableView: UITableView?
    
    var locationManager: CLLocationManager?
    let distanceSpan:Double = 500 // visible CoffeeMapp span
    
    var mywelcome = Welcome()
    
    // MARK: - Please enter Foursquare credentials here
    let  clientID = ""
    let  clientSecret = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //force user map to light mode
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
            
            // Initiate location manager
            
            locationManager?.delegate = self
            
            
            if locationManager == nil {
                locationManager = CLLocationManager()
                
                locationManager!.delegate = self
                locationManager!.desiredAccuracy = kCLLocationAccuracyBest
                locationManager!.requestAlwaysAuthorization()
                locationManager!.requestWhenInUseAuthorization()
                locationManager!.distanceFilter = 0
                locationManager!.startUpdatingLocation()
                mapView.showsUserLocation = true
            }
            
            // Inititianlising API syting
            let myLAt = String((locationManager?.location?.coordinate.latitude)!)
            
            let myLng = String((locationManager?.location?.coordinate.longitude)!)
            
            let radius = 1000
            
            let limit = 10
            
            let urlString = "https://api.foursquare.com/v2/venues/explore?client_id=\(clientID)&client_secret=\(clientSecret)&ll=\(myLAt),\(myLng)&radius=\(radius)&section=coffee&time=any&v=20210409&m=foursquare&limit=\(limit)&sortByDistance=1&offset=0"
            
            let url = URL(string: urlString)!

            //PARSE JSON
            
            URLSession.shared.dataTask(with: url) { [self] data, _, _ in
                
                if let data = data {
                    
                    if let jsonwelcome = try? JSONDecoder().decode(Welcome.self, from: data) {
                        
                         mywelcome = jsonwelcome
                        
                        let myint: Int = (mywelcome.response?.groups?.first?.items?.count)!

                        for i in 0...myint-1
                        {
                            
                            let myName = mywelcome.response?.groups?.first?.items![i].venue?.name ?? ""

                            let myLat = mywelcome.response?.groups?.first?.items?[i].venue?.location?.lat

                            let myLng = mywelcome.response?.groups?.first?.items?[i].venue?.location?.lng

                            let myinfo = mywelcome.response?.groups?.first?.items?[i].venue?.location?.formattedAddress?.joined(separator: "\n")

                            let coffeeMappObject = CoffeeMappObject(title: myName, coordinate: CLLocationCoordinate2D(latitude: myLat!, longitude: myLng!), info: myinfo! )

                            mapView.addAnnotation(coffeeMappObject)
                            
                        }
                        
                    } else {print("error") }
                }


            }.resume()
            
        }
        
    }
    
    // CUSTOM ANNOTATION VIEW
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is CoffeeMappObject else {return nil}
        
        let identifier = "CoffeeMappObject"
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
            let btn = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = btn
            annotationView?.image = UIImage(named: "coffee-shop-2.png")
            
        } else {
            annotationView?.annotation = annotation
        }
        tableView?.reloadData()
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let coffeemappobject = view.annotation as? CoffeeMappObject else {return}
        
        let placeName = coffeemappobject.title
        let placeInfo = coffeemappobject.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
        
        ac.accessibilityLabel = "AnnotationViewLabel"
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.first!
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distanceSpan, longitudinalMeters: distanceSpan)
        print(location.coordinate.latitude)
        print(location.coordinate.longitude)
        mapView.setRegion(coordinateRegion, animated: true)
        locationManager?.stopUpdatingLocation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let tableView = self.tableView
        {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView?.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mywelcome.response?.groups?.first?.items?.count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier");
                
            if cell == nil
            {
                cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cellIdentifier")
            }
                
        if let venue = mywelcome.response?.groups?.first?.items?[indexPath.row].venue
            {
                cell!.textLabel?.text = venue.name
                cell!.detailTextLabel?.text = venue.location?.formattedAddress?.joined()
            }
                
            return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let venue = mywelcome.response?.groups?.first?.items?[indexPath.row].venue
        {
            
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: Double((venue.location?.lat)!), longitude: Double((venue.location?.lng!)!)), latitudinalMeters: distanceSpan, longitudinalMeters: distanceSpan)
                mapView?.setRegion(region, animated: true)
            
            
            let annotations = mapView.annotations.filter({ !($0 is MKUserLocation) })
            for _annotation in annotations {
                if _annotation.title == venue.name
                {
                    self.mapView.selectAnnotation(_annotation, animated: true)
                }
            }
    
}
    
    
    
   

}

}
