//
//  ViewController.swift
//  delphi
//
//  Created by Kavitha Dhanukodi on 8/27/16.
//  Copyright © 2016 delphi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        region(35, date: "2016-08-28 00:00:00");
        // Do any additional setup after loading the view, typically from a nib.
        
//        textField.text=""
    }
    @IBOutlet weak var txtHemisphere: UITextField!
    
    @IBOutlet weak var Region: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var latitude: UITextField!
    
    
    @IBOutlet weak var Date: UITextField!
    
    func region(lat: Int, date: String) -> String
    {
        var hemisphere:String!;
        var season:String!;
        var reg:String!;
        var m:String!;
        var monthValue: Int!
        
        var arr = date.componentsSeparatedByString("-");
        m = arr[1];
        //var month = m.componentsSeparatedByString("");
        //print(month)
        monthValue = Int(m);
        
        
        
        if (lat >= 0) //Northern Hemisphere
        {
            hemisphere = "N";
            
            if((monthValue >= 3) && (monthValue <= 5)){
                season = "S";}
            
            else if ((monthValue >= 6) && (monthValue >= 8)){
                season = "U";}
            
            else if ((monthValue >= 9) && (monthValue <= 11)){
                season = "A";}
            
            else{
                season = "W";}
            
        }
        else {
                hemisphere = "S";
                
            if((monthValue >= 3) && (monthValue <= 5)){
                season = "A";}
                
            else if ((monthValue >= 6) && (monthValue >= 8)){
                season = "W";}
                
            else if ((monthValue >= 9) && (monthValue <= 11)){
                season = "S";}
                
            else{
                season = "U";}
                
            }
            
        reg = hemisphere + season;
        txtHemisphere.text = reg;
        
        return reg;
    }


}


