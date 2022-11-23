//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Prasi Aravind on 11/23/22.
//

import Foundation

//extensions used so you don't have to duplicate code

extension String {
    func capitalizedFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
