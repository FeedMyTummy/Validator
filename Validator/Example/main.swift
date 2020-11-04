//
//  main.swift
//  Validator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

validateUser()
validatePassword()

func validateUser() {
    let username = "user$"
    let usernameValidator = UsernameValidator()
    usernameValidator.validate(username: username) { result in
        switch result {
        case .success:
            print("Valid username")
        case .failure(let error):
            print("Username Error:", error)
        }
    }
}

func validatePassword() {
    let password = "asB2#"

    let passwordValidator = PasswordValidator()
    passwordValidator.validate(password: password) { result in
        switch result {
        case .success:
            print("Valid password")
        case .failure(let error):
            print("Password Error:", error)
        }
    }
}


