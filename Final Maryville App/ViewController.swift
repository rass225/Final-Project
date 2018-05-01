//
//  ViewController.swift
//  Final Maryville App
//
//  Created by Rasmus Tauts on 23/04/2018.
//  Copyright © 2018 Rasmus Tauts. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var Map: MKMapView!

// The person location code.
    
// It doesn't show my current location because it is not possible to show it unless I am using this app on actual phone.
    
/*    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.2, 0.2)
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        Map.setRegion(region, animated: true)
        
        self.Map.showsUserLocation = true
    }
 */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Inital location on the map.
        let location = CLLocationCoordinate2DMake(38.6478834, -90.5051848)
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: location, span: span)
        Map.setRegion(region, animated: true)

        
// Annotations are down below.

        ////////////////////////
        let DUCLocation = CLLocationCoordinate2DMake(38.644463, -90.504914)
        let DUC = MKPointAnnotation()
        DUC.coordinate = DUCLocation
        DUC.title = "DUC"
        ////////////////////////
        
        ////////////////////////
        let SimonLocation = CLLocationCoordinate2DMake(38.643799, -90.504009)
        let Simon = MKPointAnnotation()
        Simon.coordinate = SimonLocation
        Simon.title = "Simon Athletic Center"
        //////////////////////////
        let MoutonLocation = CLLocationCoordinate2DMake(38.644225, -90.503263)
        let Mouton = MKPointAnnotation()
        Mouton.coordinate = MoutonLocation
        Mouton.title = "Mouton Hall"
        //////////////////////////
        let SaintsLocation = CLLocationCoordinate2DMake(38.646792, -90.501719)
        let Saints = MKPointAnnotation()
        Saints.coordinate = SaintsLocation
        Saints.title = "Saints Hall"
        //////////////////////////
        let GanderLocation = CLLocationCoordinate2DMake(38.646092, -90.503713)
        let Gander = MKPointAnnotation()
        Gander.coordinate = GanderLocation
        Gander.title = "Gander Hall"
        //////////////////////////
        let WalkerLocation = CLLocationCoordinate2DMake(38.645132, -90.503461)
        let Walker = MKPointAnnotation()
        Walker.coordinate = WalkerLocation
        Walker.title = "Walker Hall"
        //////////////////////////
        let PotterLocation = CLLocationCoordinate2DMake(38.642542, -90.506186)
        let Potter = MKPointAnnotation()
        Potter.coordinate = PotterLocation
        Potter.title = "Potter Hall"
        //////////////////////////
        let LibraryLocation = CLLocationCoordinate2DMake(38.644711, -90.506144)
        let Library = MKPointAnnotation()
        Library.coordinate = LibraryLocation
        Library.title = "Maryville University Library"
        //////////////////////////
        let AuditoriumLocation = CLLocationCoordinate2DMake(38.645454, -90.505540)
        let Auditorium = MKPointAnnotation()
        Auditorium.coordinate = AuditoriumLocation
        Auditorium.title = "Auditorium"
        //////////////////////////
        let ChapelLocation = CLLocationCoordinate2DMake(38.644984, -90.504486)
        let Chapel = MKPointAnnotation()
        Chapel.coordinate = ChapelLocation
        Chapel.title = "Charles M. Huttig Memorial Chapel"
        //////////////////////////
        let BuderLocation = CLLocationCoordinate2DMake(38.647123, -90.504975)
        let Buder = MKPointAnnotation()
        Buder.coordinate = BuderLocation
        Buder.title = "Buder Family Student Commons"
        //////////////////////////
        let McNallyLocation = CLLocationCoordinate2DMake(38.646110, -90.507170)
        let McNally = MKPointAnnotation()
        McNally.coordinate = McNallyLocation
        McNally.title = "McNally House"
        //////////////////////////
        let BaseballLocation = CLLocationCoordinate2DMake(38.643366, -90.502683)
        let Baseball = MKPointAnnotation()
        Baseball.coordinate = BaseballLocation
        Baseball.title = "Weber Field"
        Baseball.subtitle = "Baseball"
        //////////////////////////
        let SoccerFieldLocation = CLLocationCoordinate2DMake(38.644674, -90.501975)
        let SoccerField = MKPointAnnotation()
        SoccerField.coordinate = SoccerFieldLocation
        SoccerField.title = "Soccer Field"
        //////////////////////////
        let TennisFieldLocation = CLLocationCoordinate2DMake(38.645616, -90.501959)
        let TennisField = MKPointAnnotation()
        TennisField.coordinate = TennisFieldLocation
        TennisField.title = "Tennis Field"
        //////////////////////////
        let SoccerPracticeFieldLocation = CLLocationCoordinate2DMake(38.648480, -90.500825)
        let SoccerPracticeField = MKPointAnnotation()
        SoccerPracticeField.coordinate = SoccerPracticeFieldLocation
        SoccerPracticeField.title = "Soccer Practice Field"
        //////////////////////////
        let AnheuserBuschHallLocation = CLLocationCoordinate2DMake(38.645790, -90.505074)
        let AnheuserBuschHall = MKPointAnnotation()
        AnheuserBuschHall.coordinate = AnheuserBuschHallLocation
        AnheuserBuschHall.title = "Anheuser-Busch Hall"
        //////////////////////////
        let ReidHallLocation = CLLocationCoordinate2DMake(38.645956, -90.504639)
        let ReidHall = MKPointAnnotation()
        ReidHall.coordinate = ReidHallLocation
        ReidHall.title = "Reid Hall"
        //////////////////////////
        let KernaghanLocation = CLLocationCoordinate2DMake(38.645494, -90.504977)
        let Kernaghan = MKPointAnnotation()
        Kernaghan.coordinate = KernaghanLocation
        Kernaghan.title = "Kernaghan Hall"
        //////////////////////////
        let ArtLocation = CLLocationCoordinate2DMake(38.645115, -90.507059)
        let Art = MKPointAnnotation()
        Art.coordinate = ArtLocation
        Art.title = "Design & Visual Art Building"
        //////////////////////////
        let StudioLocation = CLLocationCoordinate2DMake(38.646815, -90.506973)
        let Studio = MKPointAnnotation()
        Studio.coordinate = StudioLocation
        Studio.title = "Design & Visual Art/3D Studio"
        //////////////////////////
        let AnnexLocation = CLLocationCoordinate2DMake(38.645490, -90.506784)
        let Annex = MKPointAnnotation()
        Annex.coordinate = AnnexLocation
        Annex.title = "Annex"
        //////////////////////////
        let ApartmentsLocation = CLLocationCoordinate2DMake(38.647887, -90.505189)
        let Apartments = MKPointAnnotation()
        Apartments.coordinate = ApartmentsLocation
        Apartments.title = "Apartments"
        Apartments.subtitle = "Cedar, Elm, Maple, Oak, Pine"
        //////////////////////////
        
        Map.addAnnotation(DUC) //1.
        Map.addAnnotation(Simon) //2.
        Map.addAnnotation(Mouton) //3.
        Map.addAnnotation(Saints) //4.
        Map.addAnnotation(Gander) //5.
        Map.addAnnotation(Walker) //6.
        Map.addAnnotation(Potter) //7.
        Map.addAnnotation(Library) //8.
        Map.addAnnotation(Auditorium) //9.
        Map.addAnnotation(Chapel) //10.
        Map.addAnnotation(Buder) //11.
        Map.addAnnotation(McNally) //12.
        Map.addAnnotation(Baseball) //13.
        Map.addAnnotation(SoccerField) //14.
        Map.addAnnotation(TennisField) //15.
        Map.addAnnotation(SoccerPracticeField) //16.
        Map.addAnnotation(AnheuserBuschHall) //17.
        Map.addAnnotation(ReidHall) //18.
        Map.addAnnotation(Kernaghan) //19.
        Map.addAnnotation(Art) //20.
        Map.addAnnotation(Studio) //21.
        Map.addAnnotation(Annex) //22.
        Map.addAnnotation(Apartments) //23.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

