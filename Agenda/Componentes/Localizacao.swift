//
//  Localizacao.swift
//  Agenda
//
//  Created by Artur Rodrigues Fortunato on 04/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import CoreLocation

class Localizacao: NSObject {

    func converteEnderecoEmCoordenadas(endereco:String, local:@escaping(_ local:CLPlacemark) -> Void){
        let conversor = CLGeocoder()
        conversor.geocodeAddressString(endereco) { (listaDeLocalizacoes, error) in
            if let localizacao = listaDeLocalizacoes?.first{
                local(localizacao)
            }
        }
    }
}
