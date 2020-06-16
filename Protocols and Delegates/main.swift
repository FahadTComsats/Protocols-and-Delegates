//
//  main.swift
//  Protocols and Delegates
//
//  Created by Fahad Tariq on 16/06/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

// I'm here to explain the concept of Protocols and Delegates
//Following is the example of the everyday scenario of hospital

protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHendler {
    
    var delegate: AdvanceLifeSupport?
    
    func assessSituation(){
        print("Yo! What happened")
    }
    func medicalEmergency(){
        delegate?.performCPR()
    }
    
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHendler) {
        handler.delegate = self
    }
    
    func performCPR() {
        
        print("The Paramedic boy saved the life of human being by performing chest compression")
    }
}


class Doctor: AdvanceLifeSupport{
    
    init(hander: EmergencyCallHendler) {
        hander.delegate = self
    }
    
    func performCPR() {
        print("Your daddy is here to save your day baby!")
    }
    func choking(){
        print("Choking the patient")
    }
    
    
    
}

let shaktiman = EmergencyCallHendler()
let superman = Paramedic(handler: shaktiman)

shaktiman.assessSituation()
shaktiman.medicalEmergency()

