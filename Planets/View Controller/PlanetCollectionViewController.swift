//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by Welinkton on 9/13/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewController: UICollectionViewController {

     let planetController = PlanetController()

    // now we have access to the key
    var planets: [Planet] {
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        // this is a ternary operator 
         return shouldShowPluto ? planetController.planetsWithPluto : planetController.planetsWithoutPluto
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView?.reloadData()
    }
    
    
    // MARK: UICollectionViewDataSource

    // make sure you return the correct array
    // using a ternary operator
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as! PlanetCollectionViewCell
        
        let planet = planets[indexPath.item]
        cell.planetImageView.image = planet.image
        cell.textLabel.text = planet.name
    
     
    
        return cell
    }

    
    // MARK: UICollectionViewDelegate

    // lets unwind to planetCollectionViewController
    
    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue){
    }

}
