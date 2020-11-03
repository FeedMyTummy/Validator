//
//  main.swift
//  Validator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

let password = "abcD2#"

let passwordValidator = PasswordValidator()
passwordValidator.validate(password: password) { result in
    switch result {
    case .success:
        print("Valid")
    case .failure(let error):
        print("Error:", error)
    }
}
